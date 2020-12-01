CREATE PROCEDURE create_user_with_risk_group(cpf varchar, name varchar, gender varchar, race varchar, birthdate date, city_id bigint, case_id bigint, risk_group_id bigint)
LANGUAGE SQL
AS $$
INSERT INTO people(cpf, name, gender, race, birthdate, city_id, case_id, created_at, updated_at) VALUES (cpf, name, gender, race, birthdate, city_id, case_id, now(), now());
INSERT INTO people_risk_groups (person_id, risk_group_id, created_at, updated_at) VALUES ((SELECT id FROM people ORDER BY id DESC LIMIT 1), risk_group_id, now(), now());
$$;