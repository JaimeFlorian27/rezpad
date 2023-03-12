import sys


def check_for_rez() -> bool:
    """
    Check if the Rez Python package is installed.
    
    Returns:
        bool: True if the Rez package is installed, False otherwise.
    """
    try:
        import rez
        return True
    except ImportError as error:
        return False
        

def register_rez(path_to_rez : str):
    # Add the path to the installed package
    sys.path.append('/path/to/installed/package')