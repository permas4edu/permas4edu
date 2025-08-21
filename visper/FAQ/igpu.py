import sys

try:
    from OpenGL.GL import *
    from OpenGL.GLUT import *
    from OpenGL.GLU import *
except ImportError:
    print(
        "PyOpenGL is not installed. Please install with 'pip install PyOpenGL PyOpenGL_accelerate'"
    )
    sys.exit()


def get_gl_info():
    """Initialises an OpenGL context and returns the renderer information."""
    try:
        glutInit(sys.argv)
        glutCreateWindow("Dummy")
        renderer = glGetString(GL_RENDERER).decode("utf-8").upper()
        glutDestroyWindow(glutGetWindow())
        return renderer
    except Exception as e:
        return f"Error: {e}"


def is_igpu(renderer_string):
    """Checks whether the renderer string indicates an integrated GPU."""
    igpu_keywords = ["INTEL", "HD GRAPHICS", "UHD GRAPHICS", "RADEON GRAPHICS"]
    for keyword in igpu_keywords:
        if keyword in renderer_string:
            return True
    return False


if __name__ == "__main__":
    renderer_info = get_gl_info()
    if "Error" in renderer_info:
        print(renderer_info)
    else:
        print(f"OpenGL Renderer: {renderer_info}")
        if is_igpu(renderer_info):
            print("This system appears to have an integrated GPU (iGPU).")
            print("It is likely using the CPU's built-in graphics.")
        else:
            print("This system appears to have a dedicated GPU (dGPU).")
