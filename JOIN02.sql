# FULL JOIN
# IT IS COMBINATION OF LEFT JOIN AND RIGHT JOIN
# RETURNS ALL THE RECORDS AVAIALBLE IN BOTH TABLES
# IN MY-SQL WE CANT USE FULL JOIN/ OUTER JOIN...WE WILL HAVE TO USE  UNION 

SELECT * FROM CUSTOMER_TB; #LEFT TABLE
SELECT * FROM ORDER_TB;  #RIGHT TABLE

SELECT A.NAME, A.ADDRESS, B.OID, B.DATE FROM
CUSTOMER_TB A LEFT JOIN ORDER_TB B
ON A.ID = B.C_ID                              # LEFT JOIN
UNION
SELECT A.NAME, A.ADDRESS, B.OID, B.DATE FROM
CUSTOMER_TB A RIGHT JOIN ORDER_TB B
ON A.ID = B.C_ID;                             # RIGHT JOIN

# THE OUTPUT OF THIS WILL GIVE EXPECTED OUTPUT FOR FULL/OUTER JOIN


# CROSS JOIN (CARTESIAN JOIN)
# CROSS JOIN RETURNS CARTESIAN PRODUCT OF TWO TABLES. ( IT COMBINES EVERY ROW OF LEFT TABLE WITH RIGHT TABLE

SELECT A.NAME , A.ADDRESS, B.OID, B.DATE FROM
CUSTOMER_TB A JOIN ORDER_TB B;                    # NO NULLS ADDED

# USE CASES : TO GET ALL POSSIBLE OUTCOMES IN PAIRINGS


# SELF JOIN:

# SELF JOIN : IT IS USED TO JOIN TABLE WITH ITSELF
# IT IS USED FOR COMPARING ROWS WITHIN SAME TABLE

# If an Employees table has EmployeeID and ManagerID (which refers back to another EmployeeID), 
#  a self join can retrieve each employee's name along with their manager's name:
 
#  SELECT 
#    e.Name AS Employee, 
#    m.Name AS Manager
# FROM Employees e
#  LEFT JOIN Employees m 
#    ON e.ManagerID = m.EmployeeID;

# The LEFT JOIN ensures employees with no manager (like a CEO) still appear in the results with a NULL manager name.
##################################################################################################################################################

