# This Python file uses the following encoding: utf-8
import os
import sys
from typing import List

from .models import Production, App

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Property, Signal


class Bridge(QObject):
    def __init__(self, productions: List[Production], parent=None):
        super().__init__(parent)
        self._productions = productions
    retrieved_productions: Signal = Signal('QVariant')

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


def main():
    jaime_prod: Production = Production("Jaime")

    blender = App("Blender", "2.1.1", ["python", "PySide2"])

    jaime_prod.add_app(blender)

    bridge: Bridge = Bridge([jaime_prod])

    app: QGuiApplication = QGuiApplication(sys.argv)
    engine: QQmlApplicationEngine = QQmlApplicationEngine()

    context = engine.rootContext()
    context.setContextProperty("data_bridge", bridge)

    current_dir: str = os.path.dirname(__file__)
    qml_dir: str = os.path.join(current_dir, "gui", "qml")
    main_qml_path: str = os.path.join(qml_dir, "main.qml")

    engine.load(main_qml_path)
    if not engine.rootObjects():
        sys.exit(-1)
    app.aboutToQuit.connect(engine.deleteLater)
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
