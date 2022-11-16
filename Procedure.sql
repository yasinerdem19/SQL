CREATE PROCEDURE SelectAll
AS
SELECT * FROM PETSALE
GO;


exec SelectAll
exec SelectAll_2 @Animal='elma'
exec SelectAll_3 @Animal='cat', @Saleprice=450.09
exec SelectAll_3 ('cat', 450.09)




CREATE PROCEDURE SelectAll_2 @Animal nvarchar(20)
AS
SELECT * FROM PETSALE
GO;


--with 2 variables
CREATE PROCEDURE SelectAll_3 @Animal nvarchar(20), @SalePrice decimal(6,2)
AS
SELECT * FROM PETSALE WHERE ANIMAL = @Animal AND SALEPRICE = @SalePrice 
GO;--second go may not be neccessary


CREATE PROCEDURE view_details
AS
BEGIN 
  SELECT * FROM PETSALE;
END

CREATE PROCEDURE view_details_2
AS
BEGIN 
  SELECT top 3 * FROM PETSALE;
END


