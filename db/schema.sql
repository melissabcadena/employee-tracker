DROP DATABASE IF EXISTS employeeTracker;
CREATE DATABASE employeeTracker;
USE employeeTracker;

CREATE TABLE departments(
    deptName VARCHAR(30) NOT NULL,
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    jobTitle VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    deptID INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (deptID) REFERENCES departments(id)
);

CREATE TABLE employees (
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    PRIMARY KEY (id),
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    managerID INTEGER(11),
    -- FOREIGN KEY (managerID) REFERENCES employees(id) ON DELETE SET NULL,
    deptID INTEGER(11) NOT NULL, 
    FOREIGN KEY (deptID) REFERENCES departments(id),
    roleID INTEGER(11) NOT NULL,
    FOREIGN KEY (roleID) REFERENCES roles(id) 
);