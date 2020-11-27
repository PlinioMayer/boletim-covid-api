SELECT
	states.name as name,
	(select count(*) from people where people.city_id = cities.id) as confirmed,
	(select count(*) from people where people.city_id = cities.id and people.case_id = 1) as recovered,
	(select count(*) from people where people.city_id = cities.id and people.case_id = 3) as active,
	(select count(*) from people where people.city_id = cities.id and people.case_id = 2) as death,
	(select count(*) from people where people.city_id = cities.id and people.gender = 'Masculino') as men_cases,
	(select count(*) from people where people.city_id = cities.id and people.gender = 'Feminino') as women_cases
FROM states INNER JOIN cities
on cities.state_id = states.id;