-- Renaming the column
ALTER TABLE crime_data
RENAME COLUMN "State" TO State_Name

ALTER TABLE minimum_wage
RENAME COLUMN "State" TO State_Name

update crime_data
   set State_Name = upper(State_Name);
   
update minimum_wage
   set State_Name = upper(State_Name);

-- Joins tables
SELECT *
FROM crime_data 
LEFT JOIN minimum_wage
ON crime_data.State_Name = minimum_wage.State_Name
;

