INSERT INTO departments (deptName)
    VALUES
        ("Customer Service"), 
        ("Reception"),
        ("Sales"),
        ("Accounting"),
        ("Quality Assurance"),
        ("Management"),
        ("Warehouse");

INSERT INTO roles (jobTitle, salary, deptID)
    VALUES
        ("Customer Service Agent", 40000, 1),
        ("Receptionist", 35000, 2),
        ("Salesman", 50000, 3),
        ("Lead Accountant", 45000, 4),
        ("Junior Accountant", 35000, 4), 
        ("Quality Manager", 45000, 5),
        ("Regional Manager", 55000, 6),
        ("Assistant Regional Manager", 50000, 6),
        ("Warehouse Worker", 35000, 7);

INSERT INTO employees (firstName, lastName, managerID, deptID, roleID) 
    VALUES 
        ("Kelly", "Kapoor", 11, 1, 1), 
        ("Pam", "Beasley", 11, 2, 2),
        ("Jim", "Halpert", 11, 3, 3),
        ("Phylis", "Vance", 11, 3, 3),
        ("Stanley", "Hudson", 11, 3, 3),
        ("Andy", "Bernard", 11, 3, 3),
        ("Angela", "Martin", 11, 4, 4),
        ("Kevin", "Malone", 11, 4, 5),
        ("Oscar", "Martinez", 11, 4, 5),
        ("Creed", "Bratton", 11, 5, 6),
        ("Michael", "Scott", 3, 6, 7),
        ("Dwight", "Schrute", 11, 6, 8),
        ("Daryl", "Philbin", 11, 7, 9);