Write a function that takes as input a conference name and a week number and returns the maximum number of points scored by the home team in a conference game in that week.

conf_name
week_number

str1 = """SELECT G.home_points AS newHomePoints FROM Games AS G, Conferences AS C, Teams AS T, Stadiums AS S, Rosters AS R WHERE C.name ="""
str2 = "'"
str3=conf_name
str4 = """AND C.conf_id=T.conf_id AND T.team_id=G.home_team_id AND G.conference_game=1 AND G.week="""
str5=str(week_number)
sqlTest=str1+str2+str3+str2+str4+str2+str5+str2



SELECT G.home_points AS newHomePoints FROM Games AS G, Conferences AS C, Teams AS T WHERE C.name='ACC' AND G.week=1 AND C.conf_id=T.conf_id AND T.team_id=G.home_team_id

SELECT max(newHomePoints) FROM (SELECT G.home_points AS newHomePoints FROM Games AS G, Conferences AS C, Teams AS T WHERE C.name='ACC' AND G.week=1 AND C.conf_id=T.conf_id AND T.team_id=G.home_team_id)




Write a function that determines the most points scored by one team in the first week of the season where one of the teams is in the conference name parameter. The function should return the a tuple of information: the home team's points, the home team's school name, the away team's points, and the away team's school name. Since multiple games could have the most points scored, the function should return an array of tuples that has the information of all games that had the most points scored by one team.

conf_name

str1 = """SELECT  """