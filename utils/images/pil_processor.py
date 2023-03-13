import logging
from typing import List

from PIL import Image as img
from PIL import ImageStat
from PIL.Image import Image


log = logging.getLogger(__name__)

class PILProcessor:
    
    @staticmethod
    def get_average_color(image_path: str) -> str:
        """
        Returns the average color of the image in hexadecimal format.

        Args:
            image_path (str): The path of the image file.

        Returns:
            str: The average color of the image in hexadecimal format.

        Raises:
            ValueError: If the image file is not found or cannot be opened.
        """
        try:
            log.debug(f"Opening image file {image_path}")
            image : Image = img.open(image_path)
            image = image.convert("RGB")
            
            color : List[float]  = ImageStat.Stat(image).mean
            color = [int(channel) for channel in color]
            
            hex_color = f"#{color[0]:02x}{color[1]:02x}{color[2]:02x}"
            log.debug(f"average color = {hex_color}")
            
            return hex_color
        except FileNotFoundError as e:
            msg = f"Failed to get average color of image {image_path}: {e}"
            log.error(msg)
            raise FileNotFoundError(msg)
        except Exception as e:
            msg = f"Error processing image file: {image_path}. {e}"
            log.error(msg)
            raise Exception(msg)