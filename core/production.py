from typing import Dict
from . import App

from PySide2.QtCore import QObject

class Production:

    def __init__(self, name: str) -> None:
        self.name = name
        self._suite_path: str
        self._context_path: str
        self.apps: Dict[str, App] = {}

    def add_app(self, app: App):
        if not self.apps.get(app.name):
            return False
        self.apps[app.name] = app
        return True


class ProductionModel(QObject):

    def __init__(self, production: Production) -> None:
        super().__init__()
        self._production = production
