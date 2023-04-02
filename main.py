# This Python file uses the following encoding: utf-8
import os
import sys
from typing import List

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Property


class Bridge(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)
        self._fruits: List[str] = [
            "Maya",
            "Blender",
            "Houdini",
            "3ds Max",
            "Cinema 4D",
            "Modo",
            "ZBrush",
            "Substance Painter",
            "Substance Designer",
            "Mari",
            "Nuke",
            "Katana",
            "Clarisse",
            "Mudbox",
            "Photoshop",
            "Illustrator",
            "After Effects",
            "Premiere Pro",
            "Final Cut Pro",
            "DaVinci Resolve",
            "Motion",
            "Fusion",
            "Shotgun",
            "Deadline",
            "Arnold",
            "RenderMan",
            "V-Ray",
            "Redshift",
            "Octane Render",
            "KeyShot",
            "Unity",
            "Unreal Engine",
            "CryEngine",
            "Lumberyard",
            "GameMaker Studio",
            "Construct",
            "Godot",
            "OpenFrameworks",
        ]

    @Slot(result=int)  # type: ignore
    def get_test_scale(self):
        return 4

    @Property(list)  # type: ignore
    def fruits(self):
        return self._fruits


if __name__ == "__main__":
    bridge: Bridge = Bridge()
    
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
