CREATE TABLE IF NOT EXISTS main.log_ci_results (
    branch          TEXT                             NOT NULL,
    deploy_mode     TEXT                             NOT NULL,
    deploy_type     TEXT                             NOT NULL,
    requests_folder TEXT                             NOT NULL,
    is_successful   BOOLEAN                          NOT NULL,
    created         TIMESTAMP DEFAULT localtimestamp NOT NULL
);

COMMENT ON COLUMN main.log_ci_results.branch IS 'Branch/SHA-1';

COMMENT ON COLUMN main.log_ci_results.deploy_mode IS 'Used deploy mode';

COMMENT ON COLUMN main.log_ci_results.deploy_type IS 'Used deploy type';

COMMENT ON COLUMN main.log_ci_results.requests_folder IS 'Release branch requests folder';

COMMENT ON COLUMN main.log_ci_results.is_successful IS 'Success flag';

COMMENT ON COLUMN main.log_ci_results.created IS 'Deployment timestamp';

COMMENT ON TABLE main.log_ci_results IS 'Deployment logging';