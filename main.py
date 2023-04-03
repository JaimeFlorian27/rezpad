# This Python file uses the following encoding: utf-8
import os
import sys

from .core import Production, App
from .gui.backend import Bridge

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


def main() -> None:
    jaime_prod: Production = Production("Jaime")

    blender = App("Blender", "2.1.1", ["python", "PySide2"])

    jaime_prod.add_app(blender)

    bridge: Bridge = Bridge([jaime_prod])

    app: QGuiApplication = QGuiApplication(sys.argv)
    engine: QQmlApplicationEngine = QQmlApplicationEngine()

    context = engine.rootContext()
    context.setContextProperty("data_bridge", bridge)

    current_dir: str = os.path.dirname(__file__)
    qml_dir: str = os.path.join(current_dir, "gui", "frontend", "qml")
    main_qml_path: str = os.path.join(qml_dir, "main.qml")

    engine.load(main_qml_path)
    if not engine.rootObjects():
        sys.exit(-1)
    app.aboutToQuit.connect(engine.deleteLater)
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
