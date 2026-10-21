from pathlib import Path
import numpy as np
import pandas as pd

# Define file paths using pathlib
nodes_path = Path('nodes_hexagonal_space_frame.csv')
conn_path = Path('connectivity_hexagonal_space_frame.csv')
output_path = Path('hexagonal_space_structure_add.dat')

# 1. Load the data
nodes_df = pd.read_csv(nodes_path, sep=';')
conn_df = pd.read_csv(conn_path, sep=';')

# Clean column names (removing potential whitespace/quotes)
nodes_df.columns = nodes_df.columns.str.strip().str.replace('"', '', regex=False)
conn_df.columns = conn_df.columns.str.strip().str.replace('"', '', regex=False)

# 2. Vectorized coordinate mapping for high performance
nodes_indexed = nodes_df.set_index('Label')[['x', 'y', 'z']]
start_coords = nodes_indexed.loc[conn_df['N1']].to_numpy(dtype=float)
end_coords = nodes_indexed.loc[conn_df['N2']].to_numpy(dtype=float)

# Calculate direction vectors in bulk
vectors = end_coords - start_coords
direction_vectors = start_coords + vectors


def get_perpendicular_vectors(v_batch: np.ndarray) -> np.ndarray:
  """Calculates unit perpendicular vectors for a batch of 3D vectors."""
  least_busy_axis = np.argmin(np.abs(v_batch), axis=1)

  helpers = np.zeros_like(v_batch)
  row_indices = np.arange(v_batch.shape[0])
  helpers[row_indices, least_busy_axis] = 1.0

  n = np.cross(v_batch, helpers)

  norms = np.linalg.norm(n, axis=1, keepdims=True)
  norms[norms == 0.0] = 1.0  # Prevent division by zero
  return n / norms


# Calculate orthogonal vectors vectorially
orthogonal_vectors = start_coords + get_perpendicular_vectors(vectors)

# 3. Execution & Results Summary
num_beams = len(start_coords)
print(f'Calculated {num_beams} direction vectors.')
print('First 5 vectors:')
print('Start vectors:\n', start_coords[:5])
print('Direction vectors:\n', direction_vectors[:5])
print('Orthogonal vectors:\n', orthogonal_vectors[:5])

# 4. Export results to PERMAS format with clean, aligned column formatting
with open(output_path, 'w', encoding='utf-8') as ofile:
  ofile.write('$RSYS CART FORM = ZX\n')
  for i in range(num_beams):
    s = start_coords[i]
    d = direction_vectors[i]
    o = orthogonal_vectors[i]
    # Using fixed-width formatting to align columns cleanly
    ofile.write(
        f'{i + 1:6d}  '
        f'{s[0]:13.5e} {s[1]:13.5e} {s[2]:13.5e} :  '
        f'{d[0]:13.5e} {d[1]:13.5e} {d[2]:13.5e} :  '
        f'{o[0]:13.5e} {o[1]:13.5e} {o[2]:13.5e}\n'
    )
  ofile.write('$ELSYS RSYS\n')
  for i in range(num_beams):
    ofile.write(f'{i + 1:8d} RSYS = {i + 1:8d}\n')

print(f'Successfully exported formatted data to {output_path}')