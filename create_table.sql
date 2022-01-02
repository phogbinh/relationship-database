CREATE TABLE relationship.person(id               BIGINT          NOT NULL    AUTO_INCREMENT,
                                 nickname         VARCHAR(255)    NOT NULL,
                                 first_name       VARCHAR(255),
                                 middle_name      VARCHAR(255),
                                 last_name        VARCHAR(255),
                                 phone_country    VARCHAR(255),
                                 phone_area       VARCHAR(255),
                                 phone_number     VARCHAR(255),
                                 email            VARCHAR(255),
                                 birthdate        DATE,
                                 description      MEDIUMTEXT,
                                 PRIMARY KEY(id));

CREATE TABLE relationship.tag(tag    VARCHAR(255)    NOT NULL,
                              PRIMARY KEY(tag));

CREATE TABLE relationship.has_tag(person_id    BIGINT          NOT NULL,
                                  tag          VARCHAR(255)    NOT NULL,
                                  PRIMARY KEY(person_id, tag),
                                  FOREIGN KEY(person_id) REFERENCES relationship.person(id)    ON DELETE CASCADE,
                                  FOREIGN KEY(tag)       REFERENCES relationship.tag(tag)      ON DELETE CASCADE    ON UPDATE CASCADE);
