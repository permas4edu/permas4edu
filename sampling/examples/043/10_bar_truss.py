import numpy as np

# Define the lower and upper bounds of the uniform distribution
low_bound = 64.516
high_bound = 22580.6

# Define the dimensions: 10 variables, each with 10 independent realizations
num_variables = 10
realizations_per_variable = 100

# Initialize NumPy's default random number generator
rng = np.random.default_rng()

# Generate the 10x10 matrix of uniformly distributed random numbers
# Each column represents one independent random variable
data_matrix = rng.uniform(
    low=low_bound, high=high_bound, size=(realizations_per_variable, num_variables)
)

print("--- Complete 10x10 Random Data Matrix ---")
print(
    f"Rows represent realizations (1-10), Columns represent variables (1-10):\n"
)
print(data_matrix)
print("\n" + "=" * 50 + "\n")

# Demonstrate how to access individual variables (columns) from the matrix
print("--- Accessing Individual Variables (Columns) ---")
filename = 'uniform.dat'
# Open the file once. 'w' clears the file first so old data is deleted.
with open(filename, "w") as f:
    pass 

print("--- Exporting all variables into ONE file using append ---")

# Now open the file in append mode ('a') to add data step by step
with open(filename, "a") as f:
    for i in range(num_variables):
        # Slice the i-th column to get all 10 realizations for variable i+1
        variable_data = data_matrix[:, i]
        print(f"Variable X_{i+1}:")
        print(variable_data)
        print("-" * 30)
        np.savetxt(f,
                   np.c_[np.arange(realizations_per_variable),np.sort(variable_data)],
                   fmt='%.8f : %.8f',
                   header=f"$FUNCTION TABLE LABEL = 'LINE%i'"%(i+1),
                   comments="")
