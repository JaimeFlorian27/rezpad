from rez.resolved_context import ResolvedContext
from pprint import pprint as pp

a: ResolvedContext = ResolvedContext(package_requests=['python'])

a.execute_shell(detached=True, command='python')
pp(a.get_tools())