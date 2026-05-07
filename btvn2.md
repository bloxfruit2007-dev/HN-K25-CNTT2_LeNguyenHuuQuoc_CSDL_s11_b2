Lệnh tái hiện thao tác gõ nhầm: CALL AddInventory(10, -500);

Giải thích nguyên nhân lỗi: Lệnh UPDATE hiện tại đang thực hiện phép toán stock_quantity = stock_quantity + p_quantity. Khi tham số p_quantity bị truyền vào là một số âm (ví dụ: -500), toán tử cộng với số âm sẽ biến thành phép trừ. Hậu quả là Database trừ thẳng lượng tồn kho hiện tại xuống.