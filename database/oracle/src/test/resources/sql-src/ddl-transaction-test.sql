CREATE TABLE TRX_TEST(ID INTEGER, VAL VARCHAR(20))
/
CREATE TABLE TRX_TEST_AUTO_GEN_KEY(ID INTEGER, VAL VARCHAR(20), AUTOGEN VARCHAR(20))
/
CREATE SEQUENCE UPDATE_GENERATED_KEYS_SEQ1
/
CREATE OR REPLACE TRIGGER TG_TRX_TEST_AUTO_GEN_KEY
BEFORE INSERT ON TRX_TEST_AUTO_GEN_KEY FOR EACH ROW
BEGIN
  SELECT CONCAT('id', UPDATE_GENERATED_KEYS_SEQ1.NEXTVAL)
  INTO :NEW.AUTOGEN
  FROM DUAL;
END;
/
