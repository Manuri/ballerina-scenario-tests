CREATE TABLE SELECT_UPDATE_TEST_INTEGER_TYPES
(
    ID INT,
    SMALLINT_VAL SMALLINT,
    BIGINT_VAL BIGINT,
    TINYINT_VAL TINYINT,
    BIT_VAL BIT,
    INTEGER_VAL INT
);
/
CREATE TABLE SELECT_UPDATE_TEST_FIXED_POINT_TYPES
(
    ID INT,
    DECIMAL_VAL DECIMAL(4,2),
    NUMERIC_VAL NUMERIC(4,3),
    MONEY_VAL MONEY,
    SMALLMONEY_VAL SMALLMONEY
);
/
CREATE TABLE SELECT_UPDATE_TEST_FLOAT_TYPES
(
    ID INT,
    FLOAT_VAL FLOAT(8),
    REAL_VAL REAL
);
/
CREATE TABLE SELECT_UPDATE_TEST_STRING_TYPES
(
    ID INT,
    CHAR_VAL CHAR(4),
    VARCHAR_VAL VARCHAR(20),
    TEXT_VAL TEXT,
    NCHAR_VAL NCHAR(2),
    NVARCHAR_VAL NVARCHAR(10),
    NTEXT_VAL NTEXT
);
/
CREATE TABLE SELECT_UPDATE_TEST_COMPLEX_TYPES
(
    ID INT,
    BINARY_VAL BINARY(100),
    VARBINARY_VAL VARBINARY(100),
    IMAGE_VAL IMAGE,
);
/
CREATE TABLE SELECT_UPDATE_TEST_DATETIME_TYPES
(
    ID INT,
    DATE_VAL DATE,
    DATETIMEOFFSET_VAL DATETIMEOFFSET(7),
    DATETIME_VAL DATETIME,
    DATETIME2_VAL DATETIME2(7),
    SMALLDATETIME_VAL SMALLDATETIME,
    TIME_VAL TIME(7)
);
/
CREATE TABLE UPDATE_TEST_GENERATED_KEYS
(
    ID INT PRIMARY KEY IDENTITY (1, 1),
    COL1  VARCHAR(20),
    COL2  INT
);
