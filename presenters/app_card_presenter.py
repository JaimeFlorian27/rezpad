from ..models import App


class AppCardPresenter:
    def __init__(self, app: App) -> None:
        self.app: App = app

    def _query_logo_path(self) -> str:
        ...

    def _calculate_gradient_color(self):
        ...
