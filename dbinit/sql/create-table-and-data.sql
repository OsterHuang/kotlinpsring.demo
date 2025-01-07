-- [Sequences]
CREATE SEQUENCE public.article_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE public.author_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- [Tables]
--  - table.author
CREATE TABLE public.author (
	id int8 DEFAULT nextval('author_seq'::regclass) NOT NULL,
	login varchar(200) NULL,
	firstname varchar(80) NULL,
	lastname varchar(80) NULL,
	description varchar(255) NULL,
	CONSTRAINT author_login_unique UNIQUE (login),
	CONSTRAINT author_pkey PRIMARY KEY (id)
);

--  - table.article
CREATE TABLE public.article (
	id int8 DEFAULT nextval('article_seq'::regclass) NOT NULL,
	title varchar(255) NULL,
	headline varchar(255) NULL,
	"content" varchar(1000) NULL,
	slug varchar(255) NULL,
	author_id int8 NULL,
	added_at timestamp(6) NULL,
	CONSTRAINT article_pkey PRIMARY KEY (id)
);
    -- public.article foreign keys
ALTER TABLE public.article ADD CONSTRAINT fk92kabsgi6rs0pmr2866m7q7m9 FOREIGN KEY (author_id) REFERENCES public.author(id);


-- [Sample data]
    -- public.author
INSERT INTO public.author (description,firstname,lastname,login, id) VALUES
  ('Author 1','John','Doe','John.Doe', 1),
  ('Author 2','Jane','Willams','Jane.Williams', 2),
  ('Author 3','Mike','Smith','Mike.Smith', 3),
  ('Author 4','Sara','Connor','Sara.Connor', 4),
  ('Author 5','Peter','Parker','Peter.Parker', 5);

    -- public.article 
INSERT INTO public.article (added_at,"content",headline,slug,title,author_id) VALUES
	 ('2025-01-06 15:51:14.202206','This article explains how to learn Java step by step.','Java Basics for Beginners','how-to-learn-java','How to Learn Java',1),
	 ('2025-01-06 15:51:14.202206','Learn how Spring Boot simplifies application development.','A Deep Dive into Spring Boot','understanding-spring-boot','Understanding Spring Boot',2),
	 ('2025-01-06 15:51:14.202206','Discover tips and tricks to improve PostgreSQL query performance.','Optimize Your PostgreSQL Queries','postgresql-tips','PostgreSQL Tips',3),
	 ('2025-01-06 15:51:14.202206','Explore the principles of writing clean and maintainable code.','Coding Best Practices','the-art-of-coding','The Art of Coding',4),
	 ('2025-01-06 15:51:14.202206','An overview of the latest web development trends for 2025.','Stay Ahead in Web Development','web-development-trends-2025','Web Development Trends 2025',5),
	 ('2025-01-06 15:51:14.202206','Why microservices architecture is gaining popularity.','Advantages of Microservices','microservices-architecture','Microservices Architecture',1),
	 ('2025-01-06 15:51:14.202206','A beginner guide to using Docker in your projects.','Getting Started with Docker','docker-for-beginners','Docker for Beginners',2),
	 ('2025-01-06 15:51:14.202206','A comparison between Kotlin and Java for modern development.','Which Should You Learn?','kotlin-vs-java','Kotlin vs Java',3),
	 ('2025-01-06 15:51:14.202206','What are APIs, and how can you use them effectively?','A Beginner Guide to APIs','understanding-apis','Understanding APIs',4),
	 ('2025-01-06 15:51:14.202206','Learn how to debug your code efficiently.','Effective Debugging Techniques','debugging-tips','Debugging Tips',5);
INSERT INTO public.article (added_at,"content",headline,slug,title,author_id) VALUES
	 ('2025-01-06 15:51:14.202206','How to design and implement RESTful APIs in your applications.','A Step-by-Step Guide','building-restful-apis','Building RESTful APIs',1),
	 ('2025-01-06 15:51:14.202206','Practical tips for writing effective unit tests.','Write Better Unit Tests','unit-testing-best-practices','Unit Testing Best Practices',2),
	 ('2025-01-06 15:51:14.202206','Learn the basics of building web applications with React.','Getting Started with React.js','introduction-to-react','Introduction to React',3),
	 ('2025-01-06 15:51:14.202206','Learn how OAuth works and how to implement it.','Secure Your APIs with OAuth','understanding-oauth','Understanding OAuth',4),
	 ('2025-01-06 15:51:14.202206','Best practices for deploying your applications.','A Guide to Application Deployment','deploying-applications','Deploying Applications',5),
	 ('2025-01-06 15:51:14.202206','What is cloud computing, and how can it help your business?','Cloud Basics Explained','introduction-to-cloud-computing','Introduction to Cloud Computing',1),
	 ('2025-01-06 15:51:14.202206','Comparing GraphQL and REST for building APIs.','Which API Style is Better?','graphql-vs-rest','GraphQL vs REST',2),
	 ('2025-01-06 15:51:14.202206','Learn how to secure your web applications effectively.','Secure Your Web Applications','security-essentials','Security Essentials',3);

