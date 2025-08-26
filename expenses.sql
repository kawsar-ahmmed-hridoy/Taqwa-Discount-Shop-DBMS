CREATE TABLE expenses (
    expenseID INT AUTO_INCREMENT PRIMARY KEY,
    categoryID INT,
    amount DECIMAL(10,2) NOT NULL,
    expenseDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    paymentMethodID INT,
    FOREIGN KEY (categoryID) REFERENCES Categories(categoryID),
    FOREIGN KEY (paymentMethodID) REFERENCES paymentMethods(methodID)
);
