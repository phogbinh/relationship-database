CREATE TRIGGER trigger_update_id
BEFORE UPDATE ON relationship.person
FOR EACH ROW
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'It is invalid to update a person''s database ID.';
