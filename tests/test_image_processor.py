import pytest
import os
from mdkAppLauncher.utils.images.pil_processor import PILProcessor


# def test_resolve_processor():
#     #ImageProcessor.resolve_processor()
#     pass

# TODO: get the unit test to resolve the ImageProcessor depending on the module
# that is installed

def test_get_average_color():
    file=os.path.join(os.path.dirname(__file__), "resources", "test_image.png")
    hex_color = PILProcessor.get_average_color(file)
    assert hex_color == "#4cb5a3"


def test_get_average_color_no_file():
    with pytest.raises(FileNotFoundError):
        PILProcessor.get_average_color("non_existant_image.png")