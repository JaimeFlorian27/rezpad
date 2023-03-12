from typing import Protocol

class ImageProcessor(Protocol):
    @classmethod
    def get_average_color(cls,image_path: str) -> str:
        """
        Returns the average color of the image in hexadecimal format.

        Args:
            image_path (str): The path of the image file.

        Returns:
            str: The average color of the image in hexadecimal format.

        Raises:
            ValueError: If the image file is not found or cannot be opened.
        """
        ...
    