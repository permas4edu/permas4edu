import sys

try:
    from OpenGL.GL import *
    from OpenGL.GLUT import *
    from OpenGL.GLU import *
except ImportError:
    print(
        "PyOpenGL not installed. Please install with 'pip install PyOpenGL PyOpenGL_accelerate'"
    )
    sys.exit()


def get_gl_info():
    # Initialize GLUT
    glutInit(sys.argv)

    # Create an invisible window since an OpenGL context requires a window
    glutCreateWindow("Dummy")

    # Get the OpenGL information strings
    vendor = glGetString(GL_VENDOR).decode("utf-8")
    renderer = glGetString(GL_RENDERER).decode("utf-8")
    version = glGetString(GL_VERSION).decode("utf-8")
    # Optional: Clean up (close the window)
    glutDestroyWindow(glutGetWindow())
    return {"Vendor": vendor, "Renderer": renderer, "Version": version}


if __name__ == "__main__":
    gl_info = get_gl_info()
    print("OpenGL Information:")
    print(f"  Vendor: {gl_info['Vendor']}")
    print(f"  Renderer: {gl_info['Renderer']}")
    print(f"  Version: {gl_info['Version']}")
