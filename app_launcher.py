from .models import App, Production


jaime_prod = Production("Jaime")

blender = App("Blender", "2.1.1", ["python", "PySide2"])

jaime_prod.add_app(blender)

blender.execute()
