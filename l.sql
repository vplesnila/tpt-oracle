-- Copyright 2018 Tanel Poder. All rights reserved. More info at http://tanelpoder.com
-- Licensed under the Apache License, Version 2.0. See LICENSE.txt for terms & conditions.

prompt Display Latch stats from V$LATCH for latches matching %&1%

select inst_id,addr, level#, name, gets, misses, immediate_gets ig, immediate_misses im, spin_gets spingets, wait_time
from gv$latch
where lower(name) like lower('%&1%');
