/******CODE***分隔线*********************************/
--新增报表类型：模拟实训报表
--SELECT * FROM code_library where codeno = 'FinanceBelong' and itemno = '160';
INSERT INTO code_library (CODENO,ITEMNO,ITEMNAME,BANKNO,SORTNO,ISINUSE,ITEMDESCRIBE,ITEMATTRIBUTE,RELATIVECODE,ATTRIBUTE1,ATTRIBUTE2,ATTRIBUTE3,ATTRIBUTE4,ATTRIBUTE5,ATTRIBUTE6,ATTRIBUTE7,ATTRIBUTE8,INPUTUSER,INPUTORG,INPUTTIME,UPDATEUSER,UPDATETIME,REMARK,HELPTEXT) VALUES ('FinanceBelong','160','模拟实训报表',null,'160','1',null,null,null,null,null,null,null,null,null,null,null,'system','9900','2006/10/01 01:01:01','system','2009/07/02 12:51:23',null,null);


/****METHOD***分隔线*********************************/



/****EVALUATE_MODEL***分隔线*************************/



/****FLOW***分隔线***********************************/


/****BUSINESSTYPE***分隔线***************************/



/****MENU***分隔线***********************************/



/****SELECT_CATAOLOG****分隔线***********************/



/****DW***分隔线*************************************/



/****OW***分隔线*************************************/



/****SCENARIO***分隔线*******************************/

/*******Report_Catalog***********************/
--
--SELECT * FROM report_catalog where modelno in ('1600','1610');
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1600','资产负债表','月报','','资产负债表','160','','','2','资产&行次&期末调整值&年初值&负债及所有者权益&行次&期末调整值&年初值','','');
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1610','损益表','月报','','损益表','160','','','1','项目&行次&本月调整值&本年累计数','','');

--SELECT * FROM report_model where modelno in ('1600','1610');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0010','流动资产：','T5092','0010','','readonly=true;style=background-color:#DDDDDD;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0020','                  货币资金','101','0020','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0030','         应收账款','T5091','0030','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0040','                 减：坏账准备','01011','0040','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0050','         其他流动资产','800','0050','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0060','                流动资产合计','801','0060','','readonly=true;style=background-color:yellow;','','{当期.1600.101.右栏}+{当期.1600.T5091.右栏}-{当期.1600.01011.右栏}+{当期.1600.800.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0061','','1000','0061','','readonly=true;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0062','','1000','0062','','readonly=true;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0070','固定资产：','703','0070','','readonly=true;style=background-color:#FFDEAD;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0080','                  固定资产原值','01010','0080','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0090','                          减：累计折旧','118','0090','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0100','       在建工程','120','0100','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0110','              减：在建工程减值准备','19a','0110','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0120','                固定资产合计','802','0120','','readonly=true;style=background-color:yellow;','','{当期.1600.01010.右栏}-{当期.1600.118.右栏}+{当期.1600.120.右栏}-{当期.1600.19a.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0130','资产合计','19d','0130','','readonly=true;style=background-color:yellow;','','{当期.1600.801.右栏}+{当期.1600.802.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0140','流动负债：','T5093','0140','','readonly=true;style=background-color:#FFDEAD;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0150','                短期借款','201','0150','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0160','                应付职工工资','010009','0160','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0170','        其他流动负债','224','0170','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0180','                流动负债合计','805','0180','','readonly=true;style=background-color:yellow;','','{当期.1600.201.右栏}+{当期.1600.010009.右栏}+{当期.1600.224.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0190','长期负债：','010008','0190','','readonly=true;style=background-color:#FFDEAD;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0200','                长期借款','213','0200','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0210','        其他长期负债','235','0210','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0220','                长期负债合计','806','0220','','readonly=true;style=background-color:yellow;','','{当期.1600.213.右栏}+{当期.1600.235.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0230','                 负债合计','807','0230','','readonly=true;style=background-color:yellow;','','{当期.1600.805.右栏}+{当期.1600.806.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0240','所有者权益：','710','0240','','readonly=true;style=background-color:#FFDEAD;','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0250','                 实收资本','301','0250','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0260','                 资本公积','302','0260','','','','','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0270','           所有者权益合计','808','0270','','readonly=true;style=background-color:yellow;','','{当期.1600.301.右栏}+{当期.1600.302.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0280','负债及所有者权益合计','T2000','0280','','readonly=true;style=background-color:yellow;','','{当期.1600.807.右栏}+{当期.1600.808.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0010','一、营业收入','1001','0010','','readonly=true;style=background-color:yellow;','','{当期.1610.02003.右栏}+{当期.1610.T3115.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0020','        手续费收入','02003','0020','','','','{当期.1610.02003.左栏}+{本年上期.1610.02003.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0030','        其他业务收入','T3115','0030','','','','{当期.1610.T3115.左栏}+{本年上期.1610.T3115.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0040','二、营业成本','01013','0040','','readonly=true;style=background-color:yellow;','','{当期.1610.T3202.右栏}+{当期.1610.385.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0050','        营业税金及附加','T3202','0050','','','','{当期.1610.T3202.左栏}+{本年上期.1610.T3202.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0060','        其他支出','385','0060','','','','{当期.1610.385.左栏}+{本年上期.1610.385.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0070','三、营业利润','509','0070','','readonly=true;style=background-color:yellow;','','{当期.1610.512.右栏}-{当期.1610.513.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0080','        营业外收入','512','0080','','','','{当期.1610.512.左栏}+{本年上期.1610.512.右栏}','','',null,'','','');
INSERT INTO "DB2INST1"."REPORT_MODEL" (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0090','            减：营业外支出','513','0090','','','','{当期.1610.513.左栏}+{本年上期.1610.513.右栏}','','',null,'','','');


