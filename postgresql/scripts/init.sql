
CREATE DATABASE HeinrichHealth;


create table Login (
    Id bigint not null AUTO_INCREMENT Primary key,
    Email varchar(75),
    Password varchar(255)
    );


create table User (
    Id bigint not null AUTO_INCREMENT Primary key,
    Username varchar(50) not null,
    Lastname varchar(50),
    Firstname varchar(50),
    Bodyweight double not null,
    Height double not null,
    BMI double,
    Bodyfat_pct double,
    Login bigint not null,
    foreign key (Login) references Login(LoginId)
    );


create table TrainingSession (
    SessionId bigint not null primary key auto_increment,
    Duration_minutes int,
    Date date,
    User bigint not null,
    Foreign key (User) references user(Id)
    );


create table WeightliftingSession (
    Id bigint not null primary key auto_increment,
    name varchar(50) not null,
    Session bigint not null,
    foreign key (Session) references trainingssession(Id)
    );


create table WeightliftingExercise (
    Id bigint not null primary key auto_increment,
    ExerciseName varchar(50),
    NumberOfSets int,
    WLSession bigint not null,
    foreign key (WLSession) references weightliftingsession(Id)
    );


create table WeightliftingSet (
    Id bigint not null primary key auto_increment,
    SetNumber int,
    Repetitions int,
    Weight double,
    Exercise bigint not null,
    foreign key(Exercise) references weightliftingexercise(Id)
    );
