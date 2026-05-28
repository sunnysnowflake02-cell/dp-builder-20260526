-- logical_table: exercise_schedule_data
-- physical_fqn: icebase.us_nrc_data.exercise_schedule_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  CAST("exercise_start_date" AS TIMESTAMP(6)) AS exercise_start_date,
  "region" AS region,
  "facility" AS facility,
  "exercise_type" AS exercise_type,
  "states_list" AS states_list,
  "participants_list" AS participants_list,
  TRY_CAST(TRIM("exercise_date_2") AS TIMESTAMP(6)) AS exercise_date_2,
  CAST("participant_count" AS DOUBLE) AS participant_count,
  "home_state" AS home_state,
  CAST("co_hosting_state" AS VARCHAR) AS co_hosting_state,
  CAST("co_hosting_state_2" AS VARCHAR) AS co_hosting_state_2,
  "participant_1" AS participant_1,
  "participant_2" AS participant_2,
  "participant_3" AS participant_3,
  "participant_4" AS participant_4,
  "participant_5" AS participant_5,
  "participant_6" AS participant_6
FROM icebase.us_nrc_data.exercise_schedule_data
