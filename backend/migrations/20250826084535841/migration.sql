BEGIN;


--
-- MIGRATION VERSION FOR helawork
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('helawork', '20250826084535841', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250826084535841', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
