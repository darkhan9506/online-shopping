CREATE TABLE category (
	
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id) 
	
);

INSERT INTO category (name, description, image_url, is_active) VALUES('TV', 'This is description for television category', 'CAT_1.png', true);
INSERT INTO category (name, description, image_url, is_active) VALUES('Laptop', 'This is description for laptop category', 'CAT_2.png', true);
INSERT INTO category (name, description, image_url, is_active) VALUES('Mobile', 'This is description for mobile category', 'CAT_3.png', true);

CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(50),
	email VARCHAR(100),
	contact_number VARCHAR(15),
	CONSTRAINT pk_user_id PRIMARY KEY(id),
);


INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Darkhan', 'Zhursin', 'ADMIN', true, 'admin', 'darkhan06.95@gmail.com', '+77474130195');

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Duka', 'Zhazykbayev', 'SUPPLIER', true, '12345', 'duka@gmail.com', '+77072201808');

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Nurila', 'Kanat', 'SUPPLIER', true, '12345', 'nurisha1808@gmail.com', '+77777777777');


CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),
);

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDABC123DEFX', 'iPhone X', 'Apple', 'Это один самых лучших смартфонов в мире от компании Apple.', 350000, 50, true, 3, 2);

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDDEF123DEFX', 'Samsung s8', 'samsung', 'Это один самых лучших смартфонов в мире от компании Samsung.', 250000, 15, true, 3, 3);

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDPQR123WGFX', 'Google Pixel', 'google', 'Это один самых лучших android смартфонов в мире от компании Google.', 300000, 5, true, 3, 2);

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDDEF123DEFX', 'Macbook Pro', 'apple', 'Это Macbook Pro.', 450000, 25, true, 2, 3);

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES ('PRDABCXYZDEFX', 'Dell Latitude E6510', 'dell', 'Это Dell Lat.', 300000, 20, true, 2, 2);
