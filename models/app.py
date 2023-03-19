from rez.resolved_context import ResolvedContext


class App:

    def __init__(self, name: str, version: str, executable_path: str):
        """
        NOTE: Should App need to have the executable path? if we are going
        """
        self.name: str = name
        self.version: str = version
        self._tool_name: str  # name of the binary that executes the app
        self._resolved_context: ResolvedContext

    def execute(self):
        pass
