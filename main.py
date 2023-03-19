# This Python file uses the following encoding: utf-8
import os
import sys

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    app: QGuiApplication = QGuiApplication(sys.argv)
    engine: QQmlApplicationEngine = QQmlApplicationEngine()

    current_dir: str = os.path.dirname(__file__)
    qml_dir: str = os.path.join(current_dir, "gui", "qml")
    main_qml_path: str = os.path.join(qml_dir, "main.qml")

    engine.load(main_qml_path)
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
