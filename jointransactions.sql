--JOIN
USE supermarket;

-- 1.INNER JOIN
SELECT companyId, companyName,material,market FROM company INNER JOIN information ON company.companyName=information.brand;

-- 2.LEFT JOIN
SELECT * FROM company LEFT JOIN information ON company.companyName=information.brand;
SELECT companyId, companyName,material,market FROM company LEFT JOIN information 
                                              ON company.companyName=information.brand 
                                              WHERE company.companyId < information.id 
                                              ORDER BY company.companyId;

-- 3.RIGHT JOIN
SELECT companyId, companyName,material,market FROM company RIGHT JOIN information ON company.companyName=information.brand ORDER BY companyName DESC;

-- 4.FULL JOIN
SELECT companyName,material,market FROM company FULL JOIN information ON company.companyName=information.brand ORDER BY material ASC;

-- 5.CROSS JOIN
SELECT * FROM company,information;
