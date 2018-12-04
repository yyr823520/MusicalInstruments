create database [MusicalInstruments];
use [MusicalInstruments];
--分类表
CREATE TABLE product_category (
 id INT PRIMARY KEY identity(1,1) NOT NULL,
 c_name VARCHAR(50),--分类名称
 s_tatus INT   --分类状态
);

--库存表
CREATE TABLE product_store (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 product_pic_id INT,--商品图片id
 quantity_instock INT --库存数量
);
--商品表
CREATE TABLE product (
 id INT identity(1,1) PRIMARY KEY  NOT NULL,
  category_id INT NOT NULL,--分类id
  canuse CHAR(2) NOT NULL,--是否上架
  position_id INT,--推荐位置
  p_name VARCHAR(1000) NOT NULL,--商品名称
  brand varchar(1000),--品牌
);

--钢琴明细表
create table piano(
id int identity(1,1) primary key,
keynums int,--键数
style varchar(50),--款式
p_id int not null,--商品id
p_choose INT,--选购次数
 p_description VARCHAR(1000),--商品描述信息
x_hao varchar(1000),--型号
persons varchar(1000)--适用人群
)
--吉他(尤克里里)明细表：
create table  guitar(
id int identity(1,1) primary key,
p_id int not null,--商品id
x_hao varchar(1000),--型号
size varchar(100),--尺寸
taste int, --品味
tuners varchar(500), --卷弦器
panel_material  varchar(100),-- 面板材质 
fingerboard varchar(100),--指板材质 
back_plate_material  varchar(100)--背侧板材质
);
--小提琴明细表：
create table violin(
id int identity(1,1) primary key,
p_id int not null,--商品id
x_hao varchar(1000),--型号
panel_material  varchar(100),-- 面板材质 
back_plate_material  varchar(100),--背侧板材质
tensile_string_material varchar(100),--拉弦板材质 
size varchar(100),--尺寸
)
--萨克斯明细表
create table sax(
id int identity(1,1) primary key,
p_id int not null,--商品id
x_hao varchar(1000),--型号
persons varchar(1000),--适用人群
category varchar(1000),--种类
material_quality varchar(100),--材质
musical_instrument_technology  varchar(100)--乐器工艺
)
--古筝明细表：
create table guzheng(
id int identity(1,1) primary key,
p_id int not null,--商品id
x_hao varchar(1000),--型号
floor_material varchar(100),--底板材质 
back_plate_material  varchar(100),--背侧板材质
zither_head_material varchar(100),--筝首材质 
panel_material  varchar(100),-- 面板材质 
material_quality varchar(100),--材质
string_material varchar(100),--琴弦材质
harp_code_material varchar(100),--琴码材质
musical_instrument_technology  varchar(100),--乐器工艺
place_of_origin varchar(100)--产地
)
--二胡明细表：
create table  erhu(
id int identity(1,1) primary key,
p_id int not null,--商品id
persons varchar(1000),--适用人群
material varchar(100),--外壳材质  
shape varchar(100),--形状  
place_of_origin varchar(100)--产地
)
--葫芦丝明细表：
create table bottle_gourd_silk (
id int identity(1,1) primary key,
p_id int not null,--商品id
material_quality varchar(100),--材质
persons varchar(1000),--适用人群
place_of_origin varchar(100)--产地
)
--架子鼓明细表：
create table drum_kit(
id int identity(1,1) primary key,
p_id int not null,--商品id
x_hao varchar(1000),--型号
material_quality varchar(100),--材质
drum_number int, -- 鼓盘个数 
persons varchar(1000),--适用人群
)
--口琴明细表：
create table  harmonica (
id int identity(1,1) primary key,
p_id int not null,--商品id
x_hao varchar(1000),--型号
category varchar(1000),--种类
hole_count varchar(100),  --孔数
cover_material varchar(100),--盖板材质 
sound_material varchar(100), --音孔材质
persons varchar(1000),--适用人群
)

--图片表：
CREATE TABLE product_pic (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 product_id INT NOT NULL,--商品id
 pic_type VARCHAR(50),--图片类型
 picurl VARCHAR(1000),--图片路径
 sellprice decimal(10,2),--出售价
 discountprice decimal(10,2),--折扣价
 color varchar(1000) --颜色分类
);

--订单评论留言表
CREATE TABLE leave_messages (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 comment_id INT NOT NULL,--评论所属id
 answer VARCHAR(1000),--回复
 comment_time dateTime,--回复时间 
 userid INT NOT NULL,--用户id
 nameshow CHAR(2)--是否匿名
);
--订单评论表：
CREATE TABLE comments (
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 orderid INT NOT NULL,--订单id
 p_id int ,--商品id
 contents VARCHAR(1000),--评论内容
 productmarks INT,--商品评分
 servicemarks INT,--服务评分
 commentime dateTime,--评论时间
 logisticsmarks INT,--物流评分
 userid INT NOT NULL,--用户id
 nameshow CHAR(2),--是否匿名
);

--地址表：
CREATE TABLE a_ddress (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 belong_userid INT NOT NULL,--所属用户
 province VARCHAR(50) NOT NULL,--省
 city VARCHAR(50) NOT NULL,--市
 area VARCHAR(50) NOT NULL,--县
 detail VARCHAR(1000),--详细地址
 postcode VARCHAR(20),--邮编
 username VARCHAR(50) NOT NULL,--用户名
 tel CHAR(11) NOT NULL --电话
);

--推荐位置表
CREATE TABLE position (
 id INT identity(1,1) PRIMARY KEY NOT NULL,
 pos_name VARCHAR(50)--位置名称
);

--推荐表
CREATE TABLE resposition (
 r_id INT identity(1,1)PRIMARY KEY NOT NULL,
 position_id INT NOT NULL ,--位置id
 p_id INT NOT NULL,--商品id
 p_weight INT NOT NULL,--权重
 url VARCHAR(1000),--其他文件
 p_type VARCHAR(100)--文件类型
);

--用户表：
CREATE TABLE users (
 u_id INT identity(1,1) PRIMARY KEY NOT NULL,
 nickname VARCHAR(100) NOT NULL,--昵称
 sex CHAR(2),--性别
 picurl VARCHAR(1000),--头像
 descrition VARCHAR(1000),--描述信息
 mark INT,--积分
 default_addressid INT,--默认地址id
 pass VARCHAR(100) NOT NULL,--密码
 lv VARCHAR(50),--身份标识
 u_state INT,--用户状态
 email varchar(100) not null --邮箱
);

--订单表：
CREATE TABLE orders (
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 total_price decimal(10,2) NOT NULL,--总价钱
 orderdate datetime not null,--下订单时间
 o_status VARCHAR(20),--订单状态（发货、未发货、收货、未收货）
 shipName VARCHAR(50),--快递公司
 addressid INT NOT NULL,--地址id
 remark  VARCHAR(1000),--备注
 shipnum  uniqueidentifier  NOT NULL--快递单号
);

--订单明细表：
CREATE TABLE order_deatails (
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 product_id INT NOT NULL,--商品id
 price DECIMAL(10,2) NOT NULL,--价格
 quantity INT NOT NULL,--数量
 orders_id INT NOT NULL--订单id
);
--购物车表：
create table cart(
 id INT identity(1,1)PRIMARY KEY NOT NULL,
 product_id INT NOT NULL,--商品id
 price DECIMAL(10,2) NOT NULL,--价格
 quantity INT NOT NULL,--数量
)
--轮番表：
create table Turns(
id int identity(1,1) primary key,
title varchar(1000),
contents varchar(1000),
c_id int not null,
num int ,
picurl varchar(1000))
