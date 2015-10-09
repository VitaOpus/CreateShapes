-- v1 Если я правильно понял суть задачи
SELECT * FROM data GROUP BY type ORDER BY date ASC;

-- v2 Скорее всего так
SELECT * FROM ( SELECT * FROM data ORDER BY date DESC ) oder_date GROUP BY type ORDER BY date DESC