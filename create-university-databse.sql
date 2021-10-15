/* Course(courseCode, courseName, noCredits) */
CREATE TABLE Course(
       courseCode TEXT PRIMARY KEY,
       courseName TEXT DEFAULT "N/A", 
       noCredits INTEGER DEFAULT 5
);

/* CourseInstances(instancesCode, courseCode, startDate, endDate, language) */
CREATE TABLE CourseInstances(
       instancesCode TEXT PRIMARY KEY,
       courseCode TEXT,
       startDate DATE,
       endDate DATE
           CHECK (startDate <= endDate),
       language TEXT DEFAULT "Finnish" 
           CHECK (language IN ("Finnish", "English", "Swedish", "German", "Other")),
       FOREIGN KEY (courseCode) REFERENCES Course(courseCode)
);

/* ExerciseGroup(groupID, instancesCode, capacity, currentNoStudents) */
CREATE TABLE ExerciseGroup(
       groupID TEXT PRIMARY KEY,
       instancesCode TEXT,
       capacity INTEGER DEFAULT 0
           CHECK (capacity >= 0),
       currentNoStudents INTEGER DEFAULT 0
           CHECK (currentNoStudents <= capacity),
       FOREIGN KEY (instancesCode) REFERENCES CourseInstances(instancesCode)
);

/* Exercise(ExerciseID, groupID, bookingID) */
CREATE TABLE Exercise(
       ExerciseID TEXT PRIMARY KEY,
       groupID TEXT,
       bookingID TEXT,
       FOREIGN KEY (groupID) REFERENCES ExerciseGroup(groupID),
       FOREIGN KEY (bookingID) REFERENCES RoomReservation(bookingID)
);

/* Lecture(lectureID, instancesCode, bookingID) */
CREATE TABLE Lecture(
       lectureID TEXT PRIMARY KEY,
       instancesCode TEXT,
       bookingID TEXT,
       FOREIGN KEY (instancesCode) REFERENCES CourseInstances(instancesCode),
       FOREIGN KEY (bookingID) REFERENCES RoomReservation(bookingID)
);

/* Exam(examID, courseCode, startTime, endTime) */
CREATE TABLE Exam(
       examID TEXT PRIMARY KEY,
       courseCode TEXT,
       startTime TIME NOT NULL,
       endTime TIME NOT NULL 
           CHECK (startTime < endTime),
       FOREIGN KEY (courseCode) REFERENCES Course(courseCode)
);

/* Student(studentID, name, birthday, degreeProgram, startYear, expDate) */
CREATE TABLE Student(
       studentID TEXT PRIMARY KEY,
       name TEXT,
       birthday DATE,
       degreeProgram TEXT,
       startDate DATE DEFAULT (date('now')),
       expDate DATE DEFAULT (date('now', '+7 year'))
);

/* RoomReservation(bookingID, roomID, bookDate, bookstartTime, bookendTime, purpose) */
CREATE TABLE RoomReservation(
       bookingID TEXT PRIMARY KEY,
       roomID TEXT,
       bookDate DATE,
       bookstartTime TIME NOT NULL,
       bookendTime TIME NOT NULL
           CHECK (bookstartTime < bookendTime),
       purpose TEXT 
           CHECK (purpose IN ("Lecture", "Exercise", "Exam")),
       FOREIGN KEY (roomID) REFERENCES Room(roomID)
);

/* Building(buildingName, address) */
CREATE TABLE Building(
       buildingName TEXT PRIMARY KEY,
       address TEXT DEFAULT "N/A"
);

/* Room(roomID, buildingName, numberSeats, numberExamSeats, type) */
CREATE TABLE Room(
       roomID TEXT PRIMARY KEY,
       buildingName TEXT NOT NULL,
       numberSeats INTEGER NOT NULL
           CHECK (numberSeats >= 0),
       numberExamSeats INTEGER DEFAULT 0
           CHECK (numberExamSeats >= 0),
       type TEXT 
           CHECK (type IN ("Lecture Hall", "Classroom", "Computer Room", "Laboratory", "Other")),
       FOREIGN KEY (buildingName) REFERENCES Building(buildingName)
);

/* Equipment(equipmentID, roomID, type, amount) */
CREATE TABLE Equipment(
       equipmentID TEXT PRIMARY KEY,
       roomID TEXT,
       type TEXT,
       amount INTEGER 
           CHECK (amount >= 0),
       FOREIGN KEY (roomID) REFERENCES Room(roomID)
);

/* ExamRegister(examID, studentID) */
CREATE TABLE ExamRegister(
       examID TEXT,
       studentID TEXT,
       FOREIGN KEY (examID) REFERENCES Exam(ExamID),
       FOREIGN KEY (studentID) REFERENCES Student(StudentID)
);

/* ExerciseGroupRegister(groupID ,studentID) */
CREATE TABLE ExerciseGroupRegister(
       groupID TEXT,
       studentID TEXT,
       FOREIGN KEY (groupID) REFERENCES ExerciseGroup(groupID),
       FOREIGN KEY (studentID) REFERENCES Student(studentID)
);

/* ExamRoomReservation(examID, bookingID) */
CREATE TABLE ExamRoomReservation(
       examID TEXT,
       bookingID TEXT,
       FOREIGN KEY (examID) REFERENCES Exam(examID),
       FOREIGN KEY (bookingID) REFERENCES RoomReservation(bookingID)
);
