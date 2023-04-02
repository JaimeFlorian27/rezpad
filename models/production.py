from typing import Dict
from ..models import App


class Production:

    def __init__(self, name: str):
        self.name = name
        self._suite_path: str
        self._context_path: str
        self.apps: Dict[str, App]

    def add_app(self, app: App):

        if not self.apps.get(app.name):
            return False
        self.apps[app.name] = app
        return True
