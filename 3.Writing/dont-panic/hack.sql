-- Update admin password in the user table to opps!
-- MD5('oops!') = '982c0381c279d139fd221fce974916e7';
UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = "admin";

-- Delete log file where admin pasword changed to opps!
DELETE from "user_logs"
WHERE "type" = 'update' AND "old_username" = 'admin' AND "new_password"='982c0381c279d139fd221fce974916e7';

-- add admin new password to user_logs table,which will be same as emily33 password
-- Find emily33 password
-- add a row to user_log where seems admin password change to emily33 passwordS
INSERT INTO "user_logs"("type","old_username","new_username","old_password","new_password")
SELECT 'update','admin','admin','e10adc3949ba59abbe56e057f20f883e',(SELECT "password" FROM "users" WHERE "username" = 'emily33');
