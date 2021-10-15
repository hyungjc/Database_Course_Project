/* Course(courseCode, courseName, noCredits) */
INSERT INTO Course VALUES('CS-E5865', 'Computational Genomics', 5);
INSERT INTO Course VALUES('CS-E5875', 'High-throughput Bioinfomatics', 5);
INSERT INTO Course VALUES('CS-E5885', 'Modelling Biological Networks', 5);
INSERT INTO Course VALUES('CS-E5890', 'Statistical Genetics and Personalised Medicine', 5);
INSERT INTO Course VALUES('CS-E4880', 'Machine Learning in Bioinformatics', 5);
INSERT INTO Course VALUES('CS-S9999', 'Spaceshift Flighting', 5);

SELECT * FROM Course;
/* CourseInstances(instancesCode, courseCode, startDate, endDate, language) */
INSERT INTO CourseInstances VALUES('CS-E5865F00', 'CS-E5865', '2000-08-09', '2000-10-09', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5865E00', 'CS-E5865', '2000-08-09', '2000-10-09', 'English');
INSERT INTO CourseInstances VALUES('CS-E5865F01', 'CS-E5865', '2001-08-30', '2001-10-24', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5865E01', 'CS-E5865', '2001-08-30', '2001-10-24', 'English');

INSERT INTO CourseInstances VALUES('CS-E5875F12', 'CS-E5875', '2011-10-09', '2011-12-20', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5875E12', 'CS-E5875', '2011-10-09', '2011-12-20', 'English');

INSERT INTO CourseInstances VALUES('CS-E5885F37', 'CS-E5885', '2015-01-15', '2015-03-01', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5885E37', 'CS-E5885', '2015-01-15', '2015-03-01', 'English');
INSERT INTO CourseInstances VALUES('CS-E5885F44', 'CS-E5885', '2020-01-10', '2020-03-10', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5885E44', 'CS-E5885', '2020-01-10', '2020-03-10', 'English');

INSERT INTO CourseInstances VALUES('CS-E5890F26', 'CS-E5890', '2017-03-15', '2017-05-15', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5890E26', 'CS-E5890', '2017-03-15', '2017-05-15', 'English');
INSERT INTO CourseInstances VALUES('CS-E5890F30', 'CS-E5890', '2021-01-17', '2021-03-17', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E5890E30', 'CS-E5890', '2021-01-17', '2021-03-17', 'English');
 
INSERT INTO CourseInstances VALUES('CS-E4880F23', 'CS-E4880', '2019-01-15', '2019-05-15', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-E4880E23', 'CS-E4880', '2019-01-15', '2019-05-15', 'English');
INSERT INTO CourseInstances VALUES('CS-E4880S23', 'CS-E4880', '2019-01-15', '2019-05-15', 'Swedish');

INSERT INTO CourseInstances VALUES('CS-S9999F11', 'CS-S9999', '2110-01-15', '2111-05-15', 'Finnish');
INSERT INTO CourseInstances VALUES('CS-S9999E11', 'CS-S9999', '2110-01-15', '2111-05-15', 'English');
INSERT INTO CourseInstances VALUES('CS-S9999S11', 'CS-S9999', '2110-01-15', '2111-05-15', 'Swedish');

SELECT * FROM CourseInstances;
/* ExerciseGroup(groupID, instancesCode, capacity, currentNoStudents) */
INSERT INTO ExerciseGroup VALUES('CS-S9999F11G1', 'CS-S9999F11', 10, 0);
INSERT INTO ExerciseGroup VALUES('CS-S9999F11G2', 'CS-S9999E11', 10, 0);
INSERT INTO ExerciseGroup VALUES('CS-S9999F11G3', 'CS-S9999S11', 10, 0);


INSERT INTO ExerciseGroup VALUES('CS-E5890E30G1', 'CS-E5890E30', 15, 0);
INSERT INTO ExerciseGroup VALUES('CS-E5890E30G2', 'CS-E5890E30', 15, 0);
INSERT INTO ExerciseGroup VALUES('CS-E5890E30G3', 'CS-E5890E30', 15, 0);

SELECT * FROM ExerciseGroup;

/* Exam(examID, courseCode, startTime, endTime) */
INSERT INTO Exam VALUES('CS-E5865EX1', 'CS-E5865', '09:00:00', '12:00:00');
INSERT INTO Exam VALUES('CS-E5865EX2', 'CS-E5865', '13:00:00', '16:00:00');

INSERT INTO Exam VALUES('CS-E5875EX1', 'CS-E5875', '13:00:00', '16:00:00');
INSERT INTO Exam VALUES('CS-E5875EX2', 'CS-E5875', '18:00:00', '20:00:00');

INSERT INTO Exam VALUES('CS-E5885EX1', 'CS-E5885', '09:00:00', '12:00:00');
INSERT INTO Exam VALUES('CS-E5885EX2', 'CS-E5885', '18:00:00', '20:00:00');

INSERT INTO Exam VALUES('CS-E5890EX1', 'CS-E5890', '09:00:00', '12:00:00');
INSERT INTO Exam VALUES('CS-E5890EX2', 'CS-E5890', '09:00:00', '12:00:00');

INSERT INTO Exam VALUES('CS-E4880EX1', 'CS-E4880',  '13:00:00', '16:00:00');
INSERT INTO Exam VALUES('CS-E4880EX2', 'CS-E4880',  '13:00:00', '16:00:00');

INSERT INTO Exam VALUES('CS-S9999EX1', 'CS-S9999', '13:00:00', '16:00:00');
INSERT INTO Exam VALUES('CS-S9999EX2', 'CS-S9999', '18:00:00', '20:00:00');

SELECT * FROM Exam;
/* Student(studentID, name, birthday, degreeProgram, startDate, expDate) */
INSERT INTO Student(studentID, name, birthday, degreeProgram, startDate)
     VALUES('766194', 'Alex Barley', '2000-02-13', 'Electrical and Automation', '2019-08-01');     
INSERT INTO Student VALUES('766890', 'Kim Berley',      '1983-02-13', 'Computer Science',        '1999-08-01', '2008-07-31');
INSERT INTO Student VALUES('766891', 'Mark Robson',     '1995-07-24', 'Computer Science',        '2017-08-01', '2024-07-31');
INSERT INTO Student VALUES('766892', 'Simo Toivonen',   '1990-03-25', 'Mechanical Engineer',     '2011-08-01', '2019-07-31');

INSERT INTO Student (studentID, name, birthday, degreeProgram)
    VALUES('766893', 'Susanna Korhonen','2000-05-06', 'Life Science Technology');
    
SELECT * FROM Student;


/* Building(buildingName, address) */
INSERT INTO Building VALUES('A1', '1 A street');
INSERT INTO Building VALUES('A2', '2 A street');
INSERT INTO Building VALUES('B1', '1 B street');
INSERT INTO Building VALUES('B2', '2 B street');
INSERT INTO Building VALUES('C1', '1 C street');

SELECT * FROM Building;
/* Room(roomID, buildingName, numberSeats, numberExamSeats, type) */
INSERT INTO Room VALUES ('A101', 'A1', 100, 50, 'Lecture Hall');
INSERT INTO Room VALUES ('A102', 'A1', 50, 25,  'Classroom');

INSERT INTO Room VALUES ('A201', 'A2', 20, 0, 'Computer Room');
INSERT INTO Room VALUES ('A202', 'A2', 20, 0, 'Laboratory');

INSERT INTO Room VALUES ('B101', 'B1', 50, 25,  'Classroom');
INSERT INTO Room VALUES ('B102', 'B1', 120, 40, 'Lecture Hall');

INSERT INTO Room VALUES ('B201', 'B2', 30, 15, 'Computer Room');
INSERT INTO Room VALUES ('B202', 'B2', 70, 35, 'Lecture Hall');

INSERT INTO Room VALUES ('C101', 'C1', 15, 0, 'Laboratory');
INSERT INTO Room VALUES ('C102', 'C1', 30, 10, 'Classroom');

SELECT * FROM Room;
/* Equipment(equipmentID, roomID, type, amount) */
INSERT INTO Equipment VALUES ('DT-A101', 'A101', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('C-A101',  'A101', 'Camera', 1);
INSERT INTO Equipment VALUES ('P-A101',  'A101', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-A101',  'A101', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-A102', 'A102', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('P-A102',  'A102', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-A102',  'A102', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-A201', 'A201', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('DS-A201', 'A201', 'Student Computer', 20);
INSERT INTO Equipment VALUES ('P-A201',  'A201', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-A201',  'A201', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-A202', 'A202', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('DS-A202', 'A202', 'Student Computer', 10);
INSERT INTO Equipment VALUES ('P-A202',  'A202', 'Projector', 1);
INSERT INTO Equipment VALUES ('O-A202',  'A202', 'Oscilloscope', 5);
INSERT INTO Equipment VALUES ('SP-A202', 'A202', 'Spectrum Analyzer', 3);

INSERT INTO Equipment VALUES ('DT-B101', 'B101', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('P-B101',  'B101', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-B101',  'B101', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-B102', 'B102', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('C-B102',  'B102', 'Camera', 1);
INSERT INTO Equipment VALUES ('P-B102',  'B102', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-B102',  'B102', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-B201', 'B201', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('DS-B201', 'B201', 'Student Computer', 20);
INSERT INTO Equipment VALUES ('P-B201',  'B201', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-B201',  'B201', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-B202', 'B202', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('C-B202',  'B202', 'Camera', 1);
INSERT INTO Equipment VALUES ('P-B202',  'B202', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-B202',  'B202', 'Speaker', 2);

INSERT INTO Equipment VALUES ('DT-C101', 'C101', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('DS-C101', 'C101', 'Student Computer', 10);
INSERT INTO Equipment VALUES ('P-C101',  'C101', 'Projector', 1);
INSERT INTO Equipment VALUES ('O-C101',  'C101', 'Oscilloscope', 	 5);
INSERT INTO Equipment VALUES ('SP-C101', 'C101', 'Spectrum Analyzer', 3);

INSERT INTO Equipment VALUES ('DT-C102', 'C102', 'Teacher Computer', 1);
INSERT INTO Equipment VALUES ('P-C102',  'C102', 'Projector', 1);
INSERT INTO Equipment VALUES ('S-C102',  'C102', 'Speaker', 2);

SELECT * FROM Equipment;

/* RoomReservation(bookingID, roomID, date, bookstartTime, bookendTime, purpose) */

/* For Exam */
INSERT INTO RoomReservation VALUES('BCS-E5865EX1', 'A101', '2000-10-20', '09:00:00', '12:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('BCS-E5865EX2', 'A102', '2001-10-30', '13:00:00', '16:00:00', 'Exam');

INSERT INTO RoomReservation VALUES('B1CS-E5875EX1', 'B101', '2011-12-22', '13:00:00', '16:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('B2CS-E5875EX1', 'B102', '2011-12-22', '13:00:00', '16:00:00', 'Exam');

INSERT INTO RoomReservation VALUES('B1CS-E5875EX2', 'B101', '2012-02-22', '18:00:00', '20:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('B2CS-E5875EX2', 'B102', '2012-02-22', '18:00:00', '20:00:00', 'Exam');

INSERT INTO RoomReservation VALUES('BCS-E5885EX1', 'A101', '2015-03-20', '09:00:00', '12:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('BCS-E5885EX2', 'B102', '2020-03-30', '18:00:00', '20:00:00', 'Exam');

INSERT INTO RoomReservation VALUES('BCS-E5890EX1', 'C102', '2017-05-20', '09:00:00', '12:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('BCS-E5890EX2', 'B102', '2021-03-20', '09:00:00', '12:00:00', 'Exam');

INSERT INTO RoomReservation VALUES('BCS-E4880EX1', 'A101', '2019-05-15', '13:00:00', '16:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('BCS-E4880EX2', 'C102', '2019-09-10', '13:00:00', '16:00:00', 'Exam');

INSERT INTO RoomReservation VALUES('BCS-S9999EX1', 'B101', '2111-05-30', '13:00:00', '16:00:00', 'Exam');
INSERT INTO RoomReservation VALUES('BCS-S9999EX2', 'B102', '2111-09-10', '18:00:00', '20:00:00', 'Exam');

/* For Lecture */
INSERT INTO RoomReservation VALUES('BCS-S9999F11G1L1', 'A101', '2110-02-15', '09:00:00', '16:00:00', 'Lecture');
INSERT INTO RoomReservation VALUES('BCS-S9999F11G1L2', 'A102', '2110-12-15', '09:00:00', '16:00:00', 'Lecture');
INSERT INTO RoomReservation VALUES('BCS-S9999F11G1L3', 'B101', '2111-02-15', '09:00:00', '16:00:00', 'Lecture');

INSERT INTO RoomReservation VALUES('BCS-E5890E30G1L1', 'B102', '2017-03-31', '14:00:00', '16:00:00', 'Lecture');
INSERT INTO RoomReservation VALUES('BCS-E5890E30G1L2', 'A101', '2017-04-05', '14:00:00', '16:00:00', 'Lecture');
INSERT INTO RoomReservation VALUES('BCS-E5890E30G1L3', 'B102', '2017-04-20', '14:00:00', '16:00:00', 'Lecture');

/* For Exercise */

INSERT INTO RoomReservation VALUES('BCS-S9999F11G1E1', 'A201', '2110-02-20', '09:00:00', '16:00:00', 'Exercise');
INSERT INTO RoomReservation VALUES('BCS-S9999F11G1E2', 'A201', '2110-12-20', '09:00:00', '16:00:00', 'Exercise');
INSERT INTO RoomReservation VALUES('BCS-S9999F11G1E3', 'A201', '2111-02-20', '09:00:00', '16:00:00', 'Exercise');

INSERT INTO RoomReservation VALUES('BCS-E5890E30G1E1', 'C101', '2017-03-10', '14:00:00', '16:00:00', 'Exercise');
INSERT INTO RoomReservation VALUES('BCS-E5890E30G1E2', 'A201', '2017-04-21', '14:00:00', '16:00:00', 'Exercise');
INSERT INTO RoomReservation VALUES('BCS-E5890E30G1E3', 'C101', '2017-04-30', '14:00:00', '16:00:00', 'Exercise');

SELECT * FROM RoomReservation;

/* Exercise(ExerciseID, groupID, bookingID) */
INSERT INTO Exercise VALUES('CS-S9999F11G1E1', 'CS-S9999F11G1', 'BCS-S9999F11G1E1');
INSERT INTO Exercise VALUES('CS-S9999F11G1E2', 'CS-S9999F11G1', 'BCS-S9999F11G1E2');
INSERT INTO Exercise VALUES('CS-S9999F11G1E3', 'CS-S9999F11G1', 'BCS-S9999F11G1E3');

INSERT INTO Exercise VALUES('CS-E5890E30G1E1', 'CS-E5890E30G1', 'BCS-E5890E30G1E1');
INSERT INTO Exercise VALUES('CS-E5890E30G1E2', 'CS-E5890E30G1', 'BCS-E5890E30G1E2');
INSERT INTO Exercise VALUES('CS-E5890E30G1E3', 'CS-E5890E30G1', 'BCS-E5890E30G1E3');

SELECT * FROM Exercise;

/* Lecture(lectureID, instancesCode, bookingID) */
INSERT INTO Lecture VALUES('CS-S9999F11G1L1', 'CS-S9999F11', 'BCS-S9999F11G1L1');
INSERT INTO Lecture VALUES('CS-S9999F11G1L2', 'CS-S9999F11', 'BCS-S9999F11G1L2');
INSERT INTO Lecture VALUES('CS-S9999F11G1L3', 'CS-S9999F11', 'BCS-S9999F11G1L3');

INSERT INTO Lecture VALUES('CS-E5890E30G1L1', 'CS-E5890E30', 'BCS-E5890E30G1L1');
INSERT INTO Lecture VALUES('CS-E5890E30G1L2', 'CS-E5890E30', 'BCS-E5890E30G1L2');
INSERT INTO Lecture VALUES('CS-E5890E30G1L3', 'CS-E5890E30', 'BCS-E5890E30G1L3');

SELECT * FROM Lecture;


/* ExamRegister(examID, studentID) */
INSERT INTO ExamRegister VALUES ('CS-E5865EX1' , '766890');
INSERT INTO ExamRegister VALUES ('CS-E5865EX2' , '766890');
INSERT INTO ExamRegister VALUES ('CS-E5875EX1' , '766892');
INSERT INTO ExamRegister VALUES ('CS-E5875EX2' , '766892');
INSERT INTO ExamRegister VALUES ('CS-E5890EX1' , '766892');
INSERT INTO ExamRegister VALUES ('CS-E4880EX1' , '766891');
INSERT INTO ExamRegister VALUES ('CS-E4880EX2' , '766194');
INSERT INTO ExamRegister VALUES ('CS-E4880EX2' , '766891');

SELECT * FROM ExamRegister;

/* ExerciseGroupRegister(groupID ,studentID) */
INSERT INTO ExerciseGroupRegister VALUES ('CS-E5890E30G1', '766194');
INSERT INTO ExerciseGroupRegister VALUES ('CS-E5890E30G1', '766890');
INSERT INTO ExerciseGroupRegister VALUES ('CS-E5890E30G2', '766893');
INSERT INTO ExerciseGroupRegister VALUES ('CS-E5890E30G3', '766890');
INSERT INTO ExerciseGroupRegister VALUES ('CS-E5890E30G3', '766893');

SELECT * FROM ExerciseGroupRegister;

/* ExamRoomReservation(examID, bookingID) */

INSERT INTO ExamRoomReservation VALUES ('CS-E5865EX1', 'BCS-E5865EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-E5865EX2', 'BCS-E5865EX2');
INSERT INTO ExamRoomReservation VALUES ('CS-E5875EX1', 'B1CS-E5875EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-E5875EX1', 'B2CS-E5875EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-E5875EX2', 'B1CS-E5875EX2');
INSERT INTO ExamRoomReservation VALUES ('CS-E5875EX2', 'B2CS-E5875EX2');
INSERT INTO ExamRoomReservation VALUES ('CS-E5885EX1', 'BCS-E5885EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-E5885EX2', 'BCS-E5885EX2');
INSERT INTO ExamRoomReservation VALUES ('CS-E5890EX1', 'BCS-E5890EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-E5890EX2', 'BCS-E5890EX2');


INSERT INTO ExamRoomReservation VALUES ('CS-E4880EX1', 'BCS-E4880EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-E4880EX2', 'BCS-E4880EX2');

INSERT INTO ExamRoomReservation VALUES ('CS-S9999EX1', 'BCS-S9999EX1');
INSERT INTO ExamRoomReservation VALUES ('CS-S9999EX2', 'BCS-S9999EX2');

SELECT * FROM ExamRoomReservation;
