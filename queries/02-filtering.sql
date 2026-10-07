-- SQL Testing Portfolio
-- Filtrowanie i sortowanie danych

-- QA-013: Użytkownicy, których nazwisko zaczyna się na K
SELECT *
FROM users
WHERE last_name LIKE 'K%';

-- QA-014: Użytkownicy, których imię kończy się na a
SELECT *
FROM users
WHERE first_name LIKE '%a';

-- QA-015: Użytkownicy, których e-mail zawiera "example"
SELECT *
FROM users
WHERE email LIKE '%example%';

-- QA-016: Użytkownicy z wybranych miast
SELECT *
FROM users
WHERE city IN ('Poznań', 'Szczecin', 'Gdańsk');

-- QA-017: Użytkownicy spoza Poznania i Warszawy
SELECT *
FROM users
WHERE city NOT IN ('Poznań', 'Warszawa');

-- QA-018: Użytkownicy utworzeni w określonym przedziale dat
SELECT *
FROM users
WHERE created_at BETWEEN '2026-03-01' AND '2026-05-31';

-- QA-019: Użytkownicy bez podanego miasta
SELECT *
FROM users
WHERE city IS NULL;

-- QA-020: Użytkownicy z podanym miastem
SELECT *
FROM users
WHERE city IS NOT NULL;

-- QA-021: Użytkownicy o statusie innym niż blocked z wybranych miast
SELECT *
FROM users
WHERE status != 'blocked'
AND city IN ('Poznań', 'Szczecin', 'Gdańsk');

-- QA-022: Sortowanie użytkowników po nazwisku od Z do A
SELECT *
FROM users
ORDER BY last_name DESC;

-- QA-023: Aktywni użytkownicy od najnowszego konta
SELECT *
FROM users
WHERE status = 'active'
ORDER BY created_at DESC;