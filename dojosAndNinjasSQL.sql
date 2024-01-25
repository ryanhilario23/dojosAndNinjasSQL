/*
        
CREATE TABLE dojos
(
  id         INT          NOT NULL     AUTO_INCREMENT,
  name       VARCHAR(255) NULL    ,
  created_at timestamp    NULL    ,
  updated_at timestamp    NULL    ,
  PRIMARY KEY (id)
);

CREATE TABLE ninjas
(
  id         INT          NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NULL    ,
  last_name  VARCHAR(255) NULL    ,
  age        INT          NULL    ,
  updated_at timestamp    NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  created_at timestamp    NULL     DEFAULT CURRENT_TIMESTAMP,
  dojo_id    INT          NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE ninjas
  ADD CONSTRAINT FK_dojos_TO_ninjas
    FOREIGN KEY (dojo_id)
    REFERENCES dojos (id);

INSERT dojos (name, created_at, updated_at)
VALUES       ('North', NOW(), NOW()),
('South', NOW(),NOW()),
('West',NOW(), NOW());
SELECT *
FROM dojos;

DELETE FROM dojos;
SELECT *
FROM dojos;

INSERT dojos (name, created_at, updated_at)
VALUES ('San Jose', NOW(), NOW()),
('Chicago', NOW(),NOW()),
('New York', NOW(), NOW());


INSERT ninjas (first_name, last_name, age, created_at, updated_at, dojo_id)
VALUES ('Tadasha','Hamada',22 , NOW(), NOW(), 4),
('Ryan','Hilario', 26, NOW(), NOW(),4),
('Fuuka','Yamagishi', 17, NOW(),NOW(),4);

INSERT ninjas (first_name, last_name, age, created_at, updated_at, dojo_id)
VALUES ('Hiro', 'Hamada', 14, NOW(), NOW(), 5),
('Jake', 'Ikuze', 24, NOW(), NOW(), 5),
('Futaba','Sakura',17, NOW(), NOW(), 5);

INSERT ninjas (first_name, last_name, age, created_at, updated_at, dojo_id)
VALUES ('Baymax', 'N/A', 1, NOW(), NOW(),6),
('Jose','Carino', 15, NOW(),NOW(),6),
('Rise','Kujikawa', 17, NOW(), NOW(),6);

SELECT *
FROM ninjas
WHERE dojo_id =4;

SELECT *
FROM ninjas
WHERE dojo_id =5;
SELECT *
FROM dojos
WHERE id =6;

SELECT *
FROM dojos
LEFT JOIN ninjas
ON dojos.id = ninjas.dojo_id
WHERE ninjas.id = 28;

*/
Select *
From ninjas
LEFT JOIN dojos
on ninjas.dojo_id = dojos.id