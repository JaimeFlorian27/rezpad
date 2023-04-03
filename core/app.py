from rez.resolved_context import ResolvedContext
from typing import List


class App:

    def __init__(self, tool: str, version: str, packages: List[str]):
        self.name: str = tool.capitalize()
        self._tool: str = tool  # name of the binary that executes the app
        self.version: str = version
        self._tool_name: str
        self._resolved_context: ResolvedContext

    def execute(self):
        pass

    def set_display_name(self):
        ...

    def add_package(self):
        ...

    def remove_package(self):
        ...

    def resolve_context(self):
        ...
