/*Evaluate02*/
--jkuang 增加一条财务报表类型“企业信用等级评估”   20151126
--SELECT * FROM code_library where codeno='EvaluateModelType' and itemno='0020';
INSERT INTO code_library (CODENO,ITEMNO,ITEMNAME,BANKNO,SORTNO,ISINUSE,ITEMDESCRIBE,ITEMATTRIBUTE,RELATIVECODE,ATTRIBUTE1,ATTRIBUTE2,ATTRIBUTE3,ATTRIBUTE4,ATTRIBUTE5,ATTRIBUTE6,ATTRIBUTE7,ATTRIBUTE8,INPUTUSER,INPUTORG,INPUTTIME,UPDATEUSER,UPDATETIME,REMARK,HELPTEXT) VALUES ('EvaluateModelType','0020','企业信用等级评估',null,'0020','1',null,null,'AccountMonthInputType=select;AccountMonthSelectSQL=select ReportDate ||''@''||reportscope || ''@''|| customerid,ReportDate || '' ''|| getItemName(''ReportScope'',reportscope) as reportscopename from CUSTOMER_FSRECORD where CustomerID  = ''#ObjectNo'' and reportstatus = ''02'' order by ReportDate DESC;DefaultModelNoSQL=select CreditBelong from ENT_INFO where CustomerID= ''#ObjectNo'';AccountMonthExplanation=填写过[企业财务报表]的月份;DisplayFinalResult=Y;DisplayItemScore=Y;ButtonSaveFace=保存;ButtonCalcFace=测算;ButtonDelFace=删除;ButtonCloseFace=返回;ItemValueDisplayWidth=100;',null,null,null,null,null,null,null,null,'system','9900','2006/10/01 01:01:01','system','2006/10/01 01:01:01',null,null);


--jkuang 插入02信用等级评估
--SELECT * FROM code_library where codeno='CreditTempletType' and itemno='610';
INSERT INTO code_library (CODENO,ITEMNO,ITEMNAME,BANKNO,SORTNO,ISINUSE,ITEMDESCRIBE,ITEMATTRIBUTE,RELATIVECODE,ATTRIBUTE1,ATTRIBUTE2,ATTRIBUTE3,ATTRIBUTE4,ATTRIBUTE5,ATTRIBUTE6,ATTRIBUTE7,ATTRIBUTE8,INPUTUSER,INPUTORG,INPUTTIME,UPDATEUSER,UPDATETIME,REMARK,HELPTEXT) VALUES ('CreditTempletType','610','02信用等级评估','','610','1','610','','','','','','','','','','','system','9900','2006/10/01 01:01:01','SYS_Designer','2013/12/16 16:20:41','','');

--jkuang 插入02信用等级评估
--SELECT * FROM evaluate_catalog where modelno='610';
INSERT INTO evaluate_catalog (MODELNO,MODELNAME,MODELTYPE,MODELDESCRIBE,TRANSFORMMETHOD,REMARK) VALUES ('610','02信用等级评估','010','','if(#TotalScore<40,"D",if(#TotalScore<45,"C",if(#TotalScore<50,"CC",if(#TotalScore<60,"CCC",if(#TotalScore<65,"B",if(#TotalScore<70,"BB",if(#TotalScore<80,"BBB",if(#TotalScore<85,"A",if(#TotalScore<90,"AA","AAA")))))))))','');

--jkuang 插入02信用等级评估
--SELECT * FROM evaluate_model where modelno='610';

INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','010','1','主要经营管理者素质','','!公用方法.取得模型单项值(#SerialNo,015)+!公用方法.取得模型单项值(#SerialNo,030)+!公用方法.取得模型单项值(#SerialNo,060)+!公用方法.取得模型单项值(#SerialNo,070)','','Number','if(#ItemValue>4,4,#ItemValue)',1.000000,'（董事长、正副总经理、财务总监）');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','015','1.1','学历得分','','!公用方法.取得模型单项值(#SerialNo,020)+!公用方法.取得模型单项值(#SerialNo,025)','','Number','if(#ItemValue>2,2,#ItemValue)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','020','1.1.1','学历','','','2学历','Number','if(#ItemValue=1,1.2,if(#ItemValue=2,1,if(#ItemValue=3,0.8,0.5)))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','025','1.1.2','总经理博士','','','2是否','Number','if(#ItemValue=1,1,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','030','1.2','总经理本职年限','','!公用方法.取得模型单项值(#SerialNo,040)+!公用方法.取得模型单项值(#SerialNo,050)','','Number','if(#ItemValue>2,2,#ItemValue)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','040','1.2.1','行业年限','','','2行业年限','Number','if(#ItemValue=1,1if(#ItemValue=2,0.5,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','050','1.2.2','职务年限','','','2职务年限','Number','if(#ItemValue=1,1,if(#ItemValue=2,0.5,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','060','1.3','法人代表有无逃废债记录','','','2有无','Number','if(#ItemValue=1,-10.0,0.0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','070','1.4','总经理是全国劳模','','','2是否','Number','if(#ItemValue=1,1,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','080','2','企业经营管理素质','','!公用方法.取得模型单项值(#SerialNo,090)+!公用方法.取得模型单项值(#SerialNo,100)+!公用方法.取得模型单项值(#SerialNo,150)+!公用方法.取得模型单项值(#SerialNo,180)+!公用方法.取得模型单项值(#SerialNo,190)+!公用方法.取得模型单项值(#SerialNo,200)+!公用方法.取得模型单项值(#SerialNo,220)+!公用方法.取得模型单项值(#SerialNo,230)+!公用方法.取得模型单项值(#SerialNo,280)+!公用方法.取得模型单项值(#SerialNo,290)+!公用方法.取得模型单项值(#SerialNo,340)','','Number','',1.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','090','2.1','企业产权制度','','','2企业产权制度','Number','if(#ItemValue=1,3.5,if(#ItemValue=2,2.5,if(#ItemValue=3,2,if(#ItemValue=4,1.5,if(#ItemValue=5,1,0)))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','100','2.2','企业组织机构设置','','!公用方法.取得模型单项值(#SerialNo,110)+!公用方法.取得模型单项值(#SerialNo,120)+!公用方法.取得模型单项值(#SerialNo,130)+!公用方法.取得模型单项值(#SerialNo,140)','','Number','',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','110','2.2.1.1','董事会','','','2董事会','Number','if(#ItemValue=1,0.4,if(#ItemValue=2,0.2,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','120','2.2.1.2','监事会','','','2监事会','Number','if(#ItemValue=1,0.2,if(#ItemValue=2,0.1,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','130','2.2.2','人、财、物、产、供、销6个部门','','','2.6个部门','Number','',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','140','2.2.3','家族企业','','','2是否','Number','if(#ItemValue=1,-1.5,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','150','2.3','管理制度','','!公用方法.取得模型单项值(#SerialNo,160)+!公用方法.取得模型单项值(#SerialNo,170)','','Number','',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','160','2.3.1','财务制度','','','2有无','Number','if(#ItemValue=1,0.25,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','170','2.3.2','供产销制度','','','2有无','Number','if(#ItemValue=1,0.25,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','180','2.4','企业经营年限（是否一年以内）','','','2是否','Number','if(#ItemValue=1,-2,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','190','2.5','控股投资人背景','','','2控股投资人背景','Number','if(#ItemValue=1,3,if(#ItemValue=2,2,if(#ItemValue=3,2,if(#ItemValue=4,1,if(#ItemValue=5,1,if(#ItemValue=6,0,-2))))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','200','2.6','控股投资人与其关系','','','2控股投资人与其关系','Number','if(#ItemValue=1,2,if(#ItemValue=2,1.5,if(#ItemValue=3,0,-2)))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','210','2.7','经营管理目标','','','2有无','Number','if(#ItemValue=1,0.5,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','220','2.8','营销策略及措施','','','2有无','Number','if(#ItemValue=1,0.5,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','230','2.9','融资渠道','','!公用方法.取得模型单项值(#SerialNo,240)+!公用方法.取得模型单项值(#SerialNo,250)+!公用方法.取得模型单项值(#SerialNo,260)+!公用方法.取得模型单项值(#SerialNo,265)+!公用方法.取得模型单项值(#SerialNo,270)','','Number','if(#ItemValue>6,6,#ItemValue)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','240','2.9.1.1','上市','','','2上市','Number','if(#ItemValue=1,4,if(#ItemValue=2,1,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','250','2.9.1.2','发债','','','2发债','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,2,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','260','2.9.2','银行融资','','','2银行融资','Number','if(#ItemValue=1,3,if(#ItemValue=2,2.5,if(#ItemValue=3,2,if(#ItemValue=4,1,0))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','265','2.9.2.1','企业取得公开授信额度','','','2是否','Number','if(#ItemValue=1,1,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','270','2.9.3','商业融资','','','2是否','Number','if(#ItemValue=1,0.5,0)',0.000000,'主动取得商业信用');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','280','2.a','投资策略','','','2投资策略','Number','if(#ItemValue=1,1.5,if(#ItemValue=2,1,if(#ItemValue=3,0.5,if(#ItemValue=4,0,1))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','290','2.b','企业信用度','','!公用方法.取得模型单项值(#SerialNo,300)+!公用方法.取得模型单项值(#SerialNo,310)+!公用方法.取得模型单项值(#SerialNo,320)+!公用方法.取得模型单项值(#SerialNo,330)','','Number','',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','300','2.b.1','有无欠息','','','2有无欠息','Number','if(#ItemValue=1,3,if(#ItemValue=2,1.5,if(#ItemValue=3,0,if(#ItemValue=4,3,6))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','310','2.b.2','有无逾期','','','2有无逾期','Number','if(#ItemValue=1,3,if(#ItemValue=2,1.5,if(#ItemValue=3,0,if(#ItemValue=4,3,6))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','320','2.b.3','有无退票','','','2有无','Number','if(#ItemValue=1,1,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','330','2.b.4','贷款中有无借新还旧或展期','','','2有无','Number','if(#ItemValue=1,1,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','340','2.c','成长性','','','2成长性','Number','if(#ItemValue=1,1,if(#ItemValue=2,0,-1))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','350','3','主导产品及技术创新','','!公用方法.取得模型单项值(#SerialNo,360)+!公用方法.取得模型单项值(#SerialNo,370)+!公用方法.取得模型单项值(#SerialNo,380)+!公用方法.取得模型单项值(#SerialNo,410)+!公用方法.取得模型单项值(#SerialNo,420)+!公用方法.取得模型单项值(#SerialNo,430)+!公用方法.取得模型单项值(#SerialNo,440)+!公用方法.取得模型单项值(#SerialNo,450)+!公用方法.取得模型单项值(#SerialNo,460)','','Number','',1.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','360','3.1','质量','','','2质量','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.3,if(#ItemValue=3,0,-0.5)))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','370','3.2','产销率','','','2产销率','Number','if(#ItemValue=1,1.5,if(#ItemValue=2,1,if(#ItemValue=3,0.5,0)))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','380','3.3','市场占有率','','!公用方法.取得模型单项值(#SerialNo,390)+!公用方法.取得模型单项值(#SerialNo,400)','','Number','if(#ItemValue>1.2,1.2,#ItemValue)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','390','3.3.1','全国','','','2全国','Number','if(#ItemValue=1,2,if(#ItemValue=2,0.8,if(#ItemValue=3,0.6,if(#ItemValue=4,0.4,0))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','400','3.3.2','省、市','','','2省、市','Number','if(#ItemValue=1,1.2,if(#ItemValue=2,0.8,if(#ItemValue=3,0.4,0)))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','410','3.4.1','通过ISO系列质量管理认证','','','2是否','Number','if(#ItemValue=1,1,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','420','3.4.2','获欧美日产品准入证','','','2是否','Number','if(#ItemValue=1,2,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','430','3.5','技术人员的比重','','','2技术人员的比重','Number','if(#ItemValue=1,1,if(#ItemValue=2,0.5,if(#ItemValue=3,0.3,if(#ItemValue=4,0.1,0))))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','440','3.6','科研经费的比重','','','2科研经费的比重','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.3,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','450','3.7','科研组织','','','2科研组织','Number','if(#ItemValue=1,1,if(#ItemValue=2,0.5,if(#ItemValue=3,0.3,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','460','3.8','产品更新换代','','','2产品更新换代','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.3,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','470','4','经营环境、市场环境','','!公用方法.取得模型单项值(#SerialNo,480)+!公用方法.取得模型单项值(#SerialNo,510)+!公用方法.取得模型单项值(#SerialNo,520)+!公用方法.取得模型单项值(#SerialNo,530)+!公用方法.取得模型单项值(#SerialNo,580)+!公用方法.取得模型单项值(#SerialNo,590)','','Number','',1.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','480','4.1','产业政策','','!公用方法.取得模型单项值(#SerialNo,490)+!公用方法.取得模型单项值(#SerialNo,500)','','Number','if(#ItemValue>2,2,#ItemValue)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','490','4.1.1','国家','','','2国家','Number','if(#ItemValue=1,2,if(#ItemValue=2,1,if(#ItemValue=3,0,2)))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','500','4.1.2','地方','','','2是否','Number','if(#ItemValue=1,1,0)',0.000000,'被当地列为支柱产业');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','510','4.2','税收政策','','','2税收政策','Number','if(#ItemValue=1,1,if(#ItemValue=2,0,1)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','520','4.3','行业门槛（专有技术）','','','2行业门槛（专有技术）','Number','if(#ItemValue=1,1,if(#ItemValue=2,0.5,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','530','4.4','投资环境','','!公用方法.取得模型单项值(#SerialNo,540)+!公用方法.取得模型单项值(#SerialNo,550)+!公用方法.取得模型单项值(#SerialNo,560)+!公用方法.取得模型单项值(#SerialNo,570)','','Number','',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','540','4.4.1','信息','','','2信息','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.25,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','550','4.4.2','人力资源','','','2人力资源','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.25,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','560','4.4.3','法律保障','','','2法律保障','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.25,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','570','4.4.4','基础设施','','','2基础设施','Number','if(#ItemValue=1,0.5,if(#ItemValue=2,0.25,0))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','580','4.5','市场竞争状态','','','2市场竞争状态','Number','if(#ItemValue=1,1,if(#ItemValue=2,0,-1))',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','590','4.6','行业排名全国前五','','','2是否','Number','if(#ItemValue=1,2,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','600','5','重大事项','','!公用方法.取得模型单项值(#SerialNo,610)+!公用方法.取得模型单项值(#SerialNo,620)+!公用方法.取得模型单项值(#SerialNo,630)+!公用方法.取得模型单项值(#SerialNo,640)+!公用方法.取得模型单项值(#SerialNo,650)','','Number','',1.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','610','5.1','有重大诉讼纠纷（合计净资产10%以上）','','','2有无','Number','if(#ItemValue=1,-5,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','620','5.2','主要经营管理人员的经济犯罪','','','2有无','Number','if(#ItemValue=1,-3,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','630','5.3','重大违规经营（走私、偷漏税、骗取银行贷款等）','','','2有无','Number','if(#ItemValue=1,-5,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','640','5.4','重大事故造成重大损失（超过净资产20%以上）','','','2有无','Number','if(#ItemValue=1,-5,0)',0.000000,'');
INSERT INTO evaluate_model (MODELNO,ITEMNO,DISPLAYNO,ITEMNAME,ITEMATTRIBUTE,VALUEMETHOD,VALUECODE,VALUETYPE,EVALUATEMETHOD,COEFFICIENT,REMARK) VALUES ('610','650','5.5','重大投资失败（超过净资产20%以上）','','','2有无','Number','if(#ItemValue=1,-5,0)',0.000000,'');


