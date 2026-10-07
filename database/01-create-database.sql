-- SQL Testing Portfolio
-- Utworzenie przykładowej bazy danych do ćwiczeń QA

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL,
    city TEXT,
    status TEXT NOT NULL,
    created_at DATE NOT NULL
);

-- Dane testowe

INSERT INTO users (user_id, first_name, last_name, email, city, status, created_at)
VALUES
(1, 'Anna', 'Kowalska', 'anna.kowalska@example.com', 'Poznań', 'active', '2026-01-10'),
(2, 'Piotr', 'Nowak', 'piotr.nowak@example.com', 'Warszawa', 'active', '2026-02-15'),
(3, 'Marta', 'Wiśniewska', 'marta.w@example.com', 'Szczecin', 'inactive', '2026-03-02'),
(4, 'Tomasz', 'Lewandowski', 'tomasz.l@example.com', 'Wrocław', 'active', '2026-04-18'),
(5, 'Karolina', 'Wójcik', 'karolina.w@example.com', 'Poznań', 'active', '2026-05-11'),
(6, 'Adam', 'Kamiński', 'adam.k@example.com', 'Gdańsk', 'blocked', '2026-06-20');