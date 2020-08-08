DROP DATABASE IF EXISTS employees
CREATE DATABASE employees
USE employees

CREATE TABLE departments(
    deptName VARCHAR(30),
    PRIMARY KEY (id)
);
