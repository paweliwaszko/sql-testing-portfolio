-- SQL Testing Portfolio
-- Podstawowe zapytania SQL


-- QA-001: Wyświetlenie wszystkich użytkowników
SELECT *
FROM users;


-- QA-002: Wyświetlenie aktywnych użytkowników
SELECT *
FROM users
WHERE status = 'active';


-- QA-003: Wyświetlenie aktywnych użytkowników z Poznania
SELECT *
FROM users
WHERE status = 'active'
AND city = 'Poznań';


-- QA-004: Wyświetlenie użytkowników z Poznania lub Warszawy
SELECT *
FROM users
WHERE city = 'Poznań'
OR city = 'Warszawa';


-- QA-005: Wyświetlenie aktywnych użytkowników z Poznania lub Warszawy
SELECT *
FROM users
WHERE status = 'active'
AND (city = 'Poznań' OR city = 'Warszawa');


-- QA-006: Sortowanie użytkowników od najnowszego konta
SELECT *
FROM users
ORDER BY created_at DESC;


-- QA-007: Wyświetlenie imienia, nazwiska i adresu e-mail
SELECT first_name, last_name, email
FROM users;


-- QA-008: Wyświetlenie danych aktywnych użytkowników
SELECT first_name, last_name, email
FROM users
WHERE status = 'active';


-- QA-009: Wyświetlenie unikalnych miast
SELECT DISTINCT city
FROM users;


-- QA-010: Liczba wszystkich użytkowników
SELECT COUNT(*)
FROM users;


-- QA-011: Liczba aktywnych użytkowników
SELECT COUNT(*)
FROM users
WHERE status = 'active';


-- QA-012: Liczba użytkowników z Poznania
SELECT COUNT(*)
FROM users
WHERE city = 'Poznań';