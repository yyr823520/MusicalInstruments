create database [MusicalInstruments];
use [MusicalInstruments];
--�����
CREATE TABLE product_category (
 id INT PRIMARY KEY identity(1,1) NOT NULL,
 c_name VARCHAR(50),--��������
 s_tatus INT   --����״̬
);

--����
CREATE TABLE product_store (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 product_pic_id INT,--��ƷͼƬid
 quantity_instock INT --�������
);
--��Ʒ��
CREATE TABLE product (
 id INT identity(1,1) PRIMARY KEY  NOT NULL,
  category_id INT NOT NULL,--����id
  canuse CHAR(2) NOT NULL,--�Ƿ��ϼ�
  position_id INT,--�Ƽ�λ��
  p_name VARCHAR(1000) NOT NULL,--��Ʒ����
  brand varchar(1000),--Ʒ��
);

--������ϸ��
create table piano(
id int identity(1,1) primary key,
keynums int,--����
style varchar(50),--��ʽ
p_id int not null,--��Ʒid
p_choose INT,--ѡ������
 p_description VARCHAR(1000),--��Ʒ������Ϣ
x_hao varchar(1000),--�ͺ�
persons varchar(1000)--������Ⱥ
)
--����(�ȿ�����)��ϸ��
create table  guitar(
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
x_hao varchar(1000),--�ͺ�
size varchar(100),--�ߴ�
taste int, --Ʒζ
tuners varchar(500), --������
panel_material  varchar(100),-- ������ 
fingerboard varchar(100),--ָ����� 
back_plate_material  varchar(100)--��������
);
--С������ϸ��
create table violin(
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
x_hao varchar(1000),--�ͺ�
panel_material  varchar(100),-- ������ 
back_plate_material  varchar(100),--��������
tensile_string_material varchar(100),--���Ұ���� 
size varchar(100),--�ߴ�
)
--����˹��ϸ��
create table sax(
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
x_hao varchar(1000),--�ͺ�
persons varchar(1000),--������Ⱥ
category varchar(1000),--����
material_quality varchar(100),--����
musical_instrument_technology  varchar(100)--��������
)
--������ϸ��
create table guzheng(
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
x_hao varchar(1000),--�ͺ�
floor_material varchar(100),--�װ���� 
back_plate_material  varchar(100),--��������
zither_head_material varchar(100),--���ײ��� 
panel_material  varchar(100),-- ������ 
material_quality varchar(100),--����
string_material varchar(100),--���Ҳ���
harp_code_material varchar(100),--�������
musical_instrument_technology  varchar(100),--��������
place_of_origin varchar(100)--����
)
--������ϸ��
create table  erhu(
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
persons varchar(1000),--������Ⱥ
material varchar(100),--��ǲ���  
shape varchar(100),--��״  
place_of_origin varchar(100)--����
)
--��«˿��ϸ��
create table bottle_gourd_silk (
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
material_quality varchar(100),--����
persons varchar(1000),--������Ⱥ
place_of_origin varchar(100)--����
)
--���ӹ���ϸ��
create table drum_kit(
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
x_hao varchar(1000),--�ͺ�
material_quality varchar(100),--����
drum_number int, -- ���̸��� 
persons varchar(1000),--������Ⱥ
)
--������ϸ��
create table  harmonica (
id int identity(1,1) primary key,
p_id int not null,--��Ʒid
x_hao varchar(1000),--�ͺ�
category varchar(1000),--����
hole_count varchar(100),  --����
cover_material varchar(100),--�ǰ���� 
sound_material varchar(100), --���ײ���
persons varchar(1000),--������Ⱥ
)

--ͼƬ��
CREATE TABLE product_pic (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 product_id INT NOT NULL,--��Ʒid
 pic_type VARCHAR(50),--ͼƬ����
 picurl VARCHAR(1000),--ͼƬ·��
 sellprice decimal(10,2),--���ۼ�
 discountprice decimal(10,2),--�ۿۼ�
 color varchar(1000) --��ɫ����
);

--�����������Ա�
CREATE TABLE leave_messages (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 comment_id INT NOT NULL,--��������id
 answer VARCHAR(1000),--�ظ�
 comment_time dateTime,--�ظ�ʱ�� 
 userid INT NOT NULL,--�û�id
 nameshow CHAR(2)--�Ƿ�����
);
--�������۱�
CREATE TABLE comments (
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 orderid INT NOT NULL,--����id
 p_id int ,--��Ʒid
 contents VARCHAR(1000),--��������
 productmarks INT,--��Ʒ����
 servicemarks INT,--��������
 commentime dateTime,--����ʱ��
 logisticsmarks INT,--��������
 userid INT NOT NULL,--�û�id
 nameshow CHAR(2),--�Ƿ�����
);

--��ַ��
CREATE TABLE a_ddress (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 belong_userid INT NOT NULL,--�����û�
 province VARCHAR(50) NOT NULL,--ʡ
 city VARCHAR(50) NOT NULL,--��
 area VARCHAR(50) NOT NULL,--��
 detail VARCHAR(1000),--��ϸ��ַ
 postcode VARCHAR(20),--�ʱ�
 username VARCHAR(50) NOT NULL,--�û���
 tel CHAR(11) NOT NULL --�绰
);

--�Ƽ�λ�ñ�
CREATE TABLE position (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 pos_name VARCHAR(50)--λ������
);

--�Ƽ���
CREATE TABLE resposition (
 r_id INT identity(1,1)PRIMARY KEY NOT NULL,
 position_id INT NOT NULL ,--λ��id
 p_id INT NOT NULL,--��Ʒid
 p_weight INT NOT NULL,--Ȩ��
 url VARCHAR(1000),--�����ļ�
 p_type VARCHAR(100)--�ļ�����
);

--�û���
CREATE TABLE users (
 u_id INT identity(1,1) PRIMARY KEY NOT NULL,
 nickname VARCHAR(100) NOT NULL,--�ǳ�
 sex CHAR(2),--�Ա�
 picurl VARCHAR(1000),--ͷ��
 descrition VARCHAR(1000),--������Ϣ
 mark INT,--����
 default_addressid INT,--Ĭ�ϵ�ַid
 pass VARCHAR(100) NOT NULL,--����
 lv VARCHAR(50),--��ݱ�ʶ
 u_state INT,--�û�״̬
 email varchar(100) not null --����
);

--������
CREATE TABLE orders (
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 total_price decimal(10,2) NOT NULL,--�ܼ�Ǯ
 orderdate datetime not null,--�¶���ʱ��
 o_status VARCHAR(20),--����״̬��������δ�������ջ���δ�ջ���
 shipName VARCHAR(50),--��ݹ�˾
 addressid INT NOT NULL,--��ַid
 remark  VARCHAR(1000),--��ע
 shipnum  uniqueidentifier  NOT NULL--��ݵ���
);

--������ϸ��
CREATE TABLE order_deatails (
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 product_id INT NOT NULL,--��Ʒid
 price DECIMAL(10,2) NOT NULL,--�۸�
 quantity INT NOT NULL,--����
 orders_id INT NOT NULL--����id
);
--���ﳵ��
create table cart(
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 product_id INT NOT NULL,--��Ʒid
 price DECIMAL(10,2) NOT NULL,--�۸�
 quantity INT NOT NULL,--����
)
--�ַ���
create table Turns(
id int identity(1,1) primary key,
title varchar(1000),
contents varchar(1000),
c_id int not null,
num int ,
picurl varchar(1000))
