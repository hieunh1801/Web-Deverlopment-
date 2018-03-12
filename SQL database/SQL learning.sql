-- Hướng dẫn sử dụng Database dùng câu lệnh truy vấn


-- Trong sql chữ hoa và chữ thường là giống nhau. Kể cả câu lệnh và tên
-- sau mỗi câu lệnh tùy vào loại ngôn ngữ mà phải có dấu chấm phẩy

----------USE database----------
USE DB_name;
GO -- sử dụng mỗi khi làm xong một công việc để phân tách chương trình


----------Câu lệnh Selection----------
-- chọn column từ table
SELECT column1, column2 FROM table_name; 
-- chọn tất cả column từ table
SELECT * FROM table_name; 
-- chỉ chọn 1 cột và xem các thuộc tính khác nhau của cột đó. 
-- VD nhiều người ở 1 quốc gia thì chỉ hiện 1 quốc gia
SELECT DISTINCT column FROM table_name;


----------Câu lệnh WHERE----------
--Sử dụng để lọc và tìm kiếm các cột theo điều kiện nào đó
--Note: The WHERE clause is not only used in SELECT statement
-- it is also used in UPDATE, DELETE statement, etc.!
-- reusult : trả về các hàng có chứa thông tin đó 
SELECT * FROM table_name WHERE column_name='điều kiện';
SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';
SELECT * FROM Customers WHERE City='Berlin' OR City='München';
SELECT * FROM Customers WHERE NOT Country='Germany';
SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');
SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';

----------Order by----------
-- Sử dụng để sắp xếp kết quả theo chiều tăng (mặc định) hoặc giảm dần (DESC)
SELECT * FROM Customers ORDER BY Country; 
-- Xếp tăng dần
SELECT * FROM Customers ORDER BY Country DESC;
-- Giảm dần
SELECT * FROM Customers ORDER BY Country, CustomerName;
 -- country tăng dần, trong 1 country tên tăng dần
 -- chú ý thứ tự trước và sau. Nếu name trước country thì theo tên rồi đất nước
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;
-- chú ý : ASC tăng dần DESC giảm dần


----------Insert into----------
-- Cách 1 :
INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
-- Cách 2:
INSERT INTO table_name VALUES (value1, value2, value3, ...);
-- Chỉ cần thêm các thông tin cần có . Không nhất thiết phải thêm hết. Các ô trống mặc định là NULL
