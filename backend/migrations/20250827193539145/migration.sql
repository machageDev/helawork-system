BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "time_log" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "timelog" (
    "id" bigserial PRIMARY KEY,
    "workerId" bigint NOT NULL,
    "taskId" bigint NOT NULL,
    "hoursWorked" double precision NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "isApproved" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR helawork
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('helawork', '20250827193539145', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250827193539145', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
