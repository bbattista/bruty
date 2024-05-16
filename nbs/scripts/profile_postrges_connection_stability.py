import time

from nbs.bruty.nbs_locks import LockNotAcquired, AreaLock, FileLock, BaseLockException, EXCLUSIVE, SHARED, NON_BLOCKING, SqlLock, NameLock, Lock, AdvisoryLock
from nbs.configs import iter_configs
from nbs.bruty.nbs_postgres import REVIEWED, PREREVIEW, SENSITIVE, ENC, GMRT, NOT_NAV, INTERNAL, NAVIGATION, PUBLIC, connect_params_from_config, connection_with_retries

config_filename, config_file = [x for x in iter_configs([r"D:\git_repos\bruty_dev_debugging\nbs\scripts\Barry.Gallagher.LA\bg_dbg.config"])][0]
config = config_file['EXPORT']
conn_info = connect_params_from_config(config)

lck = AdvisoryLock(time.time_ns(), conn_info, flags=SHARED|NON_BLOCKING )
lck.acquire()
for h in range(48):
    print(h, end="")
    for m in range(60):
        print(".", end="")
        for sec in range(0, 60, 2):
            lck.acquire()
            lck.release()
            time.sleep(2)

