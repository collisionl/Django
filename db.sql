PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2017-09-19 11:10:45.977210');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2017-09-19 11:10:46.011962');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2017-09-19 11:10:46.044131');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2017-09-19 11:10:46.082199');
INSERT INTO django_migrations VALUES(5,'contenttypes','0002_remove_content_type_name','2017-09-19 11:10:46.129087');
INSERT INTO django_migrations VALUES(6,'auth','0002_alter_permission_name_max_length','2017-09-19 11:10:46.145422');
INSERT INTO django_migrations VALUES(7,'auth','0003_alter_user_email_max_length','2017-09-19 11:10:46.164412');
INSERT INTO django_migrations VALUES(8,'auth','0004_alter_user_username_opts','2017-09-19 11:10:46.186066');
INSERT INTO django_migrations VALUES(9,'auth','0005_alter_user_last_login_null','2017-09-19 11:10:46.209251');
INSERT INTO django_migrations VALUES(10,'auth','0006_require_contenttypes_0002','2017-09-19 11:10:46.214252');
INSERT INTO django_migrations VALUES(11,'auth','0007_alter_validators_add_error_messages','2017-09-19 11:10:46.237953');
INSERT INTO django_migrations VALUES(12,'auth','0008_alter_user_username_max_length','2017-09-19 11:10:46.259417');
INSERT INTO django_migrations VALUES(13,'sessions','0001_initial','2017-09-19 11:10:46.270689');
INSERT INTO django_migrations VALUES(14,'polls','0001_initial','2017-09-21 13:50:20.799518');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,'1','What''s tf?',2,'[{"changed": {"fields": ["question_text"]}}]',8,1,'2017-09-21 14:24:00.077660');
INSERT INTO django_admin_log VALUES(2,'1','What TF?',2,'[{"changed": {"fields": ["question_text"]}}]',8,1,'2017-09-21 14:24:11.205802');
INSERT INTO django_admin_log VALUES(3,'1','What TF?',2,'[{"changed": {"fields": ["pub_date"]}}]',8,1,'2017-09-21 14:24:56.694033');
INSERT INTO django_admin_log VALUES(4,'1','What TF?',2,'[{"changed": {"fields": ["pub_date"]}}]',8,1,'2017-09-21 14:26:09.010590');
INSERT INTO django_admin_log VALUES(5,'1','What''s up?',2,'[{"changed": {"fields": ["question_text", "pub_date"]}}]',8,1,'2017-10-13 14:27:16.151921');
INSERT INTO django_admin_log VALUES(6,'1','What''s up?',2,'[]',8,1,'2017-10-15 14:10:45.842502');
INSERT INTO django_admin_log VALUES(7,'1','What''s up?',2,'[]',8,1,'2017-10-15 14:10:49.061232');
INSERT INTO django_admin_log VALUES(8,'1','What''s up?',2,'[]',8,1,'2017-10-15 14:10:50.812851');
INSERT INTO django_admin_log VALUES(9,'1','What''s up?',2,'[]',8,1,'2017-10-15 14:10:56.145986');
INSERT INTO django_admin_log VALUES(10,'2','what',1,'[{"added": {}}]',8,1,'2017-10-15 14:11:04.581444');
INSERT INTO django_admin_log VALUES(11,'2','what',2,'[]',8,1,'2017-10-15 14:11:14.427549');
INSERT INTO django_admin_log VALUES(12,'2','what',3,'',8,1,'2017-10-15 14:11:23.197308');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','group');
INSERT INTO django_content_type VALUES(3,'auth','permission');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'polls','choice');
INSERT INTO django_content_type VALUES(8,'polls','question');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,2,'add_group','Can add group');
INSERT INTO auth_permission VALUES(5,2,'change_group','Can change group');
INSERT INTO auth_permission VALUES(6,2,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(7,3,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(8,3,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(9,3,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(10,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(11,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(12,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(16,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(17,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(18,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(19,7,'add_choice','Can add choice');
INSERT INTO auth_permission VALUES(20,7,'change_choice','Can change choice');
INSERT INTO auth_permission VALUES(21,7,'delete_choice','Can delete choice');
INSERT INTO auth_permission VALUES(22,8,'add_question','Can add question');
INSERT INTO auth_permission VALUES(23,8,'change_question','Can change question');
INSERT INTO auth_permission VALUES(24,8,'delete_question','Can delete question');
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$36000$SVy4yc0MXQvA$ftUjMRJJ9aD5nI69hlEFZLe+vXThh3vLQ+fh8t8pPpc=','2017-10-13 14:26:55.404793',1,'','','admin@example.com',1,1,'2017-09-21 14:20:29.468466','admin');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('ub33w4wpzz7u4d8rujxkhwf2uii3177z','NWEwMmNjNjgwZWYwZTgyMmU5YzUzYzEyNzQwMWJkMjYxODkyMzA5MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImViNzJiZDhiZjc2ODk5Mjk0MDc1NzY3MTNlZTc3MTgxNDY2ZDU3MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-10-05 14:23:33.117264');
INSERT INTO django_session VALUES('5zpnhzlqdazv96n2qs2qufiuj46u4xww','NWEwMmNjNjgwZWYwZTgyMmU5YzUzYzEyNzQwMWJkMjYxODkyMzA5MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImViNzJiZDhiZjc2ODk5Mjk0MDc1NzY3MTNlZTc3MTgxNDY2ZDU3MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-10-27 14:26:55.418501');
CREATE TABLE IF NOT EXISTS "polls_question" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question_text" varchar(200) NOT NULL, "pub_date" datetime NOT NULL);
INSERT INTO polls_question VALUES(1,'What''s up?','2017-09-21 14:27:14');
CREATE TABLE IF NOT EXISTS "polls_choice" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "choice_text" varchar(200) NOT NULL, "votes" integer NOT NULL, "question_id" integer NOT NULL REFERENCES "polls_question" ("id"));
INSERT INTO polls_choice VALUES(1,'Not much',3,1);
INSERT INTO polls_choice VALUES(2,'The sky',6,1);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',14);
INSERT INTO sqlite_sequence VALUES('django_admin_log',12);
INSERT INTO sqlite_sequence VALUES('django_content_type',8);
INSERT INTO sqlite_sequence VALUES('auth_permission',24);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('polls_choice',3);
INSERT INTO sqlite_sequence VALUES('polls_question',2);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "polls_choice_question_id_c5b4b260" ON "polls_choice" ("question_id");
COMMIT;
