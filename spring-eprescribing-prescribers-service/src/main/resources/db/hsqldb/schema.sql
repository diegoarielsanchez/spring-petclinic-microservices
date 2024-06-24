DROP TABLE prescriber_specialties IF EXISTS;
DROP TABLE prescribers IF EXISTS;
DROP TABLE specialties IF EXISTS;

CREATE TABLE prescribers (
  id         INTEGER IDENTITY PRIMARY KEY,
  first_name VARCHAR(30),
  last_name  VARCHAR(30)
);
CREATE INDEX prescribers_last_name ON prescribers (last_name);

CREATE TABLE specialties (
  id   INTEGER IDENTITY PRIMARY KEY,
  name VARCHAR(80)
);
CREATE INDEX specialties_name ON specialties (name);

CREATE TABLE prescriber_specialties (
  prescriber_id       INTEGER NOT NULL,
  specialty_id INTEGER NOT NULL
);
ALTER TABLE prescriber_specialties ADD CONSTRAINT fk_prescriber_specialties_prescribers FOREIGN KEY (prescriber_id) REFERENCES prescribers (id);
ALTER TABLE prescriber_specialties ADD CONSTRAINT fk_prescriber_specialties_specialties FOREIGN KEY (specialty_id) REFERENCES specialties (id);
