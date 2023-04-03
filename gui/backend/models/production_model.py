from typing import Dict
from .. import Production

from PySide2.QtCore import QObject, Slot

class ProductionModel(QObject):

    def __init__(self, production: Production) -> None:
        super().__init__()
        self._production = production

    @Slot(result=bool)
    def add_app(self, app):
        return self._production.add_app(app)