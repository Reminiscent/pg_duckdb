SET duckdb.max_threads_per_postgres_scan to 4;
SET duckdb.force_execution = true;
CREATE TABLE t(a INT, b VARCHAR);
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
INSERT INTO t SELECT g % 100, MD5(g::VARCHAR) FROM generate_series(1,1000) g;
SELECT COUNT(*) FROM t WHERE a % 10 = 0;
DROP TABLE t;