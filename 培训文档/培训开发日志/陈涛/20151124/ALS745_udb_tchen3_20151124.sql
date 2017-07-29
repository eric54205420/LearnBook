
/*********模拟实训报表    tchen3  20151124********/
--SELECT * FROM CODE_LIBRARY where CodeNo = 'FinanceBelong'

/******增加财务报表模型********/
INSERT INTO CODE_LIBRARY (CODENO,ITEMNO,ITEMNAME,BANKNO,SORTNO,ISINUSE,ITEMDESCRIBE,ITEMATTRIBUTE,RELATIVECODE,ATTRIBUTE1,ATTRIBUTE2,ATTRIBUTE3,ATTRIBUTE4,ATTRIBUTE5,ATTRIBUTE6,ATTRIBUTE7,ATTRIBUTE8,INPUTUSER,INPUTORG,INPUTTIME,UPDATEUSER,UPDATETIME,REMARK,HELPTEXT) VALUES ('FinanceBelong','160','模拟实训报表','','160','1','','','','','','','','','','','','SYS_Designer',null,'2015/11/1 20:25:59','SYS_Designer','2014/11/23 20:27:33','','');


/*************基于新建的财务报表模型，新建四张表，资产负债表(模拟实训)，损益表(模拟实训)，现金流量表(模拟实训)，财务指标表(模拟实训)*****************/
--SELECT * FROM CODE_LIBRARY where CodeNo = 'FinanceBelong' and itemno = '160';

INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1600','资产负债表(模拟实训)','月报','','资产负债表(模拟实训)','160','','','2','资 产&行次&期末调整值&年初值&负债及股东权益&行次&期末调整值&年初值&','','');
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1610','损益表(模拟实训)','月报','','损益表(模拟实训)','160','','','1','项目&行次&本月调整值&本年累计数&','','');
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1620','现金流量表(模拟实训)','月报','','现金流量表(模拟实训)','160','','','3','项目&行次&金额&','','');
INSERT INTO report_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,MODELABBR,MODELCLASS,ATTRIBUTE1,ATTRIBUTE2,DISPLAYMETHOD,HEADERMETHOD,DELETEFLAG,REMARK) VALUES ('1630','财务指标表(模拟实训)','月报','','财务指标表(模拟实训)','160','','','3','项目&行次&指标值&','','');


/************分别查询出：资产负债表(模拟实训)，损益表(模拟实训)，现金流量表(模拟实训)，财务指标表(模拟实训)************************/
--select * from report_catalog where modelno='1600';
--select * from report_catalog where modelno='1610';
--select * from report_catalog where modelno='1620';
--select * from report_catalog where modelno='1630';



/***************新建四张财务基础表*****************/
--SELECT * FROM report_model where modelno in ('1600','1610','1620','1630');


INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0001','流动资产：','1000','0001','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0002','货币资金','101','0002','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0003','应收账款','104','0003','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0004','减:坏账准备','105','0004','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0005','其他流动资产','800','0005','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0006','流动资产合计','801','0006','','readonly=true;style=background-color:yellow','','{当期.1600.101.右栏}+{当期.1600.104.右栏}-{当期.1600.105.右栏}+{当期.1600.800.右栏}','','',null,'','','{当期.!无对应报表[1600].货币资金[101].右栏}+{当期.!无对应报表[1600].应收帐款[104].右栏}-{当期.!无对应报表[1600].坏帐准备[105].右栏}+{当期.!无对应报表[1600].其他流动资产[800].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0007','固定资产:','1000','0007','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0008','固定资产原值','T1016','0008','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0009','减:累计折旧','118','0009','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0010','在建工程','120','0010','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0011','减:在建工程减值准备','19a','0011','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0012','固定资产合计','802','0014','','readonly=true;style=background-color:yellow','','{当期.1600.T1016.右栏}-{当期.1600.118.右栏}+{当期.1600.120.右栏}-{当期.1600.19a.右栏}','','',null,'','','{当期.!无对应报表[1600].固定资产[T1016].右栏}-{当期.!无对应报表[1600].累计折旧[118].右栏}+{当期.!无对应报表[1600].在建工程[120].右栏}-{当期.!无对应报表[1600].在建工程减值准备[19a].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0013','资产总计','804','0015','','readonly=true;style=background-color:yellow','','{当期.1600.801.右栏}+{当期.1600.802.右栏}','','',null,'','','{当期.!无对应报表[1600].流动资产合计[801].右栏}+{当期.!无对应报表[1600].固定资产合计[802].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0014','流动负债:','1000','0016','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0015','短期借款','201','0017','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0016','应付职工工资','218','0018','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0017','其他流动负债','224','0019','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0018','流动负债合计','805','0020','','readonly=true;style=background-color:yellow','','{当期.1600.201.右栏}+{当期.1600.218.右栏}+{当期.1600.224.右栏}','','',null,'','','{当期.!无对应报表[1600].短期借款[201].右栏}+{当期.!无对应报表[1600].应付工资[218].右栏}+{当期.!无对应报表[1600].其他流动负债[224].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0019','长期负债:','1000','0021','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0020','长期借款','213','0022','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0021','其他长期负债','235','0023','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0022','长期负债合计','806','0024','','readonly=true;style=background-color:yellow','','{当期.1600.213.右栏}+{当期.1600.235.右栏}','','',null,'','','{当期.!无对应报表[1600].长期借款[213].右栏}+{当期.!无对应报表[1600].其他长期负债[235].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0023','负债合计','807','0025','','readonly=true;style=background-color:yellow','','{当期.1600.805.右栏}+{当期.1600.806.右栏}','','',null,'','','{当期.!无对应报表[1600].流动负债合计[805].右栏}+{当期.!无对应报表[1600].长期负债合计[806].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0024','所有者权益:','1000','0026','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0025','实收资本','301','0027','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0026','资本公积','302','0028','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0027','所有者权益合计','808','0029','','readonly=true;style=background-color:yellow','','{当期.1600.301.右栏}+{当期.1600.302.右栏}','','',null,'','','{当期.!无对应报表[1600].实收资本[301].右栏}+{当期.!无对应报表[1600].资本公积[302].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0028','负债及所有者权益总计','809','0030','','readonly=true;style=background-color:yellow','','{当期.1600.807.右栏}+{当期.1600.808.右栏}','','',null,'','','{当期.!无对应报表[1600].负债合计[807].右栏}+{当期.!无对应报表[1600].所有者权益合计[808].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0029','','','0012','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1600','0030','','','0013','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0001','一、营业收入','T3143','0001','','readonly=true;style=background-color:yellow','','{当期.1610.02003.右栏}+{当期.1610.T3115.右栏}','','',null,'','','{当期.!无对应报表[1610].手续费收入[02003].右栏}+{当期.!无对应报表[1610].其他业务收入[T3115].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0002','手续费收入','02003','0002','','','','{当期.1610.02003.左栏}+{本年上期.1610.02003.右栏}','','',null,'','','{当期.!无对应报表[1610].手续费收入[02003].左栏}+{本年上期.!无对应报表[1610].手续费收入[02003].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0003','其他业务收入','T3115','0003','','','','{当期.1610.T3115.左栏}+{本年上期.1610.T3115.右栏}','','',null,'','','{当期.!无对应报表[1610].其他业务收入[T3115].左栏}+{本年上期.!无对应报表[1610].其他业务收入[T3115].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0004','二、业务成本','554','0004','','readonly=true;style=background-color:yellow','','{当期.1610.T3202.右栏}+{当期.1610.385.右栏}','','',null,'','','{当期.!无对应报表[1610].营业税金及附加[T3202].右栏}+{当期.!无对应报表[1610].其他支出[385].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0005','营业税金及附加','T3202','0005','','','','{当期.1610.T3202.左栏}+{本年上期.1610.T3202.右栏}','','',null,'','','{当期.!无对应报表[1610].营业税金及附加[T3202].左栏}+{本年上期.!无对应报表[1610].营业税金及附加[T3202].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0006','其他支出','385','0006','','','','{当期.1610.385.左栏}+{本年上期.1610.385.右栏}','','',null,'','','{当期.!无对应报表[1610].其他支出[385].左栏}+{本年上期.!无对应报表[1610].其他支出[385].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0007','三、营业利润','509','0007','','readonly=true;style=background-color:yellow','','{当期.1610.512.右栏}-{当期.1610.513.右栏}','','',null,'','','{当期.!无对应报表[1610].营业外收入[512].右栏}-{当期.!无对应报表[1610].营业外支出[513].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0008','营业外收入','512','0008','','','','{当期.1610.512.左栏}+{本年上期.1610.512.右栏}','','',null,'','','{当期.!无对应报表[1610].营业外收入[512].左栏}+{本年上期.!无对应报表[1610].营业外收入[512].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1610','0009','减:营业外支出','513','0009','','','','{当期.1610.513.左栏}+{本年上期.1610.513.右栏}','','',null,'','','{当期.!无对应报表[1610].营业外支出[513].左栏}+{本年上期.!无对应报表[1610].营业外支出[513].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0001','一、经营活动的现金流量','1000','0001','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0002','销售商品、提供劳务收到的现金','601','0002','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0003','收到的其他与经营活动有关的现金','a19','0003','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0004','经营活动产生现金流入小计','T4110','0004','','readonly=true;style=background-color:yellow','','{当期.1620.601.右栏}+{当期.1620.a19.右栏}','','',null,'','','{当期.!无对应报表[1620].销售商品、提供劳务收到的现金[601].右栏}+{当期.!无对应报表[1620].收到的其他与经营活动有关的现金[a19].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0005','购买商品、接受劳务支付的现金','976','0005','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0006','支付的其他与经营活动有关的现金','a26','0006','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0007','经营活动产生现金流出小计','a27','0007','','readonly=true;style=background-color:yellow','','{当期.1620.976.右栏}+{当期.1620.a26.右栏}','','',null,'','','{当期.!无对应报表[1620].商品销售率[976].右栏}+{当期.!无对应报表[1620].支付的其他与经营活动有关的现金[a26].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0008','经营活动产生的现金流量净额','610','0008','','readonly=true;style=background-color:yellow','','{当期.1620.T4110.右栏}-{当期.1620.a27.右栏}','','',null,'','','{当期.!无对应报表[1620].经营活动产生的现金流入小计[T4110].右栏}-{当期.!无对应报表[1620].经营活动产生现金流出小计[a27].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0009','二、投资活动的现金流量','1000','0009','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0010','收回投资所收到的现金','a28','0010','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0011','收到其他与投资活动有关的现金','420','0011','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0012','投资活动现金流入小计','a33','0012','','readonly=true;style=background-color:yellow','','{当期.1620.a28.右栏}+{当期.1620.420.右栏}','','',null,'','','{当期.!无对应报表[1620].收回投资所收到的现金[a28].右栏}+{当期.!无对应报表[1620].收回投资收到的现金[420].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0013','购建固定资产、无形资产和其他长期资产所支付的现金净额','a34','0013','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0014','支付的其他与投资活动有关的现金','a37','0014','','','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0015','投资活动现金流出小计','a38','0015','','readonly=true;style=background-color:yellow','','{当期.1620.a34.右栏}+{当期.1620.a37.右栏}','','',null,'','','{当期.!无对应报表[1620].购建固定资产、无形资产和其他长期资产所支付的现金净额[a34].右栏}+{当期.!无对应报表[1620].支付的其他与投资活动有关的现金[a37].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1620','0016','投资活动产生的现金流量净额','T4213','0016','','readonly=true;style=background-color:yellow','','{当期.1620.a33.右栏}-{当期.1620.a38.右栏}','','',null,'','','{当期.!无对应报表[1620].投资活动现金流入小计[a33].右栏}-{当期.!无对应报表[1620].投资活动现金流出小计[a38].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0001','一、流动性','1000','0001','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0002','资本现金率','658','0002','','','','{当期.1600.101.右栏}/{当期.1600.301.右栏}','','',null,'','','{当期.!无对应报表[1600].货币资金[101].右栏}/{当期.!无对应报表[1600].实收资本[301].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0003','流动比率','915','0003','','','','{当期.1600.801.右栏}/{当期.1600.805.右栏}','','',null,'','','{当期.!无对应报表[1600].流动资产合计[801].右栏}/{当期.!无对应报表[1600].流动负债合计[805].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0004','二、盈利能力','1000','0004','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0005','营业利润率','902','0005','','','','{当期.1610.509.右栏}/{当期.1610.T3143.右栏}','','',null,'','','{当期.!无对应报表[1610].营业利润[509].右栏}/{当期.!无对应报表[1610].营业收入合计[T3143].右栏}');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0006','三、偿债能力','1000','0006','','readonly=true;style=background-color:#DDDDDD','','','','',null,'','','');
INSERT INTO report_model (MODELNO,ROWNO,ROWNAME,ROWSUBJECT,DISPLAYORDER,ROWDIMTYPE,ROWATTRIBUTE,COL1DEF,COL2DEF,COL3DEF,COL4DEF,STANDARDVALUE,DELETEFLAG,FORMULAEXP1,FORMULAEXP2) VALUES ('1630','0007','资产负债率','T6051','0007','','','','{当期.1600.807.右栏}/{当期.1600.804.右栏}','','',null,'','','{当期.!无对应报表[1600].负债合计[807].右栏}/{当期.!无对应报表[1600].资产总计[804].右栏}');



