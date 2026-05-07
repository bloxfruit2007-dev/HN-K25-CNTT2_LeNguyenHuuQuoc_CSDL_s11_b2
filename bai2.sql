DELIMITER //

CREATE PROCEDURE AddInventory(IN p_item_id INT, IN p_quantity INT)
BEGIN
	UPDATE Inventory
	SET stock_quantity = stock_quantity + p_quantity
	WHERE item_id = p_item_id;
END //

DELIMITER ;

CALL AddInventory(10, -1000);
DROP PROCEDURE IF EXISTS AddInventory;

DELIMITER //

CREATE PROCEDURE AddInventory(IN p_item_id INT, IN p_quantity INT)
BEGIN
	IF p_quantity > 0 THEN 
	UPDATE Inventory
	SET stock_quantity = stock_quantity + p_quantity
	WHERE item_id = p_item_id;
    END IF;
END //

DELIMITER ;

