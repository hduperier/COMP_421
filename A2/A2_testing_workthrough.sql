Write a SQL query that returns the school name, stadium name, and stadium capacity for the school in the ACC with the largest capacity football stadium?

testing = """ """


SELECT T.school_name AS newSchoolName, S.name AS newStadiumName, S.capacity AS newStadiumCapacity, C.name AS newConfName FROM Teams AS T, Stadiums AS S, Conferences AS C WHERE C.name='ACC' AND C.conf_id=T.conf_id AND T.team_id=S.team_id

SELECT newSchoolName, newStadiumName, max(newStadiumCapacity) FROM (SELECT T.school_name AS newSchoolName, S.name AS newStadiumName, S.capacity AS newStadiumCapacity, C.name AS newConfName FROM Teams AS T, Stadiums AS S, Conferences AS C WHERE C.name='ACC' AND C.conf_id=T.conf_id AND T.team_id=S.team_id)


The function will return a single string with the full name of the football player from that school with the lowest, non-null jersey number. If multiple players have the same jersey number, return the full name of the player with that jersey number that has a last name that appears last alphabetically.

SELECT R.first_name AS newFirstName, R.last_name AS newLastName, R.jersey_number AS newJerseyNum FROM Rosters AS R, Teams AS T WHERE T.school_name=""" + school_name + """ AND T.team_id=R.team_id ORDER BY R.last_name DESC

str1="""SELECT newFirstName, newLastName, min(newJerseyNum) FROM (SELECT R.first_name AS newFirstName, R.last_name AS newLastName, R.jersey_number AS newJerseyNum FROM Rosters AS R, Teams AS T WHERE T.school_name="""
str2=school_name
str3=""" AND T.team_id=R.team_id ORDER BY R.last_name DESC)"""
sqlTest=str1+str2+str3
SELECT newFirstName, newLastName, min(newJerseyNum) FROM (SELECT R.first_name AS newFirstName, R.last_name AS newLastName, R.jersey_number AS newJerseyNum FROM Rosters AS R, Teams AS T WHERE T.school_name=""" + school_name + """ AND T.team_id=R.team_id ORDER BY R.last_name DESC)

school_name = 'North Carolina'