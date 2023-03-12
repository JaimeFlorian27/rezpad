import mock
import pytest
from mdkAppLauncher.utils import rez_utils

@mock.patch('rez_utils.rez', autospec=True)
def test_check_for_rez_installed(mock_rez):
    assert rez_utils.check_for_rez() == True

@mock.patch('rez_utils.rez', side_effect=ImportError)
def test_check_for_rez_not_installed(mock_rez):
    assert rez_utils.check_for_rez() == False