CREATE TABLE IF NOT EXISTS main.test_table1 (
    id        SERIAL NOT NULL,
    some_text TEXT   NOT NULL
);

COMMENT ON TABLE main.test_table1 IS 'Dummy table for testing';