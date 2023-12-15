--
-- File generated with SQLiteStudio v3.4.4 on Mon Nov 13 23:32:19 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Departments_2NF
DROP TABLE IF EXISTS Departments_2NF;

CREATE TABLE IF NOT EXISTS Departments_2NF (
    DepartmentID INTEGER NOT NULL,
    Department   VARCHAR,
    PRIMARY KEY (
        DepartmentID AUTOINCREMENT
    )
);

INSERT INTO Departments_2NF (
                                DepartmentID,
                                Department
                            )
                            VALUES (
                                1,
                                'Web Applications'
                            );

INSERT INTO Departments_2NF (
                                DepartmentID,
                                Department
                            )
                            VALUES (
                                2,
                                'Mobile Applications'
                            );


-- Table: Departments_3NF
DROP TABLE IF EXISTS Departments_3NF;

CREATE TABLE IF NOT EXISTS Departments_3NF (
    DepartmentID INT,
    Department   TEXT
);

INSERT INTO Departments_3NF (
                                DepartmentID,
                                Department
                            )
                            VALUES (
                                1,
                                'Web Applications'
                            );

INSERT INTO Departments_3NF (
                                DepartmentID,
                                Department
                            )
                            VALUES (
                                2,
                                'Mobile Applications'
                            );


-- Table: Employee_Department_2NF
DROP TABLE IF EXISTS Employee_Department_2NF;

CREATE TABLE IF NOT EXISTS Employee_Department_2NF (
    EmployeeID   INTEGER NOT NULL,
    DepartmentID INTEGER NOT NULL,
    FOREIGN KEY (
        EmployeeID
    )
    REFERENCES Employees_2NF (EmployeeID),
    FOREIGN KEY (
        DepartmentID
    )
    REFERENCES Departments_2NF (DepartmentID),
    PRIMARY KEY (
        EmployeeID,
        DepartmentID
    )
);

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        1,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        2,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        3,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        4,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        4,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        5,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        6,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        7,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        7,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        8,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        9,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        9,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        10,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        11,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        11,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        12,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        13,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        14,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        15,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        16,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        17,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        17,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        18,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        19,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        20,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        21,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        22,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        23,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        24,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        25,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        26,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        27,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        28,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        28,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        29,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        30,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        31,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        32,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        33,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        34,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        35,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        36,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        37,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        38,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        39,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        40,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        41,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        41,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        42,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        43,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        43,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        44,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        45,
                                        1
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        46,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        47,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        48,
                                        2
                                    );

INSERT INTO Employee_Department_2NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        49,
                                        1
                                    );


-- Table: Employee_Department_3NF
DROP TABLE IF EXISTS Employee_Department_3NF;

CREATE TABLE IF NOT EXISTS Employee_Department_3NF (
    EmployeeID   INT,
    DepartmentID INT
);

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        1,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        2,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        3,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        4,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        4,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        5,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        6,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        7,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        7,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        8,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        9,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        9,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        10,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        11,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        11,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        12,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        13,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        14,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        15,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        16,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        17,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        17,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        18,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        19,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        20,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        21,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        22,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        23,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        24,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        25,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        26,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        27,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        28,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        28,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        29,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        30,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        31,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        32,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        33,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        34,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        35,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        36,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        37,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        38,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        39,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        40,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        41,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        41,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        42,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        43,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        43,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        44,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        45,
                                        1
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        46,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        47,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        48,
                                        2
                                    );

INSERT INTO Employee_Department_3NF (
                                        EmployeeID,
                                        DepartmentID
                                    )
                                    VALUES (
                                        49,
                                        1
                                    );


-- Table: Employee_Role_2NF
DROP TABLE IF EXISTS Employee_Role_2NF;

CREATE TABLE IF NOT EXISTS Employee_Role_2NF (
    EmployeeID INTEGER NOT NULL,
    RoleID     INTEGER NOT NULL,
    FOREIGN KEY (
        EmployeeID
    )
    REFERENCES Employees_2NF (EmployeeID),
    FOREIGN KEY (
        RoleID
    )
    REFERENCES Roles_2NF (RoleID),
    PRIMARY KEY (
        EmployeeID,
        RoleID
    )
);

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  1,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  2,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  3,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  4,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  5,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  6,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  7,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  8,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  9,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  10,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  11,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  12,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  13,
                                  7
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  14,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  15,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  16,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  17,
                                  7
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  18,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  19,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  19,
                                  8
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  20,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  21,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  22,
                                  7
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  23,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  23,
                                  9
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  24,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  25,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  26,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  27,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  28,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  29,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  30,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  31,
                                  10
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  31,
                                  7
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  32,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  33,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  34,
                                  2
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  35,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  36,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  37,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  38,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  39,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  40,
                                  1
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  41,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  42,
                                  5
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  43,
                                  4
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  44,
                                  7
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  45,
                                  3
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  46,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  47,
                                  7
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  48,
                                  6
                              );

INSERT INTO Employee_Role_2NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  49,
                                  7
                              );


-- Table: Employee_Role_3NF
DROP TABLE IF EXISTS Employee_Role_3NF;

CREATE TABLE IF NOT EXISTS Employee_Role_3NF (
    EmployeeID INT,
    RoleID     INT
);

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  1,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  2,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  3,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  4,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  5,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  6,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  7,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  8,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  9,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  10,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  11,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  12,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  13,
                                  7
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  14,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  15,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  16,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  17,
                                  7
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  18,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  19,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  19,
                                  8
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  20,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  21,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  22,
                                  7
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  23,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  23,
                                  9
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  24,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  25,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  26,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  27,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  28,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  29,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  30,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  31,
                                  10
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  31,
                                  7
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  32,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  33,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  34,
                                  2
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  35,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  36,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  37,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  38,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  39,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  40,
                                  1
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  41,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  42,
                                  5
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  43,
                                  4
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  44,
                                  7
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  45,
                                  3
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  46,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  47,
                                  7
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  48,
                                  6
                              );

INSERT INTO Employee_Role_3NF (
                                  EmployeeID,
                                  RoleID
                              )
                              VALUES (
                                  49,
                                  7
                              );


-- Table: Employees
DROP TABLE IF EXISTS Employees;

CREATE TABLE IF NOT EXISTS Employees (
    FullName       TEXT,
    Title          TEXT,
    Role           TEXT,
    OccupationBand TEXT,
    Salary         INTEGER,
    Department     TEXT
);

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Dumisani,     Thwala',
                          'Mr',
                          'Back-End Developer',
                          'Graduate',
                          52171,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Tony,   Horn',
                          'Mr',
                          'Back-End Developer',
                          'Graduate',
                          103397,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Vuyokazi,barnes',
                          'Mr',
                          'Business Analyst',
                          'Graduate',
                          69220,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'sello  ,Details',
                          'Mr',
                          'Database Analyst',
                          'Graduate',
                          54945,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Jacqueline       ,fredericks',
                          'Ms',
                          'Front-End Developer',
                          'Graduate',
                          51104,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Walter           ,Jansen',
                          'Mr',
                          'Front-End Developer',
                          'Graduate',
                          35454,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Ernest,maritz',
                          'Mr',
                          'Full-Stack Developer',
                          'Graduate',
                          88569,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Kevin,Motloung',
                          'MR',
                          'Systems Analyst',
                          'Graduate',
                          99370,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'takalani      ,Richards',
                          'mr',
                          'Systems Analyst',
                          'Graduate',
                          57906,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Bronwyn       ,Swartz',
                          'Miss',
                          'UI/UX Developer',
                          'Graduate',
                          34350,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Jan,     Ngwenya',
                          'MR',
                          'Back-End Developer',
                          'Intern',
                          38959,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Patience,    Willemse',
                          'Mrs',
                          'Back-End Developer',
                          'Intern',
                          52053,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Dirk,Banda',
                          'Mr',
                          'Business Analyst',
                          'Intern',
                          37601,
                          'Web Applications,Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Janine             ,De Villiers',
                          'Mrs',
                          'Database Analyst',
                          'Intern',
                          32886,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'barend,Edwards',
                          'MR',
                          'Database Analyst',
                          'Intern',
                          13163,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Jabulani,Horn',
                          'Mr',
                          'Front-End Developer',
                          'Intern',
                          55725,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'kelly            ,Manuel',
                          'Ms',
                          'Full-Stack Developer',
                          'Intern',
                          47442,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Claire,Morris',
                          'Ms',
                          'Full-Stack Developer',
                          'Intern',
                          36000,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Janet,Patel',
                          'Ms',
                          'Systems Analyst',
                          'Intern',
                          39081,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Pearl,Stewart',
                          'Miss',
                          'UI/UX Developer',
                          'Intern',
                          24289,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Christopher,     Walker',
                          'Mr',
                          'Back-End Developer',
                          'Junior',
                          122894,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'gugulethu             ,   Maluleka',
                          'Mrs',
                          'Business Analyst',
                          'Junior',
                          181609,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Lesego,Bennett',
                          'ms',
                          'Business Analyst',
                          'Junior',
                          41083,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Lizelle,Dhlamini',
                          'miss',
                          'Database Analyst',
                          'Junior',
                          64179,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'André          ,gerber',
                          'Mrs',
                          'Front-End Developer',
                          'Junior',
                          52357,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Patience,Khoza',
                          NULL,
                          'Front-End Developer',
                          'Junior',
                          104062,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Lynn,Mashaba',
                          'Dr',
                          'Full-Stack Developer',
                          'Junior',
                          115478,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'phumzile,motsepe',
                          'Prof',
                          'Systems Analyst',
                          'Junior',
                          129627,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Ivan,Schoeman',
                          'dr',
                          'Systems Analyst',
                          'Junior',
                          167439,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Antoinette,Van Der Berg',
                          'Dr',
                          'UI/UX Developer',
                          'Junior',
                          118731,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Marco              ,    Morris',
                          'prof',
                          'Back-End Developer',
                          'Mid-Level',
                          110506,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Tumelo,   Rikhotso',
                          'Mr',
                          'Business Analyst',
                          'Mid-Level',
                          144372,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Danie   ,Campbell',
                          'Mrs',
                          'Business Analyst',
                          'Mid-Level',
                          205621,
                          'Web Applications, Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Johan,du Plessis',
                          'MR',
                          'Database Analyst',
                          'Mid-Level',
                          235178,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Marthinus,Gordon',
                          'Mrs',
                          'Front-End Developer',
                          'Mid-Level',
                          106178,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Louise,Lourens',
                          'Mrs',
                          'Front-End Developer',
                          'Mid-Level',
                          158634,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Jessica          ,Mchunu',
                          'miss',
                          'Full-Stack Developer, Scrum Master',
                          'Mid-Level',
                          70741,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'liezel,moyo',
                          'ms',
                          'Systems Analyst',
                          'Mid-Level',
                          106276,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Douglas,Sibanda',
                          'MR',
                          'UI/UX Developer',
                          'Mid-Level',
                          57353,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Contact           ,Xaba',
                          'dr',
                          'UI/UX Developer',
                          'Mid-Level',
                          85836,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'marthinus,    ngobeni',
                          'Ms',
                          'Back-End Developer',
                          'Senior',
                          354298,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Priscilla,Anderson',
                          'Ms',
                          'Business Analyst',
                          'Senior',
                          262686,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Danie,davies',
                          'dr',
                          'Database Analyst',
                          'Senior',
                          313491,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'nicole       ,Ebrahim',
                          'dr',
                          'Database Analyst',
                          'Senior',
                          180919,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Siyabonga,Hanekom',
                          'Ms',
                          'Front-End Developer',
                          'Senior',
                          213477,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Laura,Makhanya',
                          'Ms',
                          'Full-Stack Developer, Team Lead',
                          'Senior',
                          293352,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Nadine,Morris',
                          'Mrs',
                          'Full-Stack Developer',
                          'Senior',
                          326767,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Nico,Mthembu',
                          'Mr',
                          'Systems Analyst, Project Manager',
                          'Senior',
                          97673,
                          'Mobile Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Juan,Smit',
                          'Mr',
                          'UI/UX Developer',
                          'Senior',
                          308542,
                          'Web Applications'
                      );

INSERT INTO Employees (
                          FullName,
                          Title,
                          Role,
                          OccupationBand,
                          Salary,
                          Department
                      )
                      VALUES (
                          'Precious,zungu',
                          'Miss',
                          'UI/UX Developer',
                          'Senior',
                          264376,
                          'Mobile Applications'
                      );


-- Table: Employees_1NF
DROP TABLE IF EXISTS Employees_1NF;

CREATE TABLE IF NOT EXISTS Employees_1NF (
    Name           VARCHAR NOT NULL,
    Surname        VARCHAR NOT NULL,
    Role           VARCHAR NOT NULL,
    Department     VARCHAR NOT NULL,
    Title          VARCHAR,
    OccupationBand VARCHAR,
    Salary         REAL,
    PRIMARY KEY (
        Name,
        Surname,
        Role,
        Department
    )
);

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'André',
                              'gerber',
                              'Front-End Developer',
                              'Web Applications',
                              'Mrs',
                              'Junior',
                              52357.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Antoinette',
                              'Van Der Berg',
                              'UI/UX Developer',
                              'Mobile Applications',
                              'Dr',
                              'Junior',
                              118731.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Bronwyn',
                              'Swartz',
                              'UI/UX Developer',
                              'Mobile Applications',
                              'Miss',
                              'Graduate',
                              34350.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Christopher',
                              'Walker',
                              'Back-End Developer',
                              'Mobile Applications',
                              'Mr',
                              'Junior',
                              122894.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Christopher',
                              'Walker',
                              'Back-End Developer',
                              'Web Applications',
                              'Mr',
                              'Junior',
                              122894.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Claire',
                              'Morris',
                              'Full-Stack Developer',
                              'Mobile Applications',
                              'Ms',
                              'Intern',
                              36000.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Contact',
                              'Xaba',
                              'UI/UX Developer',
                              'Mobile Applications',
                              'Dr',
                              'Mid-Level',
                              85836.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Danie',
                              'Campbell',
                              'Business Analyst',
                              'Mobile Applications',
                              'Mrs',
                              'Mid-Level',
                              205621.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Danie',
                              'Campbell',
                              'Business Analyst',
                              'Web Applications',
                              'Mrs',
                              'Mid-Level',
                              205621.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Danie',
                              'davies',
                              'Database Analyst',
                              'Web Applications',
                              'Dr',
                              'Senior',
                              313491.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Dirk',
                              'Banda',
                              'Business Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Intern',
                              37601.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Dirk',
                              'Banda',
                              'Business Analyst',
                              'Web Applications',
                              'Mr',
                              'Intern',
                              37601.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Douglas',
                              'Sibanda',
                              'UI/UX Developer',
                              'Web Applications',
                              'Mr',
                              'Mid-Level',
                              57353.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Dumisani',
                              'Thwala',
                              'Back-End Developer',
                              'Mobile Applications',
                              'Mr',
                              'Graduate',
                              52171.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Dumisani',
                              'Thwala',
                              'Back-End Developer',
                              'Web Applications',
                              'Mr',
                              'Graduate',
                              52171.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Ernest',
                              'maritz',
                              'Full-Stack Developer',
                              'Web Applications',
                              'Mr',
                              'Graduate',
                              88569.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Ivan',
                              'Schoeman',
                              'Systems Analyst',
                              'Web Applications',
                              'Dr',
                              'Junior',
                              167439.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Jabulani',
                              'Horn',
                              'Front-End Developer',
                              'Mobile Applications',
                              'Mr',
                              'Intern',
                              55725.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Jacqueline',
                              'fredericks',
                              'Front-End Developer',
                              'Web Applications',
                              'Ms',
                              'Graduate',
                              51104.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Jan',
                              'Ngwenya',
                              'Back-End Developer',
                              'Web Applications',
                              'Mr',
                              'Intern',
                              38959.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Janet',
                              'Patel',
                              'Systems Analyst',
                              'Mobile Applications',
                              'Ms',
                              'Intern',
                              39081.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Janet',
                              'Patel',
                              'Systems Analyst',
                              'Web Applications',
                              'Ms',
                              'Intern',
                              39081.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Janine',
                              'De Villiers',
                              'Database Analyst',
                              'Mobile Applications',
                              'Mrs',
                              'Intern',
                              32886.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Jessica',
                              'Mchunu',
                              'Full-Stack Developer',
                              'Web Applications',
                              'Miss',
                              'Mid-Level',
                              70741.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Jessica',
                              'Mchunu',
                              'Scrum Master',
                              'Web Applications',
                              'Miss',
                              'Mid-Level',
                              70741.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Johan',
                              'du Plessis',
                              'Database Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Mid-Level',
                              235178.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Juan',
                              'Smit',
                              'UI/UX Developer',
                              'Web Applications',
                              'Mr',
                              'Senior',
                              308542.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Kevin',
                              'Motloung',
                              'Systems Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Graduate',
                              99370.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Laura',
                              'Makhanya',
                              'Full-Stack Developer',
                              'Mobile Applications',
                              'Ms',
                              'Senior',
                              293352.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Laura',
                              'Makhanya',
                              'Team Lead',
                              'Mobile Applications',
                              'Ms',
                              'Senior',
                              293352.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Lesego',
                              'Bennett',
                              'Business Analyst',
                              'Web Applications',
                              'Ms',
                              'Junior',
                              41083.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Lizelle',
                              'Dhlamini',
                              'Database Analyst',
                              'Mobile Applications',
                              'Miss',
                              'Junior',
                              64179.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Louise',
                              'Lourens',
                              'Front-End Developer',
                              'Mobile Applications',
                              'Mrs',
                              'Mid-Level',
                              158634.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Lynn',
                              'Mashaba',
                              'Full-Stack Developer',
                              'Web Applications',
                              'Dr',
                              'Junior',
                              115478.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Marco',
                              'Morris',
                              'Back-End Developer',
                              'Mobile Applications',
                              'Prof',
                              'Mid-Level',
                              110506.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Marco',
                              'Morris',
                              'Back-End Developer',
                              'Web Applications',
                              'Prof',
                              'Mid-Level',
                              110506.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Marthinus',
                              'Gordon',
                              'Front-End Developer',
                              'Web Applications',
                              'Mrs',
                              'Mid-Level',
                              106178.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Nadine',
                              'Morris',
                              'Full-Stack Developer',
                              'Web Applications',
                              'Mrs',
                              'Senior',
                              326767.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Nico',
                              'Mthembu',
                              'Project Manager',
                              'Mobile Applications',
                              'Mr',
                              'Senior',
                              97673.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Nico',
                              'Mthembu',
                              'Systems Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Senior',
                              97673.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Patience',
                              'Khoza',
                              'Front-End Developer',
                              'Mobile Applications',
                              NULL,
                              'Junior',
                              104062.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Patience',
                              'Willemse',
                              'Back-End Developer',
                              'Mobile Applications',
                              'Mrs',
                              'Intern',
                              52053.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Pearl',
                              'Stewart',
                              'UI/UX Developer',
                              'Mobile Applications',
                              'Miss',
                              'Intern',
                              24289.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Precious',
                              'zungu',
                              'UI/UX Developer',
                              'Mobile Applications',
                              'Miss',
                              'Senior',
                              264376.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Priscilla',
                              'Anderson',
                              'Business Analyst',
                              'Mobile Applications',
                              'Ms',
                              'Senior',
                              262686.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Siyabonga',
                              'Hanekom',
                              'Front-End Developer',
                              'Web Applications',
                              'Ms',
                              'Senior',
                              213477.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Tony',
                              'Horn',
                              'Back-End Developer',
                              'Mobile Applications',
                              'Mr',
                              'Graduate',
                              103397.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Tumelo',
                              'Rikhotso',
                              'Business Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Mid-Level',
                              144372.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Vuyokazi',
                              'barnes',
                              'Business Analyst',
                              'Web Applications',
                              'Mr',
                              'Graduate',
                              69220.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'Walter',
                              'Jansen',
                              'Front-End Developer',
                              'Mobile Applications',
                              'Mr',
                              'Graduate',
                              35454.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'barend',
                              'Edwards',
                              'Database Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Intern',
                              13163.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'barend',
                              'Edwards',
                              'Database Analyst',
                              'Web Applications',
                              'Mr',
                              'Intern',
                              13163.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'gugulethu',
                              'Maluleka',
                              'Business Analyst',
                              'Mobile Applications',
                              'Mrs',
                              'Junior',
                              181609.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'kelly',
                              'Manuel',
                              'Full-Stack Developer',
                              'Mobile Applications',
                              'Ms',
                              'Intern',
                              47442.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'kelly',
                              'Manuel',
                              'Full-Stack Developer',
                              'Web Applications',
                              'Ms',
                              'Intern',
                              47442.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'liezel',
                              'moyo',
                              'Systems Analyst',
                              'Mobile Applications',
                              'Ms',
                              'Mid-Level',
                              106276.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'marthinus',
                              'ngobeni',
                              'Back-End Developer',
                              'Web Applications',
                              'Ms',
                              'Senior',
                              354298.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'nicole',
                              'Ebrahim',
                              'Database Analyst',
                              'Mobile Applications',
                              'Dr',
                              'Senior',
                              180919.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'phumzile',
                              'motsepe',
                              'Systems Analyst',
                              'Mobile Applications',
                              'Prof',
                              'Junior',
                              129627.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'sello',
                              'Details',
                              'Database Analyst',
                              'Mobile Applications',
                              'Mr',
                              'Graduate',
                              54945.0
                          );

INSERT INTO Employees_1NF (
                              Name,
                              Surname,
                              Role,
                              Department,
                              Title,
                              OccupationBand,
                              Salary
                          )
                          VALUES (
                              'takalani',
                              'Richards',
                              'Systems Analyst',
                              'Web Applications',
                              'Mr',
                              'Graduate',
                              57906.0
                          );


-- Table: Employees_2NF
DROP TABLE IF EXISTS Employees_2NF;

CREATE TABLE IF NOT EXISTS Employees_2NF (
    EmployeeID     INTEGER NOT NULL,
    Name           VARCHAR,
    Surname        VARCHAR,
    Salary         REAL,
    OccupationBand VARCHAR,
    TitleID        INTEGER,
    FOREIGN KEY (
        TitleID
    )
    REFERENCES Titles_2NF (TitleID),
    PRIMARY KEY (
        EmployeeID AUTOINCREMENT
    )
);

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              1,
                              'André',
                              'gerber',
                              52357.0,
                              'Junior',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              2,
                              'Antoinette',
                              'Van Der Berg',
                              118731.0,
                              'Junior',
                              2
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              3,
                              'Bronwyn',
                              'Swartz',
                              34350.0,
                              'Graduate',
                              3
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              4,
                              'Christopher',
                              'Walker',
                              122894.0,
                              'Junior',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              5,
                              'Claire',
                              'Morris',
                              36000.0,
                              'Intern',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              6,
                              'Contact',
                              'Xaba',
                              85836.0,
                              'Mid-Level',
                              2
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              7,
                              'Danie',
                              'Campbell',
                              205621.0,
                              'Mid-Level',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              8,
                              'Danie',
                              'davies',
                              313491.0,
                              'Senior',
                              2
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              9,
                              'Dirk',
                              'Banda',
                              37601.0,
                              'Intern',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              10,
                              'Douglas',
                              'Sibanda',
                              57353.0,
                              'Mid-Level',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              11,
                              'Dumisani',
                              'Thwala',
                              52171.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              12,
                              'Ernest',
                              'maritz',
                              88569.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              13,
                              'Ivan',
                              'Schoeman',
                              167439.0,
                              'Junior',
                              2
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              14,
                              'Jabulani',
                              'Horn',
                              55725.0,
                              'Intern',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              15,
                              'Jacqueline',
                              'fredericks',
                              51104.0,
                              'Graduate',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              16,
                              'Jan',
                              'Ngwenya',
                              38959.0,
                              'Intern',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              17,
                              'Janet',
                              'Patel',
                              39081.0,
                              'Intern',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              18,
                              'Janine',
                              'De Villiers',
                              32886.0,
                              'Intern',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              19,
                              'Jessica',
                              'Mchunu',
                              70741.0,
                              'Mid-Level',
                              3
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              20,
                              'Johan',
                              'du Plessis',
                              235178.0,
                              'Mid-Level',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              21,
                              'Juan',
                              'Smit',
                              308542.0,
                              'Senior',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              22,
                              'Kevin',
                              'Motloung',
                              99370.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              23,
                              'Laura',
                              'Makhanya',
                              293352.0,
                              'Senior',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              24,
                              'Lesego',
                              'Bennett',
                              41083.0,
                              'Junior',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              25,
                              'Lizelle',
                              'Dhlamini',
                              64179.0,
                              'Junior',
                              3
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              26,
                              'Louise',
                              'Lourens',
                              158634.0,
                              'Mid-Level',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              27,
                              'Lynn',
                              'Mashaba',
                              115478.0,
                              'Junior',
                              2
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              28,
                              'Marco',
                              'Morris',
                              110506.0,
                              'Mid-Level',
                              6
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              29,
                              'Marthinus',
                              'Gordon',
                              106178.0,
                              'Mid-Level',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              30,
                              'Nadine',
                              'Morris',
                              326767.0,
                              'Senior',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              31,
                              'Nico',
                              'Mthembu',
                              97673.0,
                              'Senior',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              32,
                              'Patience',
                              'Willemse',
                              52053.0,
                              'Intern',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              33,
                              'Pearl',
                              'Stewart',
                              24289.0,
                              'Intern',
                              3
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              34,
                              'Precious',
                              'zungu',
                              264376.0,
                              'Senior',
                              3
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              35,
                              'Priscilla',
                              'Anderson',
                              262686.0,
                              'Senior',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              36,
                              'Siyabonga',
                              'Hanekom',
                              213477.0,
                              'Senior',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              37,
                              'Tony',
                              'Horn',
                              103397.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              38,
                              'Tumelo',
                              'Rikhotso',
                              144372.0,
                              'Mid-Level',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              39,
                              'Vuyokazi',
                              'barnes',
                              69220.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              40,
                              'Walter',
                              'Jansen',
                              35454.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              41,
                              'barend',
                              'Edwards',
                              13163.0,
                              'Intern',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              42,
                              'gugulethu',
                              'Maluleka',
                              181609.0,
                              'Junior',
                              1
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              43,
                              'kelly',
                              'Manuel',
                              47442.0,
                              'Intern',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              44,
                              'liezel',
                              'moyo',
                              106276.0,
                              'Mid-Level',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              45,
                              'marthinus',
                              'ngobeni',
                              354298.0,
                              'Senior',
                              5
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              46,
                              'nicole',
                              'Ebrahim',
                              180919.0,
                              'Senior',
                              2
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              47,
                              'phumzile',
                              'motsepe',
                              129627.0,
                              'Junior',
                              6
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              48,
                              'sello',
                              'Details',
                              54945.0,
                              'Graduate',
                              4
                          );

INSERT INTO Employees_2NF (
                              EmployeeID,
                              Name,
                              Surname,
                              Salary,
                              OccupationBand,
                              TitleID
                          )
                          VALUES (
                              49,
                              'takalani',
                              'Richards',
                              57906.0,
                              'Graduate',
                              4
                          );


-- Table: Employees_3NF
DROP TABLE IF EXISTS Employees_3NF;

CREATE TABLE IF NOT EXISTS Employees_3NF (
    EmployeeID INTEGER NOT NULL,
    Name       VARCHAR,
    Surname    VARCHAR,
    TitleID    INTEGER,
    SalaryID   INTEGER,
    FOREIGN KEY (
        TitleID
    )
    REFERENCES Titles_3NF (TitleID),
    FOREIGN KEY (
        SalaryID
    )
    REFERENCES Salaries_3NF (SalaryID),
    PRIMARY KEY (
        EmployeeID AUTOINCREMENT
    )
);

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              1,
                              'André',
                              'gerber',
                              1,
                              1
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              2,
                              'Antoinette',
                              'Van Der Berg',
                              2,
                              2
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              3,
                              'Bronwyn',
                              'Swartz',
                              3,
                              3
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              4,
                              'Christopher',
                              'Walker',
                              4,
                              4
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              5,
                              'Claire',
                              'Morris',
                              5,
                              5
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              6,
                              'Contact',
                              'Xaba',
                              2,
                              6
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              7,
                              'Danie',
                              'Campbell',
                              1,
                              7
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              8,
                              'Danie',
                              'davies',
                              2,
                              8
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              9,
                              'Dirk',
                              'Banda',
                              4,
                              9
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              10,
                              'Douglas',
                              'Sibanda',
                              4,
                              10
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              11,
                              'Dumisani',
                              'Thwala',
                              4,
                              11
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              12,
                              'Ernest',
                              'maritz',
                              4,
                              12
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              13,
                              'Ivan',
                              'Schoeman',
                              2,
                              13
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              14,
                              'Jabulani',
                              'Horn',
                              4,
                              14
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              15,
                              'Jacqueline',
                              'fredericks',
                              5,
                              15
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              16,
                              'Jan',
                              'Ngwenya',
                              4,
                              16
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              17,
                              'Janet',
                              'Patel',
                              5,
                              17
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              18,
                              'Janine',
                              'De Villiers',
                              1,
                              18
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              19,
                              'Jessica',
                              'Mchunu',
                              3,
                              19
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              20,
                              'Johan',
                              'du Plessis',
                              4,
                              20
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              21,
                              'Juan',
                              'Smit',
                              4,
                              21
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              22,
                              'Kevin',
                              'Motloung',
                              4,
                              22
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              23,
                              'Laura',
                              'Makhanya',
                              5,
                              23
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              24,
                              'Lesego',
                              'Bennett',
                              5,
                              24
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              25,
                              'Lizelle',
                              'Dhlamini',
                              3,
                              25
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              26,
                              'Louise',
                              'Lourens',
                              1,
                              26
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              27,
                              'Lynn',
                              'Mashaba',
                              2,
                              27
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              28,
                              'Marco',
                              'Morris',
                              6,
                              28
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              29,
                              'Marthinus',
                              'Gordon',
                              1,
                              29
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              30,
                              'Nadine',
                              'Morris',
                              1,
                              30
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              31,
                              'Nico',
                              'Mthembu',
                              4,
                              31
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              32,
                              'Patience',
                              'Willemse',
                              1,
                              32
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              33,
                              'Pearl',
                              'Stewart',
                              3,
                              33
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              34,
                              'Precious',
                              'zungu',
                              3,
                              34
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              35,
                              'Priscilla',
                              'Anderson',
                              5,
                              35
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              36,
                              'Siyabonga',
                              'Hanekom',
                              5,
                              36
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              37,
                              'Tony',
                              'Horn',
                              4,
                              37
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              38,
                              'Tumelo',
                              'Rikhotso',
                              4,
                              38
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              39,
                              'Vuyokazi',
                              'barnes',
                              4,
                              39
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              40,
                              'Walter',
                              'Jansen',
                              4,
                              40
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              41,
                              'barend',
                              'Edwards',
                              4,
                              41
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              42,
                              'gugulethu',
                              'Maluleka',
                              1,
                              42
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              43,
                              'kelly',
                              'Manuel',
                              5,
                              43
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              44,
                              'liezel',
                              'moyo',
                              5,
                              44
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              45,
                              'marthinus',
                              'ngobeni',
                              5,
                              45
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              46,
                              'nicole',
                              'Ebrahim',
                              2,
                              46
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              47,
                              'phumzile',
                              'motsepe',
                              6,
                              47
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              48,
                              'sello',
                              'Details',
                              4,
                              48
                          );

INSERT INTO Employees_3NF (
                              EmployeeID,
                              Name,
                              Surname,
                              TitleID,
                              SalaryID
                          )
                          VALUES (
                              49,
                              'takalani',
                              'Richards',
                              4,
                              49
                          );


-- Table: OccupationBands_3NF
DROP TABLE IF EXISTS OccupationBands_3NF;

CREATE TABLE IF NOT EXISTS OccupationBands_3NF (
    BandID         INTEGER NOT NULL,
    OccupationBand VARCHAR,
    PRIMARY KEY (
        BandID AUTOINCREMENT
    )
);

INSERT INTO OccupationBands_3NF (
                                    BandID,
                                    OccupationBand
                                )
                                VALUES (
                                    1,
                                    'Junior'
                                );

INSERT INTO OccupationBands_3NF (
                                    BandID,
                                    OccupationBand
                                )
                                VALUES (
                                    2,
                                    'Graduate'
                                );

INSERT INTO OccupationBands_3NF (
                                    BandID,
                                    OccupationBand
                                )
                                VALUES (
                                    3,
                                    'Intern'
                                );

INSERT INTO OccupationBands_3NF (
                                    BandID,
                                    OccupationBand
                                )
                                VALUES (
                                    4,
                                    'Mid-Level'
                                );

INSERT INTO OccupationBands_3NF (
                                    BandID,
                                    OccupationBand
                                )
                                VALUES (
                                    5,
                                    'Senior'
                                );


-- Table: Roles_2NF
DROP TABLE IF EXISTS Roles_2NF;

CREATE TABLE IF NOT EXISTS Roles_2NF (
    RoleID INTEGER NOT NULL,
    Role   VARCHAR,
    PRIMARY KEY (
        RoleID AUTOINCREMENT
    )
);

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          1,
                          'Front-End Developer'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          2,
                          'UI/UX Developer'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          3,
                          'Back-End Developer'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          4,
                          'Full-Stack Developer'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          5,
                          'Business Analyst'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          6,
                          'Database Analyst'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          7,
                          'Systems Analyst'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          8,
                          'Scrum Master'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          9,
                          'Team Lead'
                      );

INSERT INTO Roles_2NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          10,
                          'Project Manager'
                      );


-- Table: Roles_3NF
DROP TABLE IF EXISTS Roles_3NF;

CREATE TABLE IF NOT EXISTS Roles_3NF (
    RoleID INT,
    Role   TEXT
);

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          1,
                          'Front-End Developer'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          2,
                          'UI/UX Developer'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          3,
                          'Back-End Developer'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          4,
                          'Full-Stack Developer'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          5,
                          'Business Analyst'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          6,
                          'Database Analyst'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          7,
                          'Systems Analyst'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          8,
                          'Scrum Master'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          9,
                          'Team Lead'
                      );

INSERT INTO Roles_3NF (
                          RoleID,
                          Role
                      )
                      VALUES (
                          10,
                          'Project Manager'
                      );


-- Table: Salaries_3NF
DROP TABLE IF EXISTS Salaries_3NF;

CREATE TABLE IF NOT EXISTS Salaries_3NF (
    SalaryID INTEGER NOT NULL,
    Salary   REAL,
    BandID   INTEGER,
    FOREIGN KEY (
        BandID
    )
    REFERENCES OccupationBands (BandID),
    PRIMARY KEY (
        SalaryID AUTOINCREMENT
    )
);

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             1,
                             52357.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             2,
                             118731.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             3,
                             34350.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             4,
                             122894.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             5,
                             36000.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             6,
                             85836.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             7,
                             205621.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             8,
                             313491.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             9,
                             37601.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             10,
                             57353.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             11,
                             52171.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             12,
                             88569.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             13,
                             167439.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             14,
                             55725.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             15,
                             51104.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             16,
                             38959.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             17,
                             39081.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             18,
                             32886.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             19,
                             70741.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             20,
                             235178.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             21,
                             308542.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             22,
                             99370.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             23,
                             293352.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             24,
                             41083.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             25,
                             64179.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             26,
                             158634.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             27,
                             115478.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             28,
                             110506.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             29,
                             106178.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             30,
                             326767.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             31,
                             97673.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             32,
                             52053.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             33,
                             24289.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             34,
                             264376.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             35,
                             262686.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             36,
                             213477.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             37,
                             103397.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             38,
                             144372.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             39,
                             69220.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             40,
                             35454.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             41,
                             13163.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             42,
                             181609.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             43,
                             47442.0,
                             3
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             44,
                             106276.0,
                             4
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             45,
                             354298.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             46,
                             180919.0,
                             5
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             47,
                             129627.0,
                             1
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             48,
                             54945.0,
                             2
                         );

INSERT INTO Salaries_3NF (
                             SalaryID,
                             Salary,
                             BandID
                         )
                         VALUES (
                             49,
                             57906.0,
                             2
                         );


-- Table: Titles_2NF
DROP TABLE IF EXISTS Titles_2NF;

CREATE TABLE IF NOT EXISTS Titles_2NF (
    TitleID INTEGER NOT NULL,
    Title   VARCHAR,
    PRIMARY KEY (
        TitleID AUTOINCREMENT
    )
);

INSERT INTO Titles_2NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           1,
                           'Mrs'
                       );

INSERT INTO Titles_2NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           2,
                           'Dr'
                       );

INSERT INTO Titles_2NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           3,
                           'Miss'
                       );

INSERT INTO Titles_2NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           4,
                           'Mr'
                       );

INSERT INTO Titles_2NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           5,
                           'Ms'
                       );

INSERT INTO Titles_2NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           6,
                           'Prof'
                       );


-- Table: Titles_3NF
DROP TABLE IF EXISTS Titles_3NF;

CREATE TABLE IF NOT EXISTS Titles_3NF (
    TitleID INT,
    Title   TEXT
);

INSERT INTO Titles_3NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           1,
                           'Mrs'
                       );

INSERT INTO Titles_3NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           2,
                           'Dr'
                       );

INSERT INTO Titles_3NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           3,
                           'Miss'
                       );

INSERT INTO Titles_3NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           4,
                           'Mr'
                       );

INSERT INTO Titles_3NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           5,
                           'Ms'
                       );

INSERT INTO Titles_3NF (
                           TitleID,
                           Title
                       )
                       VALUES (
                           6,
                           'Prof'
                       );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
