DROP VIEW IF EXISTS main.v_log_ci_results;

CREATE VIEW main.v_log_ci_results AS
SELECT
    *
FROM main.log_ci_results;