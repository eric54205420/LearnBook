/******CODE***分隔线*********************************/



/****METHOD***分隔线*********************************/



/****EVALUATE_MODEL***分隔线*************************/



/****FLOW***分隔线***********************************/


/****BUSINESSTYPE***分隔线***************************/



/****MENU***分隔线***********************************/



/****SELECT_CATAOLOG****分隔线***********************/



/****DW***分隔线*************************************/



/****OW***分隔线*************************************/



/*****finance_item**分隔线*******************************/
--科目设置
INSERT INTO finance_item (ITEMNO,ITEMNAME,ITEMATTRIBUTE,ITEMDESCRIBE,DELETEFLAG,REMARK) VALUES ('01007','盈利能力','','','','');
INSERT INTO finance_item (ITEMNO,ITEMNAME,ITEMATTRIBUTE,ITEMDESCRIBE,DELETEFLAG,REMARK) VALUES ('01008','资本现金率','','','','');
INSERT INTO finance_item (ITEMNO,ITEMNAME,ITEMATTRIBUTE,ITEMDESCRIBE,DELETEFLAG,REMARK) VALUES ('01009','购买商品、接受劳务支付的现金','','','','');





/****report_model***分隔线*******************************/
--财务报表/资产负债表
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0010','                   流动资产','T5092','0010','','readonly=true;style=background-color:gray;','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0020','                   货币资金','101','0020','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0030','                 应收账款','01011','0030','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0040','                  坏账准备','01010','0040','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0050','          其他流动资产','800','0050','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0060','           流动资产合计','801','0060','','readonly=true;style=background-color:yellow;','','{当期.1535.101.右栏}+{当期.1535.01011.右栏}-{当期.1535.01010.右栏}+{当期.1535.800.右栏}','','',null,'','','{当期.!无对应报表[1535].货币资金[101].右栏}+{当期.!无对应报表[1535].应收账款[01011].右栏}-{当期.!无对应报表[1535].坏账准备[01010].右栏}+{当期.!无对应报表[1535].其他流动资产[800].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0070','               固定资产','T1016','0070','','readonly=true;style=background-color:gray;','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0080','           固定资产原值','01019','0080','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0090','               累计折旧','118','0090','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0100','                在建工程','120','0100','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0110','       在建工程减值准备','19a','0110','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0120','             固定资产合计','802','0120','','readonly=true;style=background-color:yellow;','','{当期.1535.01019.右栏}-{当期.1535.118.右栏}+{当期.1535.120.右栏}-{当期.1535.19a.右栏}','','',null,'','','{当期.!无对应报表[1535].固定资产原值[01019].右栏}-{当期.!无对应报表[1535].累计折旧[118].右栏}+{当期.!无对应报表[1535].在建工程[120].右栏}-{当期.!无对应报表[1535].在建工程减值准备[19a].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0130','                 资产合计','19d','0130','','readonly=true;style=background-color:yellow;','','{当期.1535.801.右栏}+{当期.1535.802.右栏}','','',null,'','','{当期.!无对应报表[1535].流动资产合计[801].右栏}+{当期.!无对应报表[1535].固定资产合计[802].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0140','','1000','0140','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0150','','1000','0150','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0160','                流动负债','T5093','0160','','readonly=true;style=background-color:gray;','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0170','                短期借款','201','0170','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0180','             应付职工工资','T5094','0180','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0190','              其他流动负债','224','0190','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0200','              流动负债合计','805','0200','','readonly=true;style=background-color:yellow;','','{当期.1535.201.右栏}+{当期.1535.T5094.右栏}+{当期.1535.224.右栏}','','',null,'','','{当期.!无对应报表[1535].短期借款[201].右栏}+{当期.!无对应报表[1535].应付职工工资[T5094].右栏}+{当期.!无对应报表[1535].其他流动负债[224].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0210','                 长期负债','708','0210','','readonly=true;style=background-color:gray;','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0220','                  长期借款','213','0220','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0230','               其他长期负债','235','0230','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0240','               长期负债合计','806','0240','','readonly=true;style=background-color:yellow;','','{当期.1535.213.右栏}+{当期.1535.235.右栏}','','',null,'','','{当期.!无对应报表[1535].长期借款[213].右栏}+{当期.!无对应报表[1535].其他长期负债[235].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0250','                 负债合计','807','0250','','readonly=true;style=background-color:yellow;','','{当期.1535.805.右栏}+{当期.1535.806.右栏}','','',null,'','','{当期.!无对应报表[1535].流动负债合计[805].右栏}+{当期.!无对应报表[1535].长期负债合计[806].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0260','                 所有者权益','710','0260','','readonly=true;style=backgroung-color:gray;','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0270','                  实收资本','301','0270','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1535','0280','                  资本公积','302','0280','','','','','','',null,'','','');
--财务报表/资产负债表

--财务报表/损益表
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0010','一、营业收入','T5047','0010','','readonly=true;style=background-color:yellow','','{当期.1536.02003.右栏}}+{当期.1536.T3115.右栏}','','',null,'','','{当期.!无对应报表[1536].手续费收入[02003].右栏}}+{当期.!无对应报表[1536].其他业务收入[T3115].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0020','        手续费输入','02003','0020','','','','{当期.1536.02003.左栏}+{本年上期.1536.02003.右栏}','','',null,'','','{当期.!无对应报表[1536].手续费收入[02003].左栏}+{本年上期.!无对应报表[1536].手续费收入[02003].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0030','        其他业务收入','T3115','0030','','','','{当期.1536.T3115.左栏}+{当期.1536.T3115.右栏}','','',null,'','','{当期.!无对应报表[1536].其他业务收入[T3115].左栏}+{当期.!无对应报表[1536].其他业务收入[T3115].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0040','二、业务成本','T5048','0040','','readonly=true;style=background-color:yellow','','{当期.1536.T3202.右栏}+{当期.1536.385.右栏}','','',null,'','','{当期.!无对应报表[1536].营业税金及附加[T3202].右栏}}+{当期.!无对应报表[1536].其他支出[385].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0050','        营业税金及附加','T3202','0050','','','','{当期.1536.T3202.左栏}+{本年上期.1536.T302.右栏}','','',null,'','','{当期.!无对应报表[1536].营业税金及附加[T3202].左栏}+{本年上期.!无对应报表[1536].!无对应科目[T302].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0060','         其他支出','385','0060','','','','{当期.1536.385.左栏}+{本年上期.1536.385.右栏}','','',null,'','','{当期.!无对应报表[1536].其他支出[385].左栏}+{本年上期.!无对应报表[1536].其他支出[385].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0070',' 三、营业利润','509','0070','','readonly=true;style=background-color:yellow','','{当期.1536.512.右栏}-{当期.1536.513.右栏}','','',null,'','','{当期.!无对应报表[1536].营业外收入[512].右栏}-{当期.!无对应报表[1536].营业外支出[513].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0080','         营业外收入','512','0080','','','','{当期.1536.512.左栏}+{本年上期.1536.512.右栏}','','',null,'','','{当期.!无对应报表[1536].营业外收入[512].左栏}+{本年上期.!无对应报表[1536].营业外收入[512].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1536','0090','         营业外支出','513','0090','','','','{当期.1536.513.左栏}+{本年上期.1536.513.右栏}','','',null,'','','{当期.!无对应报表[1536].营业外支出[513].左栏}+{本年上期.!无对应报表[1536].营业外支出[513].右栏}');
--损益表

--现金流量表
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0010','一、经营活动的现金流量','810','0010','','readonly=true;style=background-color:gary','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0011','销售商品、提供劳务收到的现金','601','0011','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0012','受到的其他与经营活动有关的现金','a19','0012','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0013','经营活动产生现金流入小计','a20','0013','','readonly=true;style=background-color:yellow','','{当期.1537.601.右栏}+{当期.1537.a19.右栏}','','',null,'','','{当期.!无对应报表[1537].销售商品、提供劳务收到的现金[601].右栏}+{当期.!无对应报表[1537].收到的其他与经营活动有关的现金[a19].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0014','购买商品、接受劳务支付的现金','01009','0014','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0015','支付的其他与经营活动有关的现金','a26','0015','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0016','经营活动产生现金流出小计','a27','0016','','readonly=true;style=background-color:yellow','','{当期.1537.01009.右栏}+{当期.1537.a27.右栏}','','',null,'','','{当期.!无对应报表[1537].购买商品、接受劳务支付的现金[01009].右栏}+{当期.!无对应报表[1537].经营活动产生现金流出小计[a27].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0017','经营活动产生的现金流量净额','610','0017','','readonly=true;style=background-color:yellow','','{当期.1537.a20.右栏}-{当期.1537.a27.右栏}','','',null,'','','{当期.!无对应报表[1537].经营活动产生现金流入小计[a20].右栏}-{当期.!无对应报表[1537].经营活动产生现金流出小计[a27].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0018','二、投资活动的现金流量','811','0018','','readonly=true;style=background-color:gray','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0019','收回投资所收到的现金','a28','0019','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0020','收到其他与投资活动有关的现金','615','0020','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0021','投资活动现金流入小计','616','0021','','readonly=true;style=background-color:yellow','','{当期.1537.a28.右栏}+{当期.1537.615.右栏}','','',null,'','','{当期.!无对应报表[1537].收回投资所收到的现金[a28].右栏}+{当期.!无对应报表[1537].收到其他与投资活动有关的现金[615].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0022','购建固定资产、无形资产和其他长期资产所支付的现金净额','a34','0022','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0023','支付的其他与投资活动有关的现金','a37','0023','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0024','投资活动现金流出小计','621','0024','','readonly=true;style=background-color:yellow','','{当期.1537.a34.右栏}+{当期.1537.a37.右栏}','','',null,'','','{当期.!无对应报表[1537].购建固定资产、无形资产和其他长期资产所支付的现金净额[a34].右栏}+{当期.!无对应报表[1537].支付的其他与投资活动有关的现金[a37].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1537','0025','投资活动产生的现金流量净额','T4213','0025','','readonly=true;style=background-color:yellow','','{当期.1537.621.右栏}-{当期.1537.616.右栏}','','',null,'','','{当期.!无对应报表[1537].投资活动现金流出小计[621].右栏}-{当期.!无对应报表[1537].投资活动现金流入小计[616].右栏}');
--现金流量表

--财务指标表
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0010','一、流动性','T6009','0010','','readonly=true;style=background-color:gray','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0011','资本现金率','01008','0011','','','','{当期.1535.101.右栏}/{当期.1535.301.右栏}','','',null,'','','{当期.!无对应报表[1535].货币资金[101].右栏}/{当期.!无对应报表[1535].实收资本[301].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0012','流动比率','915','0012','','','','{当期.1535.801.右栏}/{当期.1535.805.右栏}','','',null,'','','{当期.!无对应报表[1535].流动资产合计[801].右栏}/{当期.!无对应报表[1535].流动负债合计[805].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0013','二、盈利能力','01007','0013','','readonly=true;style=background-color:gray','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0014','营业利润率','902','0014','','','','{当期.1536.509.右栏}/{当期.1536.T5047.右栏}','','',null,'','','{当期.!无对应报表[1536].营业利润[509].右栏}/{当期.!无对应报表[1536].手续费及佣金收入/营业收入 [T5047].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0015','三、偿债能力','01006','0015','','readonly=true;style=background-color:gray','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1538','0016','资产负债率','T6051','0016','','','','{当期.1535.807.右栏}/{当期.1535.19d.右栏}','','',null,'','','{当期.!无对应报表[1535].负债合计[807].右栏}/{当期.!无对应报表[1535].资产合计[19d].右栏}');
--财务指标表


/****report_catalog***分隔线*********************************/
--财务报表/资产负债表
INSERT INTO report_catalog  (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1535','资产负债表','月报','','','151','1','','2','&资 产&行次&期末调整值&年初值&负债及股东权益&行次&期末调整值&年初值&','','');
--资产负债表

--损益表
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1536','损益表','月报','','','151','','','1','项目&行次&本月调整值&本年累计数','','');
--损益表

--现金流量表
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1537','现金流量表','月报','','','151','','','3','项目&行次&金额','','');
--现金流量表

--财务指标表
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1538','财务指标表','月报','','','151','','','3','项目&行次&指标值','','');
--财务指标表




