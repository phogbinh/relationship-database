DELIMITER //

CREATE TRIGGER trigger_update_id
BEFORE UPDATE ON relationship.person
FOR EACH ROW
BEGIN
  IF NEW.id <> OLD.id THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'It is invalid to update a person''s database ID';
  END IF;
END//

DELIMITER ;