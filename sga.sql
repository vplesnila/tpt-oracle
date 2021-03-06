-- Copyright 2018 Tanel Poder. All rights reserved. More info at http://tanelpoder.com
-- Licensed under the Apache License, Version 2.0. See LICENSE.txt for terms & conditions.

prompt Show instance memory usage breakdown from v$memory_dynamic_components
COL mem_component HEAD COMPONENT FOR A35

SELECT
  inst_id
  , component mem_component
  , ROUND(current_size/1048576) cur_mb
  , ROUND(min_size/1048576)     min_mb
  , ROUND(max_size/1048576)     max_mb
  , ROUND(user_specified_size/1048576)    spec_mb
  , oper_count
  , last_oper_type last_optype
  , last_oper_mode last_opmode
  , last_oper_time last_optime
  , granule_size/1048576        gran_mb
FROM
    gv$sga_dynamic_components
ORDER BY
    inst_id,
    component
/

  
