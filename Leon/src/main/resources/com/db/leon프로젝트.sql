/* ���̺� ���� */

--1. ȸ������ ���̺�
CREATE TABLE MEMBER_TBL(
   MEM_ID                 VARCHAR2(15)            CONSTRAINT PK_MEMBER_ID PRIMARY KEY,
   MEM_NAME               VARCHAR2(30)            NOT NULL,
   MEM_PW                 CHAR(60)                NOT NULL,
   MEM_EMAIL              VARCHAR2(50)            NOT NULL,
   MEM_ZIPCODE            CHAR(5)                 NOT NULL,
   MEM_ADDR               VARCHAR2(100)           NOT NULL,
   MEM_ADDR_D             VARCHAR2(100)           NOT NULL,
   MEM_PHONE              VARCHAR2(15)            NOT NULL,
   MEM_NICK               VARCHAR2(20)            NOT NULL UNIQUE,
   MEM_ACCEPT_E           CHAR(1)  DEFAULT 'Y'    NOT NULL,
   MEM_POINT              NUMBER DEFAULT 0        NOT NULL,
   MEM_DATE_SUB           DATE  DEFAULT SYSDATE   NOT NULL,
   MEM_DATE_UP            DATE  DEFAULT SYSDATE   NOT NULL,  
   MEM_DATE_LAST          DATE  DEFAULT SYSDATE   NOT NULL,
   MEM_AUTHCODE           CHAR(1) DEFAULT 'N'     NOT NULL
   --MEM_SESSION_KEY      VARCHAR2(50)
   --MEM_SESSION_LIMIT    TIMESTAMP
);

--2. ī�װ� ���̺� BOM����
CREATE TABLE CATEGORY_TBL (
    CATE_CODE             NUMBER                        PRIMARY KEY,
    CATE_CODE_PRT         NUMBER,                                          
    CATE_NAME             VARCHAR2(50)                  NOT NULL
);

INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(1, NULL, 'CHRISTMAS');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(10, 1, '���ʸ�Ʈ');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(11, 1, '����');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(12, 1, 'Ʈ��');

INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(2, NULL, 'HOMEDECO');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(20, 2, 'Ķ����');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(21, 2, '��Ʈ');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(22, 2, 'ȭ��');

INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(3, NULL, 'CANDLE');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(31, 3, 'ĵ��');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(32, 3, '�д�');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(33, 3, '�μ���');

INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(4, NULL, 'LIGHTING');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(41, 4, '�ܽ��ĵ�');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(42, 4, '�彺�ĵ�');

INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(5, NULL, 'RATTAN');
INSERT INTO CATEGORY_TBL(CATE_CODE, CATE_CODE_PRT, CATE_NAME) VALUES(51, 5, '��ź');


COMMIT;

-- cate_code, cate_code_prt, cate_name

-- 1�� ī�װ�
SELECT * FROM category_tbl WHERE CATE_CODE_PRT IS NULL;

-- 1�� ī�װ��� �����ϸ�, �ش� 2�� ī�װ� �������� �����ϱ�.
SELECT * FROM category_tbl where CATE_CODE_PRT = 1;


--3-1. ��ǰ ���̺�
CREATE TABLE PRODUCT_TBL(
    PDT_NUM               NUMBER                        CONSTRAINT PK_PRODUCT_NUM PRIMARY KEY, 
    CATE_CODE             NUMBER                        NOT NULL,
    CATE_CODE_PRT         NUMBER                        NOT NULL,
    PDT_NAME              VARCHAR2(50)                  NOT NULL,
    PDT_PRICE             NUMBER                        NOT NULL,
    PDT_DISCOUNT          NUMBER                        NOT NULL,
    PDT_COMPANY           VARCHAR2(30)                  NOT NULL,
    PDT_DETAIL            VARCHAR2(4000)   /*CLOB*/     NOT NULL,
    PDT_IMG_FOLDER        VARCHAR2(200)                  NOT NULL,
    PDT_IMG               VARCHAR2(200)                  NOT NULL,
    PDT_AMOUNT            NUMBER                        NOT NULL,
    PDT_BUY               CHAR(1)   DEFAULT 'Y'         NOT NULL,
    PDT_DATE_SUB          DATE DEFAULT SYSDATE          NOT NULL,
    PDT_DATE_UP           DATE DEFAULT SYSDATE          NOT NULL
);

--3-2 ��ǰ���̺� ������
CREATE SEQUENCE SEQ_PRODUCT_NUM;


--4-1. ��ٱ��� ���̺� 
CREATE TABLE CART_TBL(
   CART_CODE          NUMBER                        PRIMARY KEY,         
   PDT_NUM            NUMBER                        NOT NULL,
   MEM_ID             VARCHAR2(15)                  NOT NULL,
   CART_AMOUNT        NUMBER                        NOT NULL
);

--4-2 ��ٱ��� ������
CREATE SEQUENCE SEQ_CART_CODE;


--5. �ֹ� ���̺�
DROP TABLE ORDER_TBL;
CREATE TABLE ORDER_TBL(
   ODR_CODE          NUMBER                        CONSTRAINT PK_ORDER_CODE PRIMARY KEY,
   MEM_ID            VARCHAR2(15)                  NOT NULL,
   ODR_NAME          VARCHAR2(30)                  NOT NULL,
   ODR_ZIPCODE       CHAR(5)                       NOT NULL,
   ODR_ADDR          VARCHAR2(150)                 NOT NULL,
   ODR_ADDR_D        VARCHAR2(150)                 NOT NULL,
   ODR_PHONE         VARCHAR2(20)                  NOT NULL,
   ODR_TOTAL_PRICE   NUMBER                        NOT NULL,
   ODR_STATUS        VARCHAR2(30)                  DEFAULT '����غ���',
   PAYMENT_STATUS    VARCHAR2(30)                  DEFAULT '�����Ϸ�',
   ODR_DATE          DATE DEFAULT SYSDATE          NOT NULL
);   
commit;

--6-1. �ֹ� �� ���̺�
CREATE TABLE ORDER_DETAIL_TBL(
   ODR_CODE         NUMBER                        NOT NULL,
   PDT_NUM          NUMBER                        NOT NULL,
   ODR_AMOUNT       NUMBER                        NOT NULL,
   ODR_PRICE        NUMBER                        NOT NULL,
   PRIMARY KEY (ODR_CODE, PDT_NUM) 
);


--6-2 �ֹ���ȣ ������
CREATE SEQUENCE SEQ_ORD_CODE;

--7-1 �������� ���̺�
DROP TABLE PAYMENT_TBL;
CREATE TABLE PAYMENT_TBL (
    PAY_CODE            NUMBER          CONSTRAINT PK_PAYMENT_CODE  PRIMARY KEY, 
    ODR_CODE            NUMBER          NOT NULL, 
    MEM_ID              VARCHAR(15)     NOT NULL,
    PAY_METHOD          VARCHAR2(30)    NOT NULL, 
    PAY_DATE            DATE            DEFAULT SYSDATE,       
    PAY_TOT_PRICE       NUMBER          NOT NULL, 
    PAY_NOBANK_PRICE    NUMBER          NULL,
    PAY_REST_PRICE      NUMBER          NULL,
    PAY_NOBANK_USER     VARCHAR2(20)    NULL,
    PAY_NOBANK          VARCHAR2(50)    NULL,
    PAY_MEMO            VARCHAR2(1000)  NULL
);
-- pay_code, odr_code, pay_method, pay_date, pay_tot_price, pay_rest_price, pay_nobank_user, pay_nobank


--7-2 �������� ������
CREATE SEQUENCE SEQ_PAYMENT_CODE;

--8. �Խ��� ���̺� 
CREATE TABLE BOARD_TBL(
   BRD_NUM           NUMBER                           CONSTRAINT PK_BOARD_NUM PRIMARY KEY, 
   MEM_ID            VARCHAR2(15)                     NOT NULL,
   BRD_TITLE         VARCHAR2(100)                    NOT NULL,
   BRD_CONTENT       VARCHAR2(4000)                   NOT NULL,
   BRD_DATE_REG      DATE DEFAULT SYSDATE             NOT NULL
);

--9-1. ��ǰ�ı� ���̺� 
CREATE TABLE REVIEW_TBL(
   RV_NUM            NUMBER                        CONSTRAINT PK_REVIEW_NUM PRIMARY KEY, 
   MEM_ID            VARCHAR2(15)                  NOT NULL,
   PDT_NUM           NUMBER                        NOT NULL,
   RV_CONTENT        VARCHAR2(200)                 NOT NULL,
   RV_SCORE          NUMBER                        NOT NULL,
   RV_DATE_REG       DATE DEFAULT SYSDATE          NOT NULL
);

-- rv_num, mem_id, pdt_num, rv_content, rv_score, rv_date_reg

--9-2 ��ǰ�ı� ������
CREATE SEQUENCE SEQ_REVIEW_NUM;

--9-3 ��� ���̵�����
INSERT INTO REVIEW_TBL(RV_NUM, MEM_ID, PDT_NUM, RV_CONTENT, RV_SCORE)
SELECT SEQ_REVIEW_NUM.NEXTVAL, 'user01', PDT_NUM, RV_CONTENT, RV_SCORE FROM REVIEW_TBL;
COMMIT;

--10. ������ �α��� ���̺�
CREATE TABLE ADMIN_TBL(
   ADMIN_ID         VARCHAR2(15)                  PRIMARY KEY,
   ADMIN_PW         CHAR(60)                      NOT NULL,
   ADMIN_NAME       VARCHAR2(15)                  NOT NULL,
   ADMIN_DATE_LATE  DATE DEFAULT   SYSDATE        NOT NULL
);