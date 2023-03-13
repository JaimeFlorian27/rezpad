from ..models import App

class Production:
    
    def __init__(self, name: str):
      self.name = name
      self._suite_path : str
      self.apps : list[App]
      