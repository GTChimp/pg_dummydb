ALTER TABLE main.log_ci_results
    ADD IF NOT EXISTS deploy_type  TEXT;

ALTER TABLE main.test_table1
    ADD IF NOT EXISTS new_field TEXT;