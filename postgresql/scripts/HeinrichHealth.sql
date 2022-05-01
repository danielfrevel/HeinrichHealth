CREATE TABLE "Login"(
	"Id" serial PRIMARY KEY,
	"Email" VARCHAR (255) UNIQUE NOT NULL,
	"Password" varchar (50) NOT NULL
);
CREATE TABLE "HHUser"(
	"Id" serial PRIMARY KEY,
	"Username" varchar (50) UNIQUE NOT NULL,
	"Lastname" varchar (100),
	"Firstname" varchar (100),
	"Bodyweight" DOUBLE PRECISION NOT NULL,
	"Height" DOUBLE PRECISION NOT NULL,
	"BMI" DOUBLE PRECISION,
	"Bodyfat_pct" DOUBLE PRECISION,
	"Login" serial NOT NULL,
	FOREIGN KEY ("Login")
		REFERENCES "Login" ("Id")
);
CREATE TABLE "Trainingssession"(
	"Id" serial PRIMARY KEY,
	"Duration_minutes" INT,
	"Session_date" DATE,
	"UserID" serial NOT NULL,
	FOREIGN KEY ("UserID")
		REFERENCES "HHUser" ("Id")
);
CREATE TABLE "WeightliftingSession"(
	"Id" serial PRIMARY KEY,
	"Name" VARCHAR (50),
	"SessionID" serial NOT NULL,
	FOREIGN KEY ("SessionID")
		REFERENCES "Trainingssession" ("Id")
);
CREATE TABLE "WeightliftingExercise"(
	"Id" serial PRIMARY KEY,
	"ExerciseName" VARCHAR(50),
	"NumberOfSets" INT,
	"WLSessionID" serial NOT NULL,
	FOREIGN KEY ("WLSessionID")
		REFERENCES "WeightliftingSession" ("Id")
);
CREATE TABLE "WeightliftingSet"(
	"Id" serial PRIMARY KEY,
	"SetNumber" INT,
	"Repetitions" INT,
	"Weight" DOUBLE PRECISION,
	"ExerciseID" serial NOT NULL,
	FOREIGN KEY ("ExerciseID")
		REFERENCES "WeightliftingExercise" ("Id")
);
