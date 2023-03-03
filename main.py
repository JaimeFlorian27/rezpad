# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    
    current_dir = os.path.dirname(__file__)
    qml_dir = os.path.join(current_dir, "gui", "qml")
    main_qml_path = os.path.join(qml_dir, "main.qml")
    
    engine.load(main_qml_path)
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
    
    
