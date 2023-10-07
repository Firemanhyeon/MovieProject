
  CREATE TABLE "DOTORY"."DT_REPLY" 
   (	"REPLY_ID" NUMBER NOT NULL ENABLE, 
	"REPLY" VARCHAR2(500 BYTE) NOT NULL ENABLE, 
	"REPLY_UPDATE" DATE, 
	"REPLY_DATE" DATE DEFAULT sysdate NOT NULL ENABLE, 
	"MEMBER_ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"BOARD_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "DT_REPLY_PK" PRIMARY KEY ("REPLY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "DT_REPLY_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "DOTORY"."DT_MEMBER" ("MEMBER_ID") ENABLE, 
	 CONSTRAINT "DT_REPLY_FK2" FOREIGN KEY ("BOARD_ID")
	  REFERENCES "DOTORY"."DT_BOARD" ("BOARD_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
