
/* 회원 테이블 생성 */
CREATE TABLE cs_member(
    member_id VARCHAR2(20) PRIMARY KEY,
    member_pwd VARCHAR2(80) NOT NULL,
    member_name VARCHAR2(20) NOT NULL,
    member_email VARCHAR2(500) UNIQUE NOT NULL,
    member_phone VARCHAR2(100) UNIQUE NOT NULL,
    member_zipcode VARCHAR2(5),
    member_address VARCHAR2(1000),
    member_admin NUMBER DEFAULT 0 NOT NULL,
    member_joined_date DATE DEFAULT SYSDATE
);

SELECT * FROM cs_member;

/* 주문 테이블 */
CREATE TABLE cs_order(
    order_index NUMBER PRIMARY KEY,
    fk_member_id VARCHAR2(20) NOT NULL
    REFERENCES cs_member(member_id) ON DELETE CASCADE,
    order_address VARCHAR2(1000) NOT NULL,
    order_payment VARCHAR2(20) NOT NULL,
    order_zipcode VARCHAR(5) NOT NULL,
    order_text VARCHAR2(1000),
    order_date DATE default SYSDATE,
    order_receiver VARCHAR2(128) NOT NULL,
    order_receiver_phone VARCHAR2(100) NOT NULL,
    order_total_price NUMBER NOT NULL
);


INSERT INTO cs_order VALUES(
    seq_order_index.nextval,
    'laurel',
    '서울시 관악구 봉천동',
    '무통장입금',
    '11234',
    '문 앞에 놔주세요',
    DEFAULT,
    '지니어스현',
    '01098987867',
    50000
);

SELECT * FROM cs_order o, cs_order_detail od WHERE o.order_index = od.fk_order_index;
SELECT o.*, od.*, m.member_phone, m.member_name 
FROM cs_order o, cs_member m, cs_order_detail od WHERE o.fk_member_id = m.member_id;

SELECT od.*, p.product_name, p.product_price FROM cs_order_detail od, cs_product p WHERE od.fk_product_index = p.product_index;

INSERT INTO cs_order_detail VALUES(
    seq_order_detail_index.nextval,
    1,
    1,
    10
);

INSERT INTO cs_order_detail VALUES(
    seq_order_detail_index.nextval,
    1,
    2,
    3
);

SELECT * FROM cs_order_detail;

/* 주문 상세 테이블 */
CREATE TABLE cs_order_detail(
    order_detail_index NUMBER PRIMARY KEY,
    fk_order_index NUMBER REFERENCES cs_order(order_index) ON DELETE CASCADE,
    fk_product_index NUMBER REFERENCES cs_product(product_index) ON DELETE CASCADE,
    order_product_count NUMBER NOT NULL
);

/* 주문 상세 인덱스 시퀀스 */
CREATE SEQUENCE seq_order_detail_index
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9999999
NOCYCLE;
​
/* 주문 인덱스 시퀀스 */
CREATE SEQUENCE seq_order_index
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9999999
NOCYCLE;

INSERT INTO cs_product VALUES(
    seq_product_index.nextval,
    1,
    '모리타',
    16000,
    100,
    'Morita.png',
    '어쩌구저쩌구',
    '어쩌구저쩌구'
);

INSERT INTO cs_product VALUES(
    seq_product_index.nextval,
    1,
    '엘 라우렐',
    16000,
    100,
    'El_laurel.png',
    '어쩌구저쩌구',
    '어쩌구저쩌구'
);

SELECT * FROM cs_product;
/*상품 테이블*/   ​
CREATE TABLE cs_product(
    product_index NUMBER PRIMARY KEY,
    fk_hastag_index NUMBER not null,
    product_name VARCHAR2(100) not null,
    product_price NUMBER not null,
    product_count VARCHAR2(100) not null,
    product_image VARCHAR2(400) not null,
    product_info VARCHAR2(400) not null,
    product_text VARCHAR2(2000) null

);

/*product_count number로 변경*/
ALTER TABLE cs_product MODIFY product_count NUMBER;

/*cs_category*/
CREATE TABLE CS_CATEGORY (
    category_index NUMBER PRIMARY KEY, --시퀀스 / PK
    category_name VARCHAR(20) UNIQUE NOT NULL
);
INSERT INTO cs_category VALUES(
    seq_category_index.nextval,
    '원두'
);
INSERT INTO cs_category VALUES(
    seq_category_index.nextval,
    '스틱커피'
    
);
INSERT INTO cs_category VALUES(
    seq_category_index.nextval,
    '캡슐커피'
    
);

SELECT * FROM cs_category;
/*seq_category_index 시퀀스*/
​
CREATE SEQUENCE seq_category_index
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9999999
NOCYCLE;
​
SELECT * FROM cs_hashtag;
INSERT INTO cs_hashtag VALUES(
    seq_hashtag_index.nextval, 1, '#풍부한산미'
);


INSERT INTO cs_hashtag VALUES(
    seq_hashtag_index.nextval, 1,'#묵직한바디감'
);

INSERT INTO cs_hashtag VALUES(
    seq_hashtag_index.nextval,1,'#중남미원두'
);

INSERT INTO cs_hashtag VALUES(
    seq_hashtag_index.nextval,1,'#아프리카원두'
);
INSERT INTO cs_hashtag VALUES(
    seq_hashtag_index.nextval,2,'#쉽고간편한'
);
INSERT INTO cs_hashtag VALUES(
    seq_hashtag_index.nextval,3,'#룽고'
);

/*cs_hashtag*/
CREATE TABLE CS_HASHTAG (
    hashtag_index NUMBER PRIMARY KEY, --시퀀스 / PK
    fk_category_index NUMBER, --CS_CATEGORY 테이블 CATEGORY_NO FK 
    hashtag_name VARCHAR(40) UNIQUE NOT NULL,--UNIQUE/NOT NULL
    FOREIGN KEY(fk_category_index) REFERENCES cs_category(category_index) ON DELETE CASCADE
);

​/*seq_hashtag_index*/
CREATE SEQUENCE seq_hashtag_index
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9999999
NOCYCLE;

​
CREATE TABLE CS_QNA (
	QNA_INDEX NUMBER	PRIMARY KEY,
	fk_member_id  VARCHAR2(20)	NOT NULL,	
	QNA_TITLE  VARCHAR2(128)       NOT NULL,
	QNA_DATE	DATE    default sysdate	        	NOT NULL, 
	QNA_TEXT	    VARCHAR2(2000)	                NOT NULL,
	QNA_IMAGE	    VARCHAR2(128)	,
	QNA_CHECK NUMBER	 NOT NULL

);
​
ALTER TABLE CS_QNA
ADD CONSTRAINT fk_member_id FOREIGN KEY(fk_member_id) REFERENCES cs_member(member_id)
ON DELETE CASCADE;
​
CREATE SEQUENCE seq_qna_index
MINVALUE 1
MAXVALUE 999999
START WITH 1
INCREMENT BY 1
NOCYCLE;
​
​
SELECT * FROM CS_QNA ;


CREATE TABLE cs_notice(
    notice_index NUMBER PRIMARY KEY,
    fk_member_id VARCHAR2(20) NOT NULL, 
    notice_title VARCHAR2(128) NOT NULL,
    notice_date DATE default sysdate NOT NULL,
    notice_text VARCHAR2(400) NOT NULL,
    notice_file VARCHAR2(128),
    CONSTRAINT fk_notice_member_id FOREIGN KEY(fk_member_id) REFERENCES cs_member(member_id) 
    ON DELETE CASCADE
);

/* seq_notice_index */
CREATE SEQUENCE seq_notice_index
MINVALUE 1
MAXVALUE 9999999
START WITH 1
INCREMENT BY 1
NOCYCLE;


​​/* 확인하기 */
ALTER TABLE cs_product ADD CONSTRAINT fk_hastag_index FOREIGN KEY(fk_hastag_index) REFERENCES cs_hashtag(hashtag_index)
ON DELETE CASCADE;

/*상품 식별자 시퀀스 */
CREATE SEQUENCE seq_product_index 
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 99999999
    MINVALUE 1
    NOCYCLE;
​
/* 장바구니 테이블 */
CREATE TABLE cs_cart(
cart_index NUMBER PRIMARY KEY,
fk_member_id VARCHAR2(20) not null,
fk_product_index NUMBER not null,
order_count NUMBER not null
);

/*제약조건*/
ALTER TABLE cs_cart
ADD CONSTRAINT FK_cart_member_id FOREIGN KEY(fk_member_id) REFERENCES cs_member(member_id) 
ON DELETE CASCADE;

ALTER TABLE cs_cart
ADD CONSTRAINT FK_cart_product_index FOREIGN KEY(fk_product_index) REFERENCES cs_product(product_index) ON DELETE CASCADE;

/*장바구니 시퀀스*/
CREATE SEQUENCE seq_cart_index
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 99999999
    MINVALUE 1
    NOCYCLE;

