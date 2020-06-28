create table student (
    id varchar(255) not null primary key,
    name varchar(255) not null,
    age int not null,
    sex varchar(255) not null
);

INSERT INTO student VALUES ('001', 'zhangsan', 18, 'male');
INSERT INTO student VALUES ('002', 'lisi', 20, 'female');

create table subject (
    id varchar(255) primary key,
    subject varchar(255) not null,
    teacher varchar(255) not null,
    description varchar(255) not null
);

INSERT INTO subject VALUES ('1001', 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO subject VALUES ('1002', 'math', 'Miss Liu', 'the exam is difficult');


create table score (
    id int primary key,
    student_id varchar(255) not null,
    subject_id varchar(255) not null,
    score FLOAT(10) not null,
    constraint fk_subject_id foreign key(subject_id) references subject(id) on delete cascade
);
INSERT INTO score VALUES (1, '1', '1001', 80);
INSERT INTO score VALUES (2, '2', '1002', 60);
INSERT INTO score VALUES (3, '1', '1001', 70);
INSERT INTO score VALUES (4, '2', '1002', 60.5);