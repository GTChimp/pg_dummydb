CREATE TABLE IF NOT EXISTS main.log_ci_results (
    branch        TEXT                             NOT NULL,
    deploy_mode   TEXT                             NOT NULL,
    is_successful BOOLEAN                          NOT NULL,
    created       TIMESTAMP DEFAULT localtimestamp NOT NULL
);

COMMENT ON COLUMN main.log_ci_result.branch IS 'Branch/SHA-1';

COMMENT ON COLUMN main.log_ci_result.deploy_mode IS 'Used deploy mode';

COMMENT ON COLUMN main.log_ci_result.is_successful IS 'Success flag';

COMMENT ON COLUMN main.log_ci_result.created IS 'Deployment timestamp';

COMMENT ON TABLE main.log_ci_result IS 'Deployment logging';