DROP FUNCTION IF EXISTS main.fn_get_ci_results;

CREATE FUNCTION main.fn_get_ci_results(
)
    RETURNS TABLE
    (
        branch        main.log_ci_results.branch%TYPE,
        deploy_mode   main.log_ci_results.deploy_mode%TYPE,
        is_successful main.log_ci_results.is_successful%TYPE,
        created       main.log_ci_results.created%TYPE
    )
AS
$$
BEGIN
    RETURN QUERY SELECT
                     lc.branch
                     , lc.deploy_mode
                     , lc.is_successful
                     , lc.created
                 FROM
                     main.log_ci_results lc;
END;
$$
    LANGUAGE plpgsql;