
  CREATE TABLE "DOTORY"."DT_REVIEW" 
   (	"REVIEW_ID" NUMBER NOT NULL ENABLE, 
	"REVIEW" VARCHAR2(1000 BYTE) DEFAULT '리뷰를 입력하세요' NOT NULL ENABLE, 
	"REVIEW_DATE" DATE DEFAULT SYSDATE NOT NULL ENABLE, 
	"REVIEW_UPDATE" DATE DEFAULT SYSDATE, 
	"MOVIE_ID" NUMBER NOT NULL ENABLE, 
	"MEMBER_ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "DT_REVIEW_PK" PRIMARY KEY ("REVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "DT_REVIEW_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "DOTORY"."DT_MEMBER" ("MEMBER_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DOTORY"."DT_REVIEW"."REVIEW_ID" IS '리뷰번호';
   COMMENT ON COLUMN "DOTORY"."DT_REVIEW"."REVIEW" IS '리뷰내용';
   COMMENT ON COLUMN "DOTORY"."DT_REVIEW"."MOVIE_ID" IS '영화아이디';
   COMMENT ON COLUMN "DOTORY"."DT_REVIEW"."MEMBER_ID" IS '유저아이디';
