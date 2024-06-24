INSERT IGNORE INTO prescribers VALUES (1, 'Jaime', 'Bargas');
INSERT IGNORE INTO prescribers VALUES (2, 'Elena', 'Descalzo');
INSERT IGNORE INTO prescribers VALUES (3, 'Sandra', 'Vivas');
INSERT IGNORE INTO prescribers VALUES (4, 'Rafael', 'Ortega');
INSERT IGNORE INTO prescribers VALUES (5, 'Enrique', 'Cuerdas');
INSERT IGNORE INTO prescribers VALUES (6, 'Susana', 'Motorizaa');

INSERT IGNORE INTO specialties VALUES (1, 'radiology');
INSERT IGNORE INTO specialties VALUES (2, 'surgery');
INSERT IGNORE INTO specialties VALUES (3, 'dentistry');

INSERT IGNORE INTO prescriber_specialties VALUES (2, 1);
INSERT IGNORE INTO prescriber_specialties VALUES (3, 2);
INSERT IGNORE INTO prescriber_specialties VALUES (3, 3);
INSERT IGNORE INTO prescriber_specialties VALUES (4, 2);
INSERT IGNORE INTO prescriber_specialties VALUES (5, 1);
