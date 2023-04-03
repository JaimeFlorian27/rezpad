from typing import List

from ...core import Production

from PySide2.QtCore import QObject, Slot, Property, Signal


class Bridge(QObject):
    def __init__(self, productions: List[Production], parent=None):
        super().__init__(parent)
        self._productions = productions

    retrieved_productions: Signal = Signal("QVariant")  # type: ignore

    @Slot(result=int)  # type: ignore
    def get_test_scale(self):
        return 4

    @Property(list)  # type: ignore
    def fruits(self):
        return self._fruits

    @Property(list)
    def productions(self):
        return self._productions

    @Slot()
    def default_production(self):
        self.retrieved_productions.emit(vars(self._productions[0]))
