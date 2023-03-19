import sys
import os


def check_for_rez() -> bool:
    """
    Check if the Rez Python package is installed.

    Returns:
        bool: True if the Rez package is installed, False otherwise.
    """
    try:
        import rez
        return True
    except ImportError:
        return False


def register_rez(path_to_rez: str) -> bool:
    # Add the path to the installed package
    if os.path.exists(path_to_rez):
        try:
            sys.path.append(path_to_rez)
            return True
        except ValueError:
            pass
    return False
