--JOIN
USE supermarket;
SELECT companyId, companyName,material,market FROM company INNER JOIN information ON company.companyName=information.brand;
