
CREATE DATABASE HeinrichHealth;


create table Login (
    LoginID bigint not null AUTO_INCREMENT Primary key,
    Email varchar(75),
    Password varchar(255)
    );


create table User (
    UserID bigint not null AUTO_INCREMENT Primary key,
    Username varchar(50) not null,
    Lastname varchar(50),
    Firstname varchar(50),
    Bodyweight double not null,
    Height double not null,
    BMI double,
    Bodyfat_pct double,
    Login bigint not null,
    foreign key (Login) references Login(LoginID)
    );


create table Trainingssession (
    SessionID bigint not null primary key auto_increment,
    Duration_minutes int,
    Date date,
    UserID bigint not null,
    Foreign key (UserID) references user(UserID)
    );


create table Weightliftingsession (
    WLSessionID bigint not null primary key auto_increment,
    name varchar(50) not null,
    SessionID bigint not null,
    foreign key (SessionID) references trainingssession(SessionID)
    );


create table WeightliftingExercise (
    ExerciseID bigint not null primary key auto_increment,
    ExerciseName varchar(50),
    NumberOfSets int,
    WLSessionID bigint not null,
    foreign key (WLSessionID) references weightliftingsession(WLSessionID)
    );


create table WeightliftingSet (
    SetID bigint not null primary key auto_increment,
    SetNumber int,
    Repetitions int,
    Weight double,
    ExerciseID bigint not null,
    foreign key(ExerciseID) references weightliftingexercise(ExerciseID)
    );
