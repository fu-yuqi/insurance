-- flexibleint.fa_channel definition

CREATE TABLE `fa_channel` (
  `channel_code` varchar(20) NOT NULL COMMENT '渠道编码\n            IYB     i云保\n            EJ    e家\n            DBY    德保源',
  `channel_name` varchar(200) NOT NULL COMMENT '渠道名称\n            IYB    i云保\n            DBY    德保源\n            EJ    e家',
  `channel_type` varchar(2) NOT NULL COMMENT '渠道类型\n            03 专业代理\n            04 兼业代理\n            05 经纪',
  `is_id_check` varchar(2) NOT NULL DEFAULT '' COMMENT '是否查验  0-否  1-是',
  `platform_grp_desc` varchar(2000) NOT NULL DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`channel_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='中介云渠道信息表';


-- flexibleint.fa_com_to_market_agent definition

CREATE TABLE `fa_com_to_market_agent` (
  `agent_com` varchar(20) NOT NULL COMMENT '代理机构代码',
  `branch_type` varchar(1) NOT NULL COMMENT '渠道',
  `agent_code` varchar(20) NOT NULL COMMENT '销售人员编码',
  `operator` varchar(10) DEFAULT NULL COMMENT '操作人',
  `makedate` date DEFAULT NULL COMMENT '操作日期',
  `maketime` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `modifydate` date DEFAULT NULL COMMENT '修改日期',
  `modifytime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `start_date` date DEFAULT NULL COMMENT '起始日期',
  `end_date` date DEFAULT NULL,
  `state` varchar(2) NOT NULL COMMENT '当前状态  0无效 1有效',
  PRIMARY KEY (`agent_com`,`agent_code`,`branch_type`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='中介机构销售人员关联表';


-- flexibleint.fa_combo definition

CREATE TABLE `fa_combo` (
  `combo_code` varchar(20) NOT NULL COMMENT '套餐编码',
  `ensure_type` varchar(3) NOT NULL COMMENT '保障类型\n E01 A\n            E02 B\n            E03 C\n            E04 D\n            E05 E',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`combo_code`,`ensure_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='中介云套餐表';


-- flexibleint.fa_market_agent definition

CREATE TABLE `fa_market_agent` (
  `market_agent_code` varchar(30) NOT NULL COMMENT '销管工号',
  `agent_com` varchar(30) DEFAULT NULL COMMENT '代理机构',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `id_type` varchar(2) DEFAULT NULL COMMENT '证件类型',
  `id_no` varchar(100) DEFAULT NULL COMMENT '证件号',
  `degree` varchar(2) DEFAULT NULL COMMENT '学历',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `join_date` date DEFAULT NULL COMMENT '入司日期',
  `out_work_date` date DEFAULT NULL COMMENT '离职日期',
  `agent_state` varchar(2) DEFAULT NULL COMMENT '在职状态',
  `risk_wn` varchar(2) DEFAULT NULL COMMENT '是否有万能险资格',
  `risk_wn_code` varchar(50) DEFAULT NULL COMMENT '万能险销售资格证号',
  `agent_com_id` varchar(20) DEFAULT NULL COMMENT '代理公司内部工号',
  `black_code` varchar(2) DEFAULT NULL COMMENT '是否黑名单',
  `black_reason` varchar(200) DEFAULT NULL COMMENT '黑名单原因',
  `sup_agent_code` varchar(30) DEFAULT NULL COMMENT '督导代码',
  `sup_agent_name` varchar(20) DEFAULT NULL COMMENT '督导姓名',
  `empoly_date` date DEFAULT NULL COMMENT '中介入职时间',
  `operator` varchar(10) DEFAULT NULL COMMENT '操作人',
  `makedate` date DEFAULT NULL COMMENT '操作日期',
  `make_time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `modifydate` date DEFAULT NULL COMMENT '修改日期',
  `modifytime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `is_micrinvest` varchar(2) DEFAULT NULL COMMENT '是否有微投资格',
  `branch_type` varchar(1) DEFAULT NULL COMMENT '渠道',
  `free2` varchar(100) DEFAULT NULL COMMENT '备用字段1  执业证号',
  `free3` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `free4` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`market_agent_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='销售人员信息表';


-- flexibleint.fa_qualification definition

CREATE TABLE `fa_qualification` (
  `serial_no` int(11) NOT NULL COMMENT '主键',
  `agent_code` varchar(20) DEFAULT '',
  `agent_type` varchar(1) DEFAULT '',
  `qlfycard_no` varchar(30) DEFAULT '',
  `qlfycard_type_no` varchar(1) DEFAULT '',
  `qlfycard_type_name` varchar(30) DEFAULT '',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `state` varchar(1) DEFAULT '',
  `dev_no` varchar(30) DEFAULT '',
  `dev_no2` varchar(30) DEFAULT '',
  `operator` varchar(30) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`serial_no`),
  KEY `fa_qualification_agent_code_IDX` (`agent_code`) USING BTREE,
  KEY `fa_qualification_dev_no_IDX` (`dev_no`) USING BTREE,
  KEY `fa_qualification_dev_no2_IDX` (`dev_no2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fc_grp definition

CREATE TABLE `fc_grp` (
  `grp_no` varchar(10) NOT NULL,
  `salesman_id` varchar(20) NOT NULL DEFAULT '' COMMENT '业务员编号',
  `grpno_up` varchar(20) NOT NULL DEFAULT '' COMMENT '上级企业客户号\n            若该字段为空，则说明该企业是总公司',
  `grp_level` varchar(2) NOT NULL DEFAULT '0' COMMENT '0-表示总公司\n            1-表示一级分公司\n            2-表示二级分公司\n            3-表示三级分公司\n            4-表示四级分公司',
  `grp_name` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `manage_area` varchar(100) NOT NULL DEFAULT '' COMMENT '经营范围',
  `register_no` varchar(20) NOT NULL DEFAULT '' COMMENT '工商注册号',
  `manage_no` varchar(20) NOT NULL DEFAULT '' COMMENT '组织机构',
  `business_type` varchar(20) NOT NULL DEFAULT '' COMMENT '行业分类',
  `grp_type` varchar(10) NOT NULL DEFAULT '' COMMENT '单位性质',
  `id_type` varchar(2) NOT NULL DEFAULT '' COMMENT '企业证件类型\n            \r\n6 统一社会信息代码\n            \r\n2 组织机构代码',
  `id_no` varchar(50) NOT NULL DEFAULT '' COMMENT '企业证件号码',
  `id_validate` date NOT NULL COMMENT '企业证件有效期\n            长期9999-12-12',
  `peoples` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '单位总人数',
  `corporation_man` varchar(50) NOT NULL DEFAULT '' COMMENT '企业法人代表',
  `operator_name` varchar(50) NOT NULL DEFAULT '' COMMENT '经营者姓名',
  `endor_period` varchar(50) NOT NULL DEFAULT '' COMMENT '保全追溯期间',
  `endor_period_unit` char(1) NOT NULL DEFAULT '' COMMENT '保全追溯期间单位\r\n保全追溯期间单位\r\nY 年\r\nM 月\r\nD 日',
  `country` varchar(10) NOT NULL DEFAULT 'CHN' COMMENT '国家',
  `province` varchar(10) NOT NULL COMMENT '省',
  `city` varchar(10) NOT NULL COMMENT '市',
  `county` varchar(10) NOT NULL COMMENT '区县',
  `address` varchar(500) NOT NULL COMMENT '单位地址',
  `fixedtel` varchar(20) NOT NULL DEFAULT '' COMMENT '企业固定电话',
  `phone` varchar(18) NOT NULL DEFAULT '' COMMENT '企业电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '企业传真',
  `zip_code` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '企业e_mail',
  `is_auth` char(1) NOT NULL DEFAULT '' COMMENT '是否认证\r\n0 否\r\n1 是',
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`grp_no`),
  UNIQUE KEY `grp_no` (`grp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业客户表';


-- flexibleint.fc_grp_contact definition

CREATE TABLE `fc_grp_contact` (
  `id` varchar(10) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(11) NOT NULL,
  `operator` varchar(10) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业联系人表';


-- flexibleint.fc_grp_contact_temp definition

CREATE TABLE `fc_grp_contact_temp` (
  `user_grp_id` varchar(15) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(11) NOT NULL,
  `operator` varchar(10) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`user_grp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业联系人临时表';


-- flexibleint.fc_grp_size_info definition

CREATE TABLE `fc_grp_size_info` (
  `grp_id_no` varchar(50) NOT NULL DEFAULT '' COMMENT '企业证件号',
  `employees_number` varchar(10) DEFAULT '0' COMMENT '从业人员人数',
  `grp_revenue` varchar(10) DEFAULT '' COMMENT '企业营收',
  `assets_total` varchar(10) DEFAULT '' COMMENT '资产总额',
  `main_business` varchar(20) NOT NULL DEFAULT '' COMMENT '主营业务',
  `grp_size` varchar(2) DEFAULT '' COMMENT '企业规模标识',
  `segment1` varchar(20) DEFAULT '',
  `segment2` varchar(20) DEFAULT '',
  `segment3` varchar(20) DEFAULT '',
  `operator` varchar(10) DEFAULT NULL COMMENT '操作人员',
  `operatorcom` varchar(20) DEFAULT NULL COMMENT '操作机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`grp_id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业规模信息';


-- flexibleint.fc_grp_size_info_statistics definition

CREATE TABLE `fc_grp_size_info_statistics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `manage_com_branch` varchar(8) NOT NULL DEFAULT '' COMMENT '承保机构编码',
  `manage_com_branch_name` varchar(100) NOT NULL DEFAULT '' COMMENT '承保机构名称',
  `grp_name` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `grp_id_no` varchar(100) NOT NULL DEFAULT '' COMMENT '企业证件号',
  `bussiness_type` varchar(2) NOT NULL DEFAULT '' COMMENT '行业类型',
  `bussiness_name` varchar(30) NOT NULL DEFAULT '' COMMENT '企业行业名称',
  `grp_revenue` varchar(100) DEFAULT '' COMMENT '企业营收',
  `employees_number` varchar(100) DEFAULT '' COMMENT '从业人员人数',
  `assets_total` varchar(100) DEFAULT '' COMMENT '资产总额',
  `main_business` varchar(100) DEFAULT '' COMMENT '主营业务',
  `is_sync` varchar(1) DEFAULT '0' COMMENT '是否同步  0-否 1-是',
  `error_message` varchar(300) DEFAULT '' COMMENT '错误信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100817 DEFAULT CHARSET=utf8mb4 COMMENT='企业信息统计表';


-- flexibleint.fc_person definition

CREATE TABLE `fc_person` (
  `per_no` varchar(10) NOT NULL,
  `staff_no` varchar(60) NOT NULL DEFAULT '' COMMENT '员工编号',
  `staff_level_code` varchar(20) NOT NULL DEFAULT '' COMMENT '员工层级编码',
  `person_name` varchar(100) NOT NULL DEFAULT '',
  `sex` varchar(2) NOT NULL DEFAULT '',
  `id_type` varchar(2) NOT NULL DEFAULT '' COMMENT '0--身份证\n            1--护照\n            2--军官证\n            3--驾照\n            4--户口本\n            5--学生证\n            6--工作证\n            8--其他\n            9--无证件\n            a--社保号',
  `id_no` varchar(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '' COMMENT '固定电话',
  `mobilephone` varchar(11) NOT NULL DEFAULT '' COMMENT '移动电话',
  `occupation_type` varchar(20) NOT NULL DEFAULT '' COMMENT '职业类别',
  `entry_date` date DEFAULT NULL COMMENT '入职日期',
  `occupation_code` varchar(20) NOT NULL DEFAULT '' COMMENT '工种',
  `is_hired` varchar(1) NOT NULL DEFAULT '' COMMENT '0-在职\n            1-退休',
  `is_new` varchar(1) NOT NULL DEFAULT '' COMMENT '为了在提交订单的时候使用，新入职员工走另外一个接口，0为老员工，1为新员工',
  `work_place` varchar(200) NOT NULL DEFAULT '',
  `is_medicalinsurance` varchar(1) NOT NULL DEFAULT '' COMMENT '0-否\n            1-是',
  `is_doubleworker` varchar(2) NOT NULL DEFAULT '',
  `medicalinsurance_type` varchar(2) NOT NULL DEFAULT '' COMMENT '01--城镇职工\n            02--城镇居民\n            03--新农合',
  `email` varchar(100) NOT NULL DEFAULT '',
  `zip_code` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(10) NOT NULL DEFAULT '',
  `province` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(10) NOT NULL DEFAULT '',
  `county` varchar(10) NOT NULL DEFAULT '',
  `edorNo` varchar(20) NOT NULL DEFAULT '' COMMENT '新进入的员工具有此字段，老员工为空，用于确定提交订单的时候确定到是哪一批人',
  `address` varchar(200) NOT NULL DEFAULT '',
  `business` varchar(50) NOT NULL DEFAULT '',
  `id_validtype` varchar(1) NOT NULL DEFAULT '' COMMENT '0-长期有效\n            1-有期有效',
  `expiry_date` date DEFAULT NULL,
  `operator` varchar(11) NOT NULL DEFAULT '',
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL DEFAULT '',
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`per_no`),
  KEY `fcperson_idno_index` (`id_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人客户表';


-- flexibleint.fe_edor_backbank definition

CREATE TABLE `fe_edor_backbank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增流水号',
  `edor_appno` varchar(20) NOT NULL COMMENT '保全流水号',
  `grp_contno` varchar(30) NOT NULL COMMENT '保单号',
  `account_name` varchar(100) DEFAULT '' COMMENT '账户名',
  `bank_code` varchar(50) DEFAULT '' COMMENT '开户银行码值',
  `bank_name` varchar(100) DEFAULT '' COMMENT '开户银行名称',
  `bank_province` varchar(50) DEFAULT '' COMMENT '开户银行所在省',
  `bank_city` varchar(50) DEFAULT '' COMMENT '开户银行所在市',
  `bank_detail_info` varchar(100) DEFAULT '' COMMENT '开户行详细名称',
  `account_no` varchar(50) DEFAULT '' COMMENT '开户银行账户',
  `id_type` varchar(2) DEFAULT '' COMMENT '证件类型',
  `id_no` varchar(50) DEFAULT '' COMMENT '证件号码',
  `phone` varchar(20) DEFAULT '' COMMENT '手机号码',
  `is_sign` varchar(2) DEFAULT '' COMMENT '是否签约鉴权 0-未鉴权  1-已鉴权',
  `operator` varchar(11) NOT NULL COMMENT '操作人员',
  `operatorcom` varchar(20) NOT NULL COMMENT '操作机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` varchar(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` varchar(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COMMENT='保全退费银行信息明细表';


-- flexibleint.fe_edor_pay_lock definition

CREATE TABLE `fe_edor_pay_lock` (
  `edor_appno` varchar(20) NOT NULL DEFAULT '' COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '' COMMENT '保单号',
  `spare_column1` varchar(100) DEFAULT '' COMMENT '备用字段1',
  `spare_column2` varchar(100) DEFAULT '' COMMENT '备用字段2',
  `spare_column3` varchar(100) DEFAULT '' COMMENT '备用字段3',
  `spare_column4` varchar(100) DEFAULT '' COMMENT '备用字段4',
  `spare_column5` varchar(100) DEFAULT '' COMMENT '备用字段5',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '操作员',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '操作机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` varchar(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` varchar(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`edor_appno`,`grp_contno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全业务锁表';


-- flexibleint.fe_edor_track definition

CREATE TABLE `fe_edor_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '',
  `underwrite_flag` varchar(100) NOT NULL DEFAULT '' COMMENT '审核标识 1代表核保  2代表审核',
  `underwrite_result` varchar(10) NOT NULL DEFAULT '' COMMENT '核保结论',
  `underwrite_opinion` varchar(200) NOT NULL DEFAULT '',
  `edor_state` varchar(2) NOT NULL DEFAULT '' COMMENT '批改状态\n            01 申请中\n            02 待核保\n            03 待支付\n            04 支付失败\n            05 保全签发\n            06 核保终止\n            07 已撤销',
  `pay_type` varchar(2) NOT NULL DEFAULT '' COMMENT '支付方式 0-线上支付, 1-线下支付',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=639795 DEFAULT CHARSET=utf8mb4 COMMENT='保全轨迹表';


-- flexibleint.fe_edormain definition

CREATE TABLE `fe_edormain` (
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '',
  `grp_no` varchar(10) NOT NULL,
  `edor_no` varchar(30) NOT NULL DEFAULT '' COMMENT '保全批单号',
  `edor_state` varchar(2) NOT NULL DEFAULT '' COMMENT '批改状态\n            01 申请中\n            02 待核保\n            03 待支付\n            04 支付失败\n            05 保全签发\n            06 核保终止\n            07 已撤销',
  `edor_source` varchar(2) NOT NULL DEFAULT '' COMMENT '保全来源：01-弹福、02-易企保、03-深圳医保',
  `underwrite_result` varchar(10) NOT NULL DEFAULT '' COMMENT '核保结论\n            01 核保通过\n            02 人核处理中\n            03 拒保',
  `underwrite_opinion` varchar(200) NOT NULL DEFAULT '',
  `ensured_num` int(11) NOT NULL,
  `insured_startdate` date NOT NULL,
  `insured_enddate` date NOT NULL COMMENT '团体投保人编号',
  `step_no` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '步骤数',
  `change_prem` decimal(13,2) NOT NULL DEFAULT '0.00',
  `change_amnt` decimal(13,2) NOT NULL DEFAULT '0.00',
  `is_flexible_policy` char(1) NOT NULL DEFAULT '0' COMMENT '是否弹福保单\n            0 否\n            1 是',
  `apply_date` datetime NOT NULL COMMENT '申请时间',
  `commit_date` date DEFAULT NULL,
  `commit_time` varchar(8) NOT NULL DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `effective_time` varchar(8) NOT NULL DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`edor_appno`,`grp_contno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全信息表';


-- flexibleint.fe_grp definition

CREATE TABLE `fe_grp` (
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `grp_contno_list` blob NOT NULL COMMENT '团体保单号列表',
  `grp_no` varchar(10) NOT NULL,
  `salesman_id` varchar(20) NOT NULL DEFAULT '' COMMENT '业务员编号',
  `grpno_up` varchar(20) NOT NULL DEFAULT '' COMMENT '上级企业客户号\n            若该字段为空，则说明该企业是总公司',
  `grp_level` varchar(2) NOT NULL DEFAULT '0' COMMENT '0-表示总公司\n            1-表示一级分公司\n            2-表示二级分公司\n            3-表示三级分公司\n            4-表示四级分公司',
  `grp_name` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `manage_area` varchar(100) NOT NULL DEFAULT '' COMMENT '经营范围',
  `register_no` varchar(20) NOT NULL DEFAULT '' COMMENT '工商注册号',
  `manage_no` varchar(20) NOT NULL DEFAULT '' COMMENT '组织机构',
  `business_type` varchar(20) NOT NULL DEFAULT '' COMMENT '行业分类',
  `grp_type` varchar(10) NOT NULL DEFAULT '' COMMENT '单位性质',
  `id_type` varchar(2) NOT NULL DEFAULT '' COMMENT '企业证件类型\n            \r\n6 统一社会信息代码\n            \r\n2 组织机构代码',
  `id_no` varchar(50) NOT NULL DEFAULT '' COMMENT '企业证件号码',
  `id_validate` date NOT NULL COMMENT '企业证件有效期\n            长期9999-12-12',
  `peoples` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '单位总人数',
  `corporation_man` varchar(50) NOT NULL DEFAULT '' COMMENT '企业法人代表',
  `operator_name` varchar(50) NOT NULL DEFAULT '' COMMENT '经营者姓名',
  `endor_period` varchar(50) NOT NULL DEFAULT '' COMMENT '保全追溯期间',
  `endor_period_unit` char(1) NOT NULL DEFAULT '' COMMENT '保全追溯期间单位\r\n保全追溯期间单位\r\nY 年\r\nM 月\r\nD 日',
  `country` varchar(10) NOT NULL DEFAULT 'CHN' COMMENT '国家',
  `province` varchar(10) NOT NULL COMMENT '省',
  `city` varchar(10) NOT NULL COMMENT '市',
  `county` varchar(10) NOT NULL COMMENT '区县',
  `address` varchar(500) NOT NULL COMMENT '单位地址',
  `fixedtel` varchar(20) NOT NULL DEFAULT '' COMMENT '企业固定电话',
  `phone` varchar(18) NOT NULL DEFAULT '' COMMENT '企业电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '企业传真',
  `zip_code` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '企业e_mail',
  `is_auth` char(1) NOT NULL DEFAULT '' COMMENT '是否认证\r\n0 否\r\n1 是',
  `business_license` varchar(50) DEFAULT NULL COMMENT '营业执照id',
  `last_grp` blob COMMENT '上一个企业信息',
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`edor_appno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业客户变更受理表';


-- flexibleint.fe_grp_account definition

CREATE TABLE `fe_grp_account` (
  `grpacct_id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_no` varchar(10) DEFAULT NULL,
  `pay_bank_code` varchar(50) NOT NULL DEFAULT '',
  `pay_bank_name` varchar(100) NOT NULL DEFAULT '',
  `pay_bank_line` varchar(50) NOT NULL DEFAULT '',
  `pay_account_name` varchar(100) NOT NULL DEFAULT '',
  `pay_account_no` varchar(50) NOT NULL DEFAULT '',
  `pay_province` varchar(50) NOT NULL DEFAULT '',
  `pay_city` varchar(50) NOT NULL DEFAULT '',
  `pay_street` varchar(100) NOT NULL DEFAULT '',
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(50) NOT NULL DEFAULT '',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '',
  `operator` varchar(11) NOT NULL DEFAULT '',
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL DEFAULT '',
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`grpacct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1249 DEFAULT CHARSET=utf8mb4 COMMENT='保全企业账户信息';


-- flexibleint.fe_grp_contact definition

CREATE TABLE `fe_grp_contact` (
  `id` varchar(10) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(11) NOT NULL,
  `operator` varchar(10) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业联系人变更受理表';


-- flexibleint.fe_grp_contact_rela definition

CREATE TABLE `fe_grp_contact_rela` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grpcontact_id` varchar(10) DEFAULT NULL,
  `grp_no` varchar(10) DEFAULT NULL,
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `operator` varchar(11) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPCONTACTRELA_FCGRP` (`grp_no`) USING BTREE,
  KEY `FK_FCGRPCONTACTRELA_FCGRPCONTACT` (`grpcontact_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4 COMMENT='企业与联系人关联变更受理表';


-- flexibleint.fe_impart definition

CREATE TABLE `fe_impart` (
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL DEFAULT '',
  `state` varchar(1) NOT NULL DEFAULT '1' COMMENT '状态\n            0 停用\n            1 正常',
  `impart_param_modle` varchar(1) NOT NULL DEFAULT '',
  `uw_claim_flag` varchar(2) NOT NULL DEFAULT '',
  `have_param_flag` varchar(2) NOT NULL DEFAULT '0',
  `prt_flag` varchar(2) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `impartver_type` varchar(2) NOT NULL DEFAULT '' COMMENT '题目类型\n            1 需要录入\n            2 标题',
  `up_level` varchar(2) NOT NULL DEFAULT '',
  `segment7` varchar(20) NOT NULL DEFAULT '',
  `segment6` varchar(20) NOT NULL DEFAULT '',
  `segment5` varchar(20) NOT NULL DEFAULT '',
  `segment4` varchar(20) NOT NULL DEFAULT '',
  `segment3` varchar(20) NOT NULL DEFAULT '',
  `segment2` varchar(20) NOT NULL DEFAULT '',
  `segment1` varchar(20) NOT NULL DEFAULT '',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`impartver_ver`,`impartver_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健康告知规则';


-- flexibleint.fe_impart_per definition

CREATE TABLE `fe_impart_per` (
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL DEFAULT '',
  `state` varchar(1) NOT NULL DEFAULT '1' COMMENT '状态\n            0 停用\n            1 正常',
  `impart_param_modle` varchar(1) NOT NULL DEFAULT '',
  `uw_claim_flag` varchar(2) NOT NULL DEFAULT '',
  `have_param_flag` varchar(2) NOT NULL DEFAULT '0',
  `prt_flag` varchar(2) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `impartver_type` varchar(2) NOT NULL DEFAULT '' COMMENT '题目类型\n            1 需要录入\n            2 标题',
  `up_level` varchar(2) NOT NULL DEFAULT '',
  `segment7` varchar(20) NOT NULL DEFAULT '',
  `segment6` varchar(20) NOT NULL DEFAULT '',
  `segment5` varchar(20) NOT NULL DEFAULT '',
  `segment4` varchar(20) NOT NULL DEFAULT '',
  `segment3` varchar(20) NOT NULL DEFAULT '',
  `segment2` varchar(20) NOT NULL DEFAULT '',
  `segment1` varchar(20) NOT NULL DEFAULT '',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`impartver_ver`,`impartver_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人健康告知规则';


-- flexibleint.fe_med_phone_track definition

CREATE TABLE `fe_med_phone_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edor_appno` varchar(20) NOT NULL,
  `grp_contno` varchar(20) NOT NULL,
  `cont_no` varchar(20) NOT NULL,
  `user_type` varchar(2) NOT NULL COMMENT '01-投保人，02-被保人',
  `name` varchar(30) NOT NULL,
  `id_no` varchar(20) NOT NULL,
  `old_mobile_no` varchar(20) NOT NULL,
  `new_mobile_no` varchar(20) NOT NULL,
  `state` varchar(2) NOT NULL COMMENT '交互医保局状态：00-成功，01-失败，99-待推送',
  `error_desc` varchar(128) NOT NULL DEFAULT '',
  `makedate` date NOT NULL,
  `maketime` char(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` char(8) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='深圳医保用户手机号变更轨迹表';


-- flexibleint.fe_medinsurance_record definition

CREATE TABLE `fe_medinsurance_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bussType` varchar(10) COLLATE utf8_bin NOT NULL,
  `appNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `subAppNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `appntId` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `grpContNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `contNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `relationToAppnt` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `coreInsuredNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `edorAppNo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `policyConfirmCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `insuredConfirmCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `notarizeState` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `notarizeErrorCode` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `notarizeErrorReason` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `policySource` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `applicationDate` date DEFAULT NULL,
  `applicationTime` char(8) COLLATE utf8_bin DEFAULT NULL,
  `planCode` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `prem` decimal(12,2) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `paymentType` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `transactionNumber` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `refundPrem` decimal(12,2) DEFAULT NULL,
  `refundConfirmCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `stopConfirmCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `refundMoneyStatus` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `failReason` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `refundMoneySerialNumber` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ybFailReason` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `pushState` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `coreErrorMessage` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `district` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `SEGMENT1` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `SEGMENT2` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `SEGMENT3` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `operatorcom` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) COLLATE utf8_bin NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fe_replace_real definition

CREATE TABLE `fe_replace_real` (
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '' COMMENT '保单号',
  `old_insured_id` varchar(20) NOT NULL DEFAULT '' COMMENT '原被保人号',
  `new_insured_id` varchar(20) NOT NULL DEFAULT '' COMMENT '新被保人号',
  `edor_type` varchar(3) NOT NULL DEFAULT '' COMMENT '保全类型',
  `edor_source` varchar(2) NOT NULL DEFAULT '' COMMENT '保全来源：01-弹福、02-易企保、03-深圳医保',
  `param1` varchar(200) NOT NULL DEFAULT '' COMMENT '备用字段1',
  `param2` varchar(200) NOT NULL DEFAULT '' COMMENT '备用字段2',
  `param3` varchar(200) NOT NULL DEFAULT '' COMMENT '备用字段3',
  `param4` varchar(200) NOT NULL DEFAULT '' COMMENT '备用字段4',
  `param5` varchar(200) NOT NULL DEFAULT '' COMMENT '备用字段5',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`edor_appno`,`grp_contno`,`old_insured_id`,`new_insured_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全被保人替换关系表';


-- flexibleint.fm_renewal_info definition

CREATE TABLE `fm_renewal_info` (
  `app_no` varchar(30) NOT NULL,
  `last_app_no` varchar(30) NOT NULL,
  `last_policy_no` varchar(30) NOT NULL,
  `last_cont_no` varchar(30) NOT NULL DEFAULT '',
  `renewal_type` varchar(2) NOT NULL COMMENT '02-续保，03-转保',
  `renewal_times` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_appnt definition

CREATE TABLE `fo_appnt` (
  `appnt_id` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `app_no` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '投保单号',
  `buss_no` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '业务号',
  `appnt_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `birthday` date NOT NULL,
  `id_type` varchar(2) CHARACTER SET utf8mb4 NOT NULL,
  `id_no` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `id_start_date` date DEFAULT NULL,
  `id_end_date` date DEFAULT NULL,
  `is_long_valid` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `id_check_times` varchar(2) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '换证次数',
  `mobile` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(60) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '邮箱',
  `country` varchar(10) CHARACTER SET utf8mb4 DEFAULT '',
  `province` varchar(13) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '省',
  `city` varchar(10) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '市',
  `county` varchar(10) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '区县',
  `address` varchar(200) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '详细地址',
  `zip_code` varchar(10) CHARACTER SET utf8mb4 DEFAULT '',
  `telphone` varchar(30) CHARACTER SET utf8mb4 DEFAULT '',
  `operator` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) COLLATE utf8_bin NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`appnt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fo_benefy definition

CREATE TABLE `fo_benefy` (
  `benefy_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `benefy_name` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '性别:\n            0  男\n            1  女',
  `birthday` date NOT NULL COMMENT '出生日期',
  `id_type` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '证件类型',
  `id_no` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '证件号',
  `mobile` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `occupation_type` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '职业类别',
  `benefy_type` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '受益人类别\n            00 法定\n            01 指定',
  `bnf_rela_insured` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '受益人与被保人关系\n            35	雇员\n            36	有抚养、扶养、赡养关系的家庭其他成员、近亲属\n            37	配偶\n            38	父母\n            39	子女\n            40	祖孙\n            OT	其他',
  `benefy_order` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '受益顺序\n            第一受益人 01\n            第二受益人 02\n            第三受益人 03',
  `benefy_amount` decimal(13,2) DEFAULT NULL COMMENT '受益份额',
  `operator` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) COLLATE utf8_bin NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`benefy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='受益人信息表';


-- flexibleint.fo_cost_detail definition

CREATE TABLE `fo_cost_detail` (
  `cost_no` varchar(20) NOT NULL COMMENT '消费明细号',
  `prem` decimal(13,2) NOT NULL COMMENT '保费',
  `cost_type` varchar(2) NOT NULL DEFAULT '2' COMMENT '消费类型:\n            1 积分\n            2 银行卡\n            如果为积分，数量为积分数\n            ',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`cost_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消费明细表';


-- flexibleint.fo_grp_appnt definition

CREATE TABLE `fo_grp_appnt` (
  `grp_appnt_id` varchar(10) NOT NULL,
  `grp_no` varchar(20) DEFAULT NULL COMMENT '企业客户号\r\n            首次投保未维护企业信息为空\r\n            首次投保个人中心维护企业信息则存真实企业客户号\r\n            二次投保存真实企业客户号',
  `grp_name` varchar(100) NOT NULL DEFAULT '' COMMENT '企业单位名称',
  `business_type` varchar(20) NOT NULL DEFAULT '' COMMENT '行业分类',
  `grp_grade` varchar(10) NOT NULL DEFAULT '' COMMENT '企业总分公司关系',
  `grp_type` varchar(10) NOT NULL DEFAULT '' COMMENT '企业性质\n            01 企业\n            02 个体',
  `grp_id_type` varchar(2) NOT NULL DEFAULT '' COMMENT '单位证件类型',
  `grp_id_no` varchar(30) NOT NULL DEFAULT '' COMMENT '单位证件号码',
  `id_validdate` date NOT NULL,
  `proVince` varchar(10) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `county` varchar(10) NOT NULL DEFAULT '' COMMENT '区县',
  `grp_address` varchar(500) NOT NULL DEFAULT '' COMMENT '单位地址',
  `business_license` varchar(50) NOT NULL DEFAULT '',
  `business_regnum` varchar(20) NOT NULL DEFAULT '' COMMENT '工商注册号',
  `operator_name` varchar(50) NOT NULL DEFAULT '' COMMENT '经营者姓名',
  `fixed_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '单位固定电话',
  `phone` varchar(18) NOT NULL DEFAULT '' COMMENT '单位电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '单位传真',
  `zip_code` varchar(10) NOT NULL DEFAULT '',
  `manage_no` varchar(20) NOT NULL DEFAULT '' COMMENT '组织机构',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`grp_appnt_id`),
  KEY `FK_FOGRPAPPNT_FCGRP` (`grp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_grp_paperpolicy definition

CREATE TABLE `fo_grp_paperpolicy` (
  `grp_contno` varchar(20) NOT NULL,
  `contact_phone` varchar(13) NOT NULL,
  `shipping_provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_address` varchar(100) NOT NULL DEFAULT '',
  `shipping_name` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`grp_contno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团体纸质保单申请表';


-- flexibleint.fo_grpappnt_contact definition

CREATE TABLE `fo_grpappnt_contact` (
  `contact_no` varchar(20) NOT NULL,
  `contact_name` varchar(100) NOT NULL DEFAULT '',
  `sex` varchar(1) NOT NULL DEFAULT '',
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(40) NOT NULL DEFAULT '',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`contact_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_grporder definition

CREATE TABLE `fo_grporder` (
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `grp_appnt_id` varchar(10) DEFAULT '',
  `grp_order_status` varchar(2) NOT NULL DEFAULT '' COMMENT '团体订单状态\r\n01-投保中  02待支付  03收费中\r\n04收费失败  05投保失败  06投保成功\r\n07关闭  08失效  09确认中\r\n10待承保  11已承保  12线下收费中',
  `grp_order_type` varchar(5) NOT NULL DEFAULT '' COMMENT '团体订单类型:\r\n01标准套餐\r\n02自选套餐\r\n03年度福利\r\n04易企保',
  `grp_contno` varchar(30) NOT NULL DEFAULT '',
  `grp_appnt_no` varchar(30) NOT NULL DEFAULT '',
  `commit_date` date DEFAULT NULL,
  `commit_time` varchar(8) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `effective_time` varchar(8) DEFAULT '',
  `cost_no` varchar(20) NOT NULL DEFAULT '' COMMENT '消费明细号',
  `step_no` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作步骤数',
  `grp_no` varchar(10) NOT NULL DEFAULT '',
  `insured_startdate` date DEFAULT NULL,
  `insured_enddate` date DEFAULT NULL COMMENT '团体投保人编号',
  `is_receipt` char(1) NOT NULL DEFAULT '0' COMMENT '是否已回执',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`grp_order_no`),
  KEY `fogrporder_grpcontno_index` (`grp_contno`) USING BTREE,
  KEY `fogrporder_grpno_index` (`grp_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团体订单表';


-- flexibleint.fo_grporder_mapping definition

CREATE TABLE `fo_grporder_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(20) COLLATE utf8_bin NOT NULL,
  `old_policy_no` varchar(20) COLLATE utf8_bin NOT NULL,
  `makedate` date NOT NULL,
  `maketime` char(8) COLLATE utf8_bin NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` char(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fo_grporder_pay_lock definition

CREATE TABLE `fo_grporder_pay_lock` (
  `grp_order_no` varchar(20) NOT NULL DEFAULT '' COMMENT '业务号',
  `spare_column1` varchar(100) DEFAULT '' COMMENT '备用字段1',
  `spare_column2` varchar(100) DEFAULT '' COMMENT '备用字段2',
  `spare_column3` varchar(100) DEFAULT '' COMMENT '备用字段3',
  `spare_column4` varchar(100) DEFAULT '' COMMENT '备用字段4',
  `spare_column5` varchar(100) DEFAULT '' COMMENT '备用字段5',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`grp_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_order_uw definition

CREATE TABLE `fo_order_uw` (
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `grp_contno` varchar(30) NOT NULL COMMENT '保单号',
  `original_amount` decimal(13,2) DEFAULT NULL COMMENT '原始金额',
  `addfee` decimal(13,2) DEFAULT NULL COMMENT '加费金额',
  `uw_result` varchar(10) NOT NULL COMMENT '核保结论 0-不通过,1-通过,2-补充资料,3-加费',
  `uw_option` varchar(1024) NOT NULL COMMENT '核保意见',
  `operator` varchar(20) NOT NULL,
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL,
  `modifydate` date NOT NULL COMMENT '更新日期',
  `modifytime` char(8) NOT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_order_uw_track definition

CREATE TABLE `fo_order_uw_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `grp_contno` varchar(30) NOT NULL COMMENT '保单号',
  `original_amount` decimal(13,2) DEFAULT NULL COMMENT '原始金额',
  `addfee` decimal(13,2) DEFAULT NULL COMMENT '加费金额',
  `uw_result` varchar(10) NOT NULL COMMENT '核保结论 0-不通过,1-通过,2-补充资料,3-加费',
  `uw_option` varchar(1024) NOT NULL COMMENT '核保意见',
  `operator` varchar(20) NOT NULL,
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL,
  `modifydate` date NOT NULL COMMENT '更新日期',
  `modifytime` char(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_orderitem_detail definition

CREATE TABLE `fo_orderitem_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_no` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `duty_code` varchar(10) COLLATE utf8_bin NOT NULL,
  `amount_insured` decimal(12,2) DEFAULT NULL,
  `prem` decimal(12,2) DEFAULT NULL,
  `pay_type` varchar(2) COLLATE utf8_bin NOT NULL,
  `insu_period` varchar(10) COLLATE utf8_bin NOT NULL,
  `insu_period_flag` varchar(10) COLLATE utf8_bin NOT NULL,
  `pay_period` varchar(10) COLLATE utf8_bin NOT NULL,
  `pay_period_flag` varchar(10) COLLATE utf8_bin NOT NULL,
  `operator` varchar(10) COLLATE utf8_bin NOT NULL,
  `operatorcom` varchar(20) COLLATE utf8_bin NOT NULL,
  `makedate` char(10) COLLATE utf8_bin NOT NULL,
  `maketime` char(8) COLLATE utf8_bin NOT NULL,
  `modifydate` char(10) COLLATE utf8_bin NOT NULL,
  `modifytime` char(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2102 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fo_orderitem_plan definition

CREATE TABLE `fo_orderitem_plan` (
  `order_item_no` varchar(19) NOT NULL,
  `plan_code` varchar(20) NOT NULL DEFAULT '' COMMENT '方案编码',
  `combo_code` varchar(20) NOT NULL DEFAULT '' COMMENT '套餐编码',
  `ensure_type` varchar(3) NOT NULL DEFAULT '' COMMENT '保障类型\n            E00 单个保障类型\n            E01 A\n            E02 B\n            E03 C\n            E04 D\n            E05 E',
  `copies` int(10) unsigned DEFAULT NULL COMMENT '方案份数',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`order_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='子订单方案表';


-- flexibleint.fp_combo definition

CREATE TABLE `fp_combo` (
  `id` varchar(8) NOT NULL COMMENT '套餐ID\n            TC000001',
  `name` varchar(45) NOT NULL COMMENT '套餐名称\n            201908北京地区标准套餐',
  `type` char(2) NOT NULL COMMENT '套餐类型\n            01 标准套餐\n            02 自选套餐',
  `category` char(2) NOT NULL COMMENT '01 综合保障类\n            02 交通综合类',
  `image` varchar(200) NOT NULL DEFAULT '' COMMENT '套餐图',
  `is_offsale` char(1) NOT NULL DEFAULT '0' COMMENT '是否停用\r\n0 否\r\n1 是\r\n默认0',
  `offsale_time` datetime DEFAULT NULL COMMENT '停用时间\r\n套餐停用次日生效\r\n停用则设置时间为当日23:59:59',
  `sale_channel` char(2) NOT NULL DEFAULT '' COMMENT '销售渠道\n            01 直销\n            02 渠道',
  `special_agreement` varchar(3000) NOT NULL DEFAULT '' COMMENT '特别约定',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='套餐信息主表';


-- flexibleint.fp_combo_plan_backups definition

CREATE TABLE `fp_combo_plan_backups` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `backups_id` varchar(10) DEFAULT NULL COMMENT '套餐编码或方案编码',
  `channel_id` varchar(10) DEFAULT NULL COMMENT '渠道id',
  `sale_channel` varchar(2) DEFAULT NULL COMMENT '销售渠道',
  `backups_type` varchar(100) DEFAULT NULL COMMENT 'FA 方案    TC套餐',
  `auth_startdate` datetime DEFAULT NULL COMMENT '渠道套餐授权起期',
  `auth_enddate` datetime DEFAULT NULL COMMENT '渠道套餐授权止期',
  `state` varchar(2) DEFAULT NULL COMMENT '套餐或方案状态',
  `param1` varchar(100) DEFAULT NULL,
  `param2` varchar(100) DEFAULT NULL,
  `param3` varchar(100) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22434 DEFAULT CHARSET=utf8mb4 COMMENT='方案、套餐备份表，用于还原方案和套餐状态';


-- flexibleint.fp_ensure definition

CREATE TABLE `fp_ensure` (
  `ensure_code` varchar(10) NOT NULL COMMENT '福利编码',
  `ensure_name` varchar(50) NOT NULL DEFAULT '' COMMENT '福利名称',
  `policy_effective_date` date DEFAULT NULL COMMENT '保单生效日',
  `start_appnt_date` datetime DEFAULT NULL COMMENT '投保开始日期',
  `end_appnt_date` datetime DEFAULT NULL COMMENT '投保结束日期',
  `grp_pay_type` varchar(2) NOT NULL DEFAULT '' COMMENT '企业支付方式',
  `per_pay_type` varchar(2) NOT NULL DEFAULT '' COMMENT '员工支付方式',
  `core_inquiry_no` varchar(20) NOT NULL DEFAULT '' COMMENT '核心询价号',
  `core_quotbat_no` varchar(20) NOT NULL DEFAULT '' COMMENT '批次号',
  `special_agreement` varchar(3000) NOT NULL DEFAULT '' COMMENT '特别约定',
  `buss_source` varchar(2) NOT NULL DEFAULT '' COMMENT '业务来源',
  `appnt_notice` varchar(2000) NOT NULL DEFAULT '' COMMENT '投保须知',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`ensure_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业福利表';


-- flexibleint.fp_insuredtype_config definition

CREATE TABLE `fp_insuredtype_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocptype_code` int(11) NOT NULL,
  `prem` decimal(12,2) DEFAULT NULL COMMENT '保费',
  `select_type` varchar(10) NOT NULL DEFAULT '',
  `un_select_type` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='保障类型选择配置表';


-- flexibleint.fp_plan definition

CREATE TABLE `fp_plan` (
  `id` varchar(20) NOT NULL,
  `plan_name` varchar(50) NOT NULL,
  `plan_type` char(2) NOT NULL COMMENT '0 普通产品\r\n1 年度福利\r\n2 自选方案\r\n7 员工个人业务长险方案',
  `plan_small_img` varchar(200) NOT NULL DEFAULT '' COMMENT '方案小图\n            存图片相对路径',
  `plan_long_img` varchar(200) NOT NULL DEFAULT '' COMMENT '方案长图\n            存图片相对路径',
  `state` char(2) NOT NULL COMMENT '01 待审核\n            02 审核通过\n            03 审核拒绝',
  `is_healthnotify` char(1) NOT NULL DEFAULT '0' COMMENT '0 否\n            1 是',
  `e_policytpl` varchar(200) NOT NULL DEFAULT '',
  `messagetpl` varchar(200) NOT NULL DEFAULT '',
  `sex_limit` varchar(1) NOT NULL DEFAULT '2' COMMENT '0 男\n            1 女\n            2 无限制',
  `copies_up` int(10) unsigned NOT NULL DEFAULT '0',
  `copies_low` int(10) unsigned NOT NULL DEFAULT '0',
  `age_up` int(11) NOT NULL DEFAULT '0',
  `age_low` int(11) NOT NULL DEFAULT '0',
  `effect_date` date DEFAULT NULL COMMENT '指定保单生效日',
  `effect_startdate` int(10) DEFAULT '0',
  `effect_enddate` int(10) DEFAULT '0',
  `effect_unit` char(1) DEFAULT '' COMMENT 'Y 年\n            M 月\n            D 日',
  `insuredperiod` int(11) NOT NULL DEFAULT '0',
  `insuredperiod_unit` char(1) NOT NULL DEFAULT '' COMMENT 'Y 年\n            M 月\n            D 日',
  `ocptype_up` int(11) NOT NULL DEFAULT '0',
  `ocptype_low` int(11) NOT NULL DEFAULT '0',
  `impact_factor` blob COMMENT '存入前端传入原始Json串\n            {\n                "age": [\n                    {\n                        "up": 25,\n                        "down": 1\n                    },\n                    {\n                        "up": 25,\n                        "down": 1\n                    },\n                    {\n                        "up": 25,\n                        "down": 1\n                    }\n                ]\n            }',
  `discount_rate` decimal(13,6) DEFAULT NULL COMMENT '折标比例\r\n0-2',
  `reward_rate` decimal(13,6) DEFAULT NULL COMMENT '提奖比例\r\n 0-1',
  `complex_fyc_rate` decimal(13,6) DEFAULT NULL COMMENT '综拓FYC比例\r\n0-2',
  `core_inquiry_no` varchar(20) NOT NULL DEFAULT '' COMMENT '核心询价号',
  `core_quotbat_no` varchar(20) NOT NULL DEFAULT '' COMMENT '批次号',
  `special_agreement` varchar(3000) NOT NULL DEFAULT '' COMMENT '特别约定',
  `plan_prem` decimal(12,2) DEFAULT NULL COMMENT '方案保费',
  `is_combo_assessment` char(1) NOT NULL DEFAULT '' COMMENT '是否按套餐考核\r\n0 否\r\n1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='方案信息表';


-- flexibleint.fp_plan_proportion definition

CREATE TABLE `fp_plan_proportion` (
  `plan_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '方案编码',
  `proportion1` decimal(13,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '折标比例0-2',
  `proportion2` decimal(13,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '直销提奖比例0-1',
  `proportion3` decimal(13,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '综拓团险业务员提奖比例 0-1',
  `proportion4` decimal(13,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '中介提奖比例 0-1',
  `proportion5` decimal(13,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '综拓个险业务员FYC比例 0-2',
  `proportion6` decimal(13,6) unsigned DEFAULT '0.000000' COMMENT '备用字段1',
  `proportion7` decimal(13,6) unsigned DEFAULT '0.000000' COMMENT '备用字段2',
  `proportion8` decimal(13,6) unsigned DEFAULT '0.000000' COMMENT '备用字段3',
  `proportion9` decimal(13,6) unsigned DEFAULT '0.000000' COMMENT '备用字段4',
  `proportion10` decimal(13,6) unsigned DEFAULT '0.000000' COMMENT '备用字段5',
  `operator` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) COLLATE utf8_bin NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fp_plan_recommend definition

CREATE TABLE `fp_plan_recommend` (
  `plan_id` varchar(9) NOT NULL DEFAULT '' COMMENT '方案编码',
  `risk_code` varchar(20) NOT NULL DEFAULT '' COMMENT '险种编码',
  `duty_code` varchar(10) NOT NULL DEFAULT '' COMMENT '责任编码',
  `amount_insured` decimal(12,0) DEFAULT NULL COMMENT '保额',
  `prem` decimal(12,0) DEFAULT NULL COMMENT '保费',
  `per_capitapr_prem` decimal(12,0) DEFAULT NULL COMMENT '人均保费',
  `ensure_type` varchar(10) DEFAULT '' COMMENT '保障类型',
  `ocptype_up` int(11) DEFAULT '0',
  `ocptype_down` int(11) DEFAULT '0',
  PRIMARY KEY (`plan_id`,`risk_code`,`duty_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='推荐方案表';


-- flexibleint.fp_rate_config definition

CREATE TABLE `fp_rate_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_sign` varchar(255) DEFAULT NULL COMMENT '套餐类型标识',
  `ensure_sign` varchar(10) DEFAULT NULL COMMENT '保障类型标识',
  `risk_code` varchar(20) NOT NULL DEFAULT '' COMMENT '险种编码',
  `duty_code` varchar(10) NOT NULL DEFAULT '',
  `ocptype_up` int(11) NOT NULL DEFAULT '0',
  `ocptype_down` int(11) NOT NULL DEFAULT '0',
  `age_up` int(10) unsigned DEFAULT '0',
  `age_up_unit` varchar(10) DEFAULT '' COMMENT '年龄下限单位',
  `age_down` int(10) unsigned DEFAULT '0',
  `age_down_unit` varchar(10) DEFAULT '' COMMENT '年龄下限单位',
  `medical_flag` varchar(10) DEFAULT '' COMMENT '有无医保',
  `enter_state` varchar(10) DEFAULT '' COMMENT '是否在职',
  `sex` varchar(10) DEFAULT '' COMMENT '性别限制',
  `deduct_amount` decimal(12,2) unsigned zerofill NOT NULL COMMENT '免赔额',
  `deduct_amount_type` varchar(2) NOT NULL DEFAULT '' COMMENT '免赔额类型\r\n01 年免赔\r\n02 次免赔',
  `loss_ration` decimal(12,2) NOT NULL DEFAULT '1.00' COMMENT '赔付比例',
  `rate` decimal(12,2) DEFAULT NULL,
  `rate_unit_type` varchar(2) NOT NULL DEFAULT '' COMMENT '单位\n            W 每万元\n            T 每十元\n            F 每份',
  `rate_ratio` decimal(10,3) DEFAULT NULL COMMENT '费率系数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8mb4 COMMENT='产品费率表';


-- flexibleint.fp_table_riskduty definition

CREATE TABLE `fp_table_riskduty` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '险种责任ID',
  `plan_id` varchar(20) DEFAULT NULL,
  `risk_code` varchar(20) NOT NULL COMMENT '险种编码',
  `custom_risk_name` varchar(50) NOT NULL COMMENT '自定义险种名称',
  `duty_code` varchar(10) NOT NULL COMMENT '责任编码',
  `custom_duty_name` varchar(50) NOT NULL COMMENT '自定义责任名称',
  `amount_insured` decimal(12,2) DEFAULT NULL COMMENT '保额',
  `grade` varchar(2) DEFAULT NULL COMMENT '档次1-10',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别 Y区分男女 N不区分男女',
  `waiting_period` varchar(3) DEFAULT NULL COMMENT '等待期0 30 60 90',
  `insured_period` varchar(10) DEFAULT NULL COMMENT '保险期间（个月）',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '操作员\n            存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '操作机构\n            存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41084 DEFAULT CHARSET=utf8mb4 COMMENT='方案险种责任表定费率因子表(表定费率因子)';


-- flexibleint.fs_account_info definition

CREATE TABLE `fs_account_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_com` varchar(20) NOT NULL DEFAULT '' COMMENT '管理机构⁮编码',
  `account_name` varchar(100) NOT NULL DEFAULT '' COMMENT '开户名称',
  `account_bank` varchar(100) NOT NULL DEFAULT '' COMMENT '开户行',
  `account` varchar(30) NOT NULL DEFAULT '' COMMENT '账号',
  `makedate` date DEFAULT NULL COMMENT '创建日期',
  `maketime` varchar(8) DEFAULT NULL COMMENT '创建时间',
  `modifydate` date DEFAULT NULL COMMENT '更新日期',
  `modifytime` varchar(8) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_acom definition

CREATE TABLE `fs_acom` (
  `agent_com` varchar(40) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `area_type` varchar(2) DEFAULT NULL,
  `up_agent_com` varchar(200) DEFAULT NULL,
  `sale_depart` varchar(200) DEFAULT NULL,
  `chnl_type` varchar(200) DEFAULT NULL,
  `sale_chnl` varchar(200) DEFAULT NULL,
  `need_write_off` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `webaddress` varchar(300) DEFAULT NULL,
  `linkman` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `corp_oration` varchar(100) DEFAULT NULL,
  `rgtcapital` varchar(100) DEFAULT NULL,
  `bank_code` varchar(100) DEFAULT NULL,
  `bank_accno` varchar(100) DEFAULT NULL,
  `acc_name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `org_anization_code` varchar(50) DEFAULT NULL,
  `tax_code` varchar(50) DEFAULT NULL,
  `sale_flag` varchar(2) DEFAULT NULL,
  `qualify_no` varchar(50) DEFAULT NULL,
  `qualify_start_date` date DEFAULT NULL,
  `qualify_end_date` date DEFAULT NULL,
  `contract_no` varchar(50) DEFAULT NULL,
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `restate` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `agent_type1` varchar(200) DEFAULT NULL,
  `agent_type2` varchar(200) DEFAULT NULL,
  `agent_type3` varchar(200) DEFAULT NULL,
  `agent_type4` varchar(200) DEFAULT NULL,
  `agent_type5` varchar(200) DEFAULT NULL,
  `manage_com` varchar(50) DEFAULT NULL,
  `com_code` varchar(50) DEFAULT NULL,
  `business_no` varchar(200) DEFAULT NULL,
  `org_no` varchar(50) DEFAULT NULL,
  `business_start_date` date DEFAULT NULL,
  `business_end_date` date DEFAULT NULL,
  `org_start_date` date DEFAULT NULL,
  `orgend_date` date DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `pro_to_calno` varchar(20) DEFAULT NULL COMMENT '协议号',
  `operator` varchar(20) DEFAULT NULL,
  `operatorcom` varchar(200) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`agent_com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- flexibleint.fs_acom_copy definition

CREATE TABLE `fs_acom_copy` (
  `agent_com` varchar(40) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `area_type` varchar(2) DEFAULT NULL,
  `up_agent_com` varchar(200) DEFAULT NULL,
  `sale_depart` varchar(200) DEFAULT NULL,
  `chnl_type` varchar(200) DEFAULT NULL,
  `sale_chnl` varchar(200) DEFAULT NULL,
  `need_write_off` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `webaddress` varchar(300) DEFAULT NULL,
  `linkman` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `corp_oration` varchar(100) DEFAULT NULL,
  `rgtcapital` varchar(100) DEFAULT NULL,
  `bank_code` varchar(100) DEFAULT NULL,
  `bank_accno` varchar(100) DEFAULT NULL,
  `acc_name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `org_anization_code` varchar(50) DEFAULT NULL,
  `tax_code` varchar(50) DEFAULT NULL,
  `sale_flag` varchar(2) DEFAULT NULL,
  `qualify_no` varchar(50) DEFAULT NULL,
  `qualify_start_date` date DEFAULT NULL,
  `qualify_end_date` date DEFAULT NULL,
  `contract_no` varchar(50) DEFAULT NULL,
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `restate` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `agent_type1` varchar(200) DEFAULT NULL,
  `agent_type2` varchar(200) DEFAULT NULL,
  `agent_type3` varchar(200) DEFAULT NULL,
  `agent_type4` varchar(200) DEFAULT NULL,
  `agent_type5` varchar(200) DEFAULT NULL,
  `manage_com` varchar(50) DEFAULT NULL,
  `com_code` varchar(50) DEFAULT NULL,
  `business_no` varchar(200) DEFAULT NULL,
  `org_no` varchar(50) DEFAULT NULL,
  `business_start_date` date DEFAULT NULL,
  `business_end_date` date DEFAULT NULL,
  `org_start_date` date DEFAULT NULL,
  `orgend_date` date DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `operatorcom` varchar(200) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`agent_com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- flexibleint.fs_amount_rule definition

CREATE TABLE `fs_amount_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `rule_code` varchar(8) NOT NULL COMMENT '规则编码',
  `rule_name` varchar(30) NOT NULL COMMENT '规则名称',
  `inspection_type` varchar(2) NOT NULL DEFAULT 'D' COMMENT '检验方式 R-按险种校验 D-按责任校验',
  `age_down` int(10) unsigned NOT NULL COMMENT '年龄下限',
  `age_up` int(10) unsigned NOT NULL COMMENT '年龄上限',
  `ocptype_down` varchar(2) NOT NULL COMMENT '职业下限',
  `ocptype_up` varchar(2) NOT NULL COMMENT '职业上限',
  `amount` decimal(12,2) NOT NULL DEFAULT '-1.00' COMMENT '单笔保额上限',
  `maximum_amount` decimal(12,2) NOT NULL DEFAULT '-1.00' COMMENT '最高保额限制',
  `state` char(1) NOT NULL DEFAULT '1' COMMENT '是否有效; 0-无效, 1-有效',
  `manage_com` varchar(20) NOT NULL COMMENT '公司编码',
  `platform` varchar(2) NOT NULL DEFAULT 'TY' COMMENT 'TY-通用规则，TF-弹福规则，YQB-易企保规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8mb4 COMMENT='累计保额规则表';


-- flexibleint.fs_amount_rule_sub definition

CREATE TABLE `fs_amount_rule_sub` (
  `rule_code` varchar(8) NOT NULL COMMENT '规则编码',
  `sub_rule_set_code` varchar(8) NOT NULL COMMENT '子规则集合编码',
  `sub_rule_set_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL COMMENT '子规则集合名称',
  `sub_rule_code` varchar(8) NOT NULL COMMENT '子规则编码',
  `sub_rule_name` varchar(30) NOT NULL COMMENT '子规则名称',
  `platform` varchar(2) NOT NULL DEFAULT 'TY' COMMENT '渠道 TY-通用规则，TF-弹福规则，YQB-易企保规则',
  PRIMARY KEY (`rule_code`,`sub_rule_set_code`,`sub_rule_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='累计保额子规则表';


-- flexibleint.fs_api_logging definition

CREATE TABLE `fs_api_logging` (
  `log_no` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `project_name` varchar(200) DEFAULT '' COMMENT '项目名称0标准套餐 1易企宝',
  `interface_name` varchar(200) DEFAULT '' COMMENT '接口名称',
  `request_url` varchar(200) DEFAULT '' COMMENT '请求路径',
  `request_type` varchar(10) DEFAULT '' COMMENT '请求报文格式',
  `request_head` varchar(20) DEFAULT '' COMMENT '请求头',
  `request_param` varchar(200) DEFAULT '' COMMENT '请求参数',
  `request_body` varchar(2000) DEFAULT '' COMMENT '请求报文',
  `request_times` int(11) DEFAULT NULL COMMENT '请求次数',
  `response_type` varchar(10) DEFAULT '' COMMENT '返回报文格式',
  `response_body` varchar(200) DEFAULT '' COMMENT '返回报文',
  `result` varchar(2) DEFAULT NULL COMMENT '请求结果 0成功 1失败',
  `response_time` varchar(20) DEFAULT NULL COMMENT '响应时长',
  `makedate` date DEFAULT NULL COMMENT '创建日期',
  `maketime` char(8) DEFAULT NULL COMMENT '创建时间',
  `modifydate` date DEFAULT NULL COMMENT '修改日期',
  `modifytime` char(8) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`log_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2683 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_area definition

CREATE TABLE `fs_area` (
  `province_code` varchar(2) NOT NULL COMMENT '省份编码',
  `province_name` varchar(30) DEFAULT '' COMMENT '省份名称',
  `city_code` varchar(4) NOT NULL COMMENT '市编码',
  `city_name` varchar(50) DEFAULT '' COMMENT '市名称',
  `county_code` varchar(6) NOT NULL COMMENT '县编码',
  `county_name` varchar(50) DEFAULT '' COMMENT '县名称',
  `area_type` varchar(10) DEFAULT NULL COMMENT '地区类型',
  `state` varchar(2) DEFAULT NULL COMMENT '状态 0-失效 1-有效',
  `code_version` varchar(10) DEFAULT NULL COMMENT '编码版本',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`province_code`,`city_code`,`county_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- flexibleint.fs_async_info definition

CREATE TABLE `fs_async_info` (
  `file_id` int(11) NOT NULL,
  `business_id` varchar(30) NOT NULL COMMENT '业务id\n            福利编码\n            团体订单号\n            保全受理号',
  `status` char(1) NOT NULL COMMENT '处理状态\n            0 处理完成\n            1 处理中',
  `result_code` char(1) DEFAULT NULL COMMENT '处理结果\n            0 成功\n            1 失败',
  `result_message` varchar(2000) DEFAULT '' COMMENT '异常描述',
  `deal_time` bigint(20) DEFAULT NULL COMMENT '处理时长毫秒',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='异步信息表';


-- flexibleint.fs_bank definition

CREATE TABLE `fs_bank` (
  `bank_code` varchar(20) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_limit_code` varchar(6) DEFAULT NULL COMMENT '00-无限制，01-总行限制，02-省级限制，03-省下市级限制，04-市下县级限制，05-县下分行名称限制',
  `limit_count` varchar(10) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL COMMENT '0-否，1-是',
  `is_sign` varchar(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '是否需要签约\r\n0否1是',
  `sign_bank_code` varchar(10) CHARACTER SET utf8mb4 NOT NULL COMMENT '签约平台银行编码',
  PRIMARY KEY (`bank_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- flexibleint.fs_career_code definition

CREATE TABLE `fs_career_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Industry_code` char(3) NOT NULL COMMENT '行业代码',
  `Industry_name` varchar(100) NOT NULL COMMENT '行业名称',
  `Industry_sub_code` char(5) NOT NULL COMMENT '行业划分代码',
  `Industry_sub_name` varchar(100) NOT NULL COMMENT '行业划分名称',
  `career_code` char(8) NOT NULL COMMENT '职业代码',
  `career_name` varchar(100) NOT NULL COMMENT '职业名称',
  `career_type` int(2) NOT NULL COMMENT '职业类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8mb4 COMMENT='行业代码	行业名称	行业划分代码	行业划分名称	职业代码	职业名称	职业类别';


-- flexibleint.fs_code definition

CREATE TABLE `fs_code` (
  `code_type` varchar(50) NOT NULL COMMENT '代码类型',
  `code_key` varchar(50) NOT NULL COMMENT '代码关键字',
  `code_name` varchar(100) NOT NULL DEFAULT '' COMMENT '代码名称',
  `code_order` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '代码顺序',
  `code_desc` varchar(50) NOT NULL DEFAULT '' COMMENT '代码描述',
  `other_sign` varchar(50) NOT NULL DEFAULT '' COMMENT '其他标志',
  PRIMARY KEY (`code_type`,`code_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- flexibleint.fs_com definition

CREATE TABLE `fs_com` (
  `manage_com` varchar(20) NOT NULL,
  `outcom_code` varchar(30) NOT NULL DEFAULT '',
  `manage_name` varchar(300) NOT NULL DEFAULT '',
  `short_name` varchar(300) NOT NULL DEFAULT '',
  `english_name` varchar(300) DEFAULT '',
  `address` varchar(360) DEFAULT '',
  `zipcode` varchar(6) DEFAULT '',
  `phone` varchar(18) DEFAULT '',
  `fax` varchar(18) DEFAULT '',
  `email` varchar(60) DEFAULT '',
  `web_address` varchar(300) DEFAULT '',
  `satrap_name` varchar(30) DEFAULT '',
  `com_codeisc` varchar(30) DEFAULT '',
  `other_comcode` varchar(30) DEFAULT '',
  `com_nature` varchar(6) DEFAULT '',
  `com_grade` varchar(10) DEFAULT '',
  `com_areatype` varchar(30) DEFAULT '',
  `up_comcode` varchar(30) DEFAULT '',
  `province` varchar(30) DEFAULT '',
  `city` varchar(30) DEFAULT '',
  `county` varchar(30) DEFAULT '',
  `fin_db` varchar(30) DEFAULT '',
  `com_code` varchar(30) DEFAULT '',
  `service_name` varchar(30) DEFAULT '',
  `service_phone` varchar(50) DEFAULT '',
  `service_post_address` varchar(300) DEFAULT '',
  `prefect_ural_levelcity` varchar(30) DEFAULT '',
  `segment1` varchar(30) DEFAULT '',
  `segment2` varchar(30) DEFAULT '',
  `segment3` varchar(30) DEFAULT '',
  `segment4` varchar(30) DEFAULT '',
  `segment5` varchar(30) DEFAULT '',
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`manage_com`),
  UNIQUE KEY `manage_com` (`manage_com`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构信息表';


-- flexibleint.fs_com_agent definition

CREATE TABLE `fs_com_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_com` varchar(20) DEFAULT NULL,
  `agent_code` varchar(10) DEFAULT NULL,
  `agent_name` varchar(30) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FSCOMAGENT_FSCOM` (`manage_com`),
  KEY `FK_FSCOMAGENT_FUAGENT` (`agent_code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COMMENT='默认机构和业务员表（一个管理机构下配置一个默认的业务员）';


-- flexibleint.fs_duty definition

CREATE TABLE `fs_duty` (
  `duty_code` varchar(10) NOT NULL,
  `duty_name` varchar(60) NOT NULL,
  `pay_end_year` int(10) unsigned DEFAULT NULL,
  `pay_end_year_flag` char(1) DEFAULT NULL,
  `pay_end_date_calref` char(1) DEFAULT NULL,
  `pay_end_date_cal_mode` char(1) DEFAULT NULL,
  `get_year` int(10) unsigned zerofill DEFAULT NULL,
  `get_year_flag` char(1) DEFAULT NULL,
  `insu_year` int(11) DEFAULT NULL,
  `insu_year_flag` char(1) DEFAULT NULL,
  `acci_year` int(10) unsigned DEFAULT NULL,
  `acci_year_flag` char(1) DEFAULT NULL,
  `cal_mode` char(1) DEFAULT NULL,
  `pay_end_year_rela` char(1) NOT NULL,
  `get_year_rela` char(1) NOT NULL,
  `insu_year_rela` char(1) NOT NULL,
  `basiccal_code` varchar(10) DEFAULT NULL,
  `risk_cal_code` varchar(10) DEFAULT NULL,
  `amnt_flag` char(1) DEFAULT NULL,
  `vpu` decimal(12,2) DEFAULT NULL,
  `addfee_flag` varchar(2) DEFAULT NULL,
  `end_date_cal_mode` char(1) DEFAULT NULL,
  `add_amnt_flag` varchar(1) DEFAULT NULL,
  `is_valid` varchar(2) NOT NULL,
  PRIMARY KEY (`duty_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- flexibleint.fs_duty_config definition

CREATE TABLE `fs_duty_config` (
  `duty_code` varchar(10) NOT NULL COMMENT '责任编码',
  `item_type` varchar(2) NOT NULL COMMENT '01 标准 险种名称自定义,险种名称自定义,保额(元),保障明细\r\n            02 增加 免赔方式，免赔额，赔付比例\r\n            03 增加 免赔方式，免赔额，赔付比例，次限额\r\n            04 增加 免赔天数\r\n            05 增加 公共保额，免赔方式，免赔额，赔付比例，是否配置限额\r\n	     06 新增新增费率档次、区分性别、等待期、减人手续费\r\n            07 增加 免赔方式，免赔额，赔付比例（都是下拉框）,减人手续费、退保手续费（置灰）0、 0.25\r\n            08 增加 免赔天数（下拉框），减人手续费、退保手续费（置灰）0、 0.25\r\n            09 增加 减人手续费、退保手续费（置灰）0、 0.25，无费率因子\r\n            10 增加 减人手续费、退保手续费（置灰）0、 0.25，有费率因子',
  `security_detail` varchar(2000) NOT NULL DEFAULT '' COMMENT '保障明细',
  `rate_factor` varchar(2) NOT NULL DEFAULT '' COMMENT '01 职业\r\n            02 年龄\r\n            03 投保人数\r\n            04 职业+年龄\r\n            05 年龄+性别\r\n            06 年龄+是否在职\r\n            07 年龄+有无医保\r\n            08 年龄+职业+性别\r\n            09 人数+年龄+有无医保\r\n		16 只有保额',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`duty_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='责任配置表';


-- flexibleint.fs_duty_factor_code definition

CREATE TABLE `fs_duty_factor_code` (
  `duty_code` varchar(30) NOT NULL COMMENT '责任编码',
  `factor_type` varchar(20) NOT NULL COMMENT '费率类型',
  `factor_key` varchar(10) NOT NULL COMMENT '值',
  `factor_name` varchar(50) NOT NULL COMMENT '名',
  `factor_desc` varchar(100) DEFAULT NULL COMMENT '描述',
  `code_order` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`duty_code`,`factor_type`,`factor_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='责任费率码值表';


-- flexibleint.fs_duty_rela definition

CREATE TABLE `fs_duty_rela` (
  `risk_code` varchar(8) NOT NULL COMMENT '险种编码',
  `duty_code` varchar(10) NOT NULL COMMENT '基本责任编码',
  `duty_rela_code` varchar(10) NOT NULL COMMENT '对应可选责任编码',
  `param1` varchar(100) DEFAULT NULL COMMENT '主险险种编码',
  `param2` varchar(100) DEFAULT NULL COMMENT '主险险种责任',
  `param3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`risk_code`,`duty_code`,`duty_rela_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通泰责任关联表';


-- flexibleint.fs_file_main definition

CREATE TABLE `fs_file_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_type` varchar(20) NOT NULL COMMENT '01--影像、图片文件\n            0101-个人证件图片\n            0102-企业证件图片\n            0103-未成年人投保声明影像\n            0104-关系证明\n            \n            02--计划制定相关\n            0201--计划导入\n            0202—员工清单导入\n            \n            03-保全相关\n            0301—增加导入\n            0302—减人导入',
  `file_origin_name` varchar(200) NOT NULL,
  `file_save_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `file_suffix` varchar(10) NOT NULL,
  `file_url` varchar(200) DEFAULT '' COMMENT '例：http://10.3.21.42:9081/fbpint/',
  `file_path` varchar(400) NOT NULL,
  `is_valid` varchar(20) NOT NULL COMMENT '1 有效\n            0 无效',
  `template_flag` char(1) NOT NULL DEFAULT '' COMMENT '模板标识\r\n1 模板',
  `sync_flag` char(1) NOT NULL DEFAULT '' COMMENT '同步标识\r\n外网aliyun图片上传同步\r\n0 未同步\r\n1 已同步',
  `remark` varchar(200) DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53618 DEFAULT CHARSET=utf8mb4 COMMENT='文件信息表';


-- flexibleint.fs_file_type definition

CREATE TABLE `fs_file_type` (
  `doc_type` varchar(10) NOT NULL COMMENT '01--影像、图片文件\n            0101-个人证件图片\n            0102-企业证件图片\n            0103-未成年人投保声明影像\n            0104-关系证明\n            \n            02--计划制定相关\n            0201--计划导入\n            0202—员工清单导入\n            \n            03-保全相关\n            0301—增加导入\n            0302—减人导入',
  `type_name` varchar(40) NOT NULL,
  `doc_desc` varchar(400) DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`doc_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件类型定义表';


-- flexibleint.fs_group_mapping definition

CREATE TABLE `fs_group_mapping` (
  `mapping_no` varchar(20) NOT NULL,
  `mapping_type` varchar(4) DEFAULT NULL,
  `stat_code` varchar(20) NOT NULL,
  `group_code` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `link_type` varchar(4) DEFAULT NULL,
  `link_group_code` varchar(20) DEFAULT NULL,
  `state` varchar(4) DEFAULT NULL,
  `operator` varchar(80) DEFAULT '',
  `operatorcom` varchar(20) DEFAULT '',
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  `f1` varchar(20) DEFAULT NULL,
  `f2` varchar(20) DEFAULT NULL,
  `f3` varchar(20) DEFAULT NULL,
  `f4` varchar(20) DEFAULT NULL,
  `k1` double DEFAULT NULL,
  `k2` double DEFAULT NULL,
  PRIMARY KEY (`mapping_no`),
  UNIQUE KEY `mapping_no` (`mapping_no`) USING BTREE,
  KEY `stat_code` (`stat_code`) USING BTREE,
  KEY `group_code` (`group_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_impart definition

CREATE TABLE `fs_impart` (
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL DEFAULT '',
  `state` varchar(1) NOT NULL DEFAULT '1' COMMENT '状态\n            0 停用\n            1 正常',
  `impart_param_modle` varchar(1) NOT NULL DEFAULT '',
  `uw_claim_flag` varchar(2) NOT NULL DEFAULT '',
  `have_param_flag` varchar(2) NOT NULL DEFAULT '0',
  `prt_flag` varchar(2) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `impartver_type` varchar(2) NOT NULL DEFAULT '' COMMENT '题目类型\n            1 需要录入\n            2 标题',
  `up_level` varchar(2) NOT NULL DEFAULT '',
  `segment7` varchar(20) NOT NULL DEFAULT '',
  `segment6` varchar(20) NOT NULL DEFAULT '',
  `segment5` varchar(20) NOT NULL DEFAULT '',
  `segment4` varchar(20) NOT NULL DEFAULT '',
  `segment3` varchar(20) NOT NULL DEFAULT '',
  `segment2` varchar(20) NOT NULL DEFAULT '',
  `segment1` varchar(20) NOT NULL DEFAULT '',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`impartver_ver`,`impartver_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健康告知规则';


-- flexibleint.fs_impart_per definition

CREATE TABLE `fs_impart_per` (
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL DEFAULT '',
  `state` varchar(1) NOT NULL DEFAULT '1' COMMENT '状态\n            0 停用\n            1 正常',
  `impart_param_modle` varchar(1) NOT NULL DEFAULT '',
  `uw_claim_flag` varchar(2) NOT NULL DEFAULT '',
  `have_param_flag` varchar(2) NOT NULL DEFAULT '0',
  `prt_flag` varchar(2) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `impartver_type` varchar(2) NOT NULL DEFAULT '' COMMENT '题目类型\n            1 需要录入\n            2 标题',
  `up_level` varchar(2) NOT NULL DEFAULT '',
  `segment7` varchar(20) NOT NULL DEFAULT '',
  `segment6` varchar(20) NOT NULL DEFAULT '',
  `segment5` varchar(20) NOT NULL DEFAULT '',
  `segment4` varchar(20) NOT NULL DEFAULT '',
  `segment3` varchar(20) NOT NULL DEFAULT '',
  `segment2` varchar(20) NOT NULL DEFAULT '',
  `segment1` varchar(20) NOT NULL DEFAULT '',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`impartver_ver`,`impartver_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人健康告知规则';


-- flexibleint.fs_indeximg definition

CREATE TABLE `fs_indeximg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_type` char(2) NOT NULL COMMENT '01 轮播图1\n            02 轮播图2\n            03 轮播图3\n            04 轮播图4\n            05 轮播图5\n            06 标准套餐定制图\n            07 自选套餐定制图\n            08 高端定制图\n            09 渠道logo图',
  `img_address` varchar(200) NOT NULL DEFAULT '' COMMENT 'FTP时存fs_file_main表的ID\n            Base64存储时为空\n            01 轮播图1文件位置\n            02 轮播图2文件位置\n            03 轮播图3文件位置\n            04 轮播图4文件位置\n            05 轮播图5文件位置\n            06 标准套餐定制图文件位置\n            07 自选套餐定制图文件位置\n            08 高端定制图文件位置\n            09 渠道logo图文件位置',
  `img_url` varchar(200) NOT NULL DEFAULT '' COMMENT '点击图片对应跳转地址\n            01 轮播图1URL\n            02 轮播图2URL\n            03 轮播图3URL\n            04 轮播图4URL\n            05 轮播图5URL\n            06 标准套餐定制图URL\n            07 自选套餐定制图URL\n            08 高端定制图URL\n            09 渠道logo图URL',
  `img_base` varchar(200) NOT NULL DEFAULT '' COMMENT '存二进制图片相对路径',
  `custom_source` varchar(20) NOT NULL COMMENT '对应用户表用户来源\n            01 直销\n            02 分公司管理员\n            xx 渠道编码',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4 COMMENT='配置主页大图根据不同用户来源展示不同图片展示（轮播图、套餐图、Logo等）';


-- flexibleint.fs_industry definition

CREATE TABLE `fs_industry` (
  `industry_code` varchar(20) NOT NULL COMMENT '行业编码',
  `industry_name` varchar(255) NOT NULL COMMENT '行业名称',
  `state` varchar(1) NOT NULL COMMENT '是否有效 0无效 1有效',
  `item_type` varchar(2) NOT NULL DEFAULT '' COMMENT '01-企业营收 02-从业人员人数 03-资产总额 04-企业营收+从业人员人数 05-企业营收+资产总额 06-从业人员人数+资产总额 07-企业营收+从业人员人数+资产总额',
  `operator` varchar(10) DEFAULT NULL COMMENT '操作员',
  `operatorcom` varchar(20) DEFAULT NULL COMMENT '操作机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`industry_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_log definition

CREATE TABLE `fs_log` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `admin` varchar(20) DEFAULT '' COMMENT '登录用户名',
  `ip` varchar(30) DEFAULT '' COMMENT '请求ip',
  `ip_source` varchar(30) DEFAULT '' COMMENT '请求ip来源',
  `operation_desc` varchar(255) DEFAULT '' COMMENT '操作描述',
  `equipment` varchar(255) DEFAULT NULL COMMENT '请求设备',
  `request_time` varchar(255) DEFAULT NULL COMMENT '请求耗时，单位：毫秒',
  `request_method` varchar(255) DEFAULT NULL COMMENT '请求方法',
  `request_params` mediumblob COMMENT '请求参数',
  `response_params` mediumblob COMMENT '返回参数',
  `abnormal_log` mediumblob COMMENT '异常日志',
  `is_abnormal` varchar(2) DEFAULT '' COMMENT '是否是异常日志',
  `param1` varchar(255) DEFAULT '' COMMENT '备用字段1',
  `param2` varchar(255) DEFAULT '' COMMENT '备用字段2',
  `param3` varchar(255) DEFAULT '' COMMENT '备用字段3',
  `operator` varchar(10) NOT NULL COMMENT '操作员',
  `operatorcom` varchar(20) NOT NULL COMMENT '操作机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL DEFAULT '' COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL DEFAULT '' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_menu definition

CREATE TABLE `fs_menu` (
`node_code` varchar(10) NOT NULL,
`parent_nodecode` varchar(10) DEFAULT NULL,
`node_level` int(11) DEFAULT NULL,
`node_name` varchar(60) DEFAULT NULL,
`child_flag` int(11) DEFAULT NULL,
`run_script` varchar(200) DEFAULT NULL,
`node_imgurl` varchar(200) DEFAULT NULL,
`node_desc` varchar(200) DEFAULT NULL,
`node_order` int(11) DEFAULT NULL,
`auth_sign` varchar(200) DEFAULT '' COMMENT '权限标识',
`menu_type` varchar(2) NOT NULL COMMENT '菜单类型 0目录 1菜单  2按钮',
`menu_sys` varchar(2) NOT NULL COMMENT '菜单系统标识  0弹福管理端 1等宝',
`operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
`operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
`makedate` date NOT NULL COMMENT '创建日期',
`maketime` char(8) NOT NULL COMMENT '创建时间',
`modifydate` date NOT NULL COMMENT '修改日期',
`modifytime` char(8) NOT NULL COMMENT '修改时间',
PRIMARY KEY (`node_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 存放所有的菜单节点信息';


-- flexibleint.fs_menugrp definition

CREATE TABLE `fs_menugrp` (
  `id` varchar(10) NOT NULL,
  `menugrp_name` varchar(30) NOT NULL,
  `menugrp_desc` varchar(100) NOT NULL,
  `sign` varchar(5) NOT NULL DEFAULT '',
  `role` varchar(2) NOT NULL DEFAULT '' COMMENT '菜单组角色默认保存用户角色ID',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ROLE` (`role`) USING BTREE COMMENT '菜单组角色唯一约束\r\n默认存用户角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 存放所有的菜单组信息';


-- flexibleint.fs_mq_track definition

CREATE TABLE `fs_mq_track` (
  `message_id` varchar(50) NOT NULL DEFAULT '' COMMENT '消息的全局唯一标识',
  `mq_object_id` varchar(30) NOT NULL DEFAULT '' COMMENT 'mq操作对象id',
  `mq_object_type` varchar(1) NOT NULL DEFAULT '' COMMENT 'mq对象类型   1生产者  2消费者',
  `message_key` varchar(20) DEFAULT '' COMMENT '消息的业务标识，由消息生产者（Producer）设置，唯一标识某个业务逻辑。',
  `topic` varchar(50) DEFAULT '' COMMENT '消息主题，一级消息类型，通过 Topic 对消息进行分类',
  `tag` varchar(50) DEFAULT '' COMMENT '消息标签，二级消息类型，用来进一步区分某个 Topic 下的消息分类。',
  `message_body` blob COMMENT '消息业务数据 json格式',
  `server_address` varchar(255) DEFAULT '' COMMENT 'mq集群',
  `send_timeout` varchar(100) DEFAULT '' COMMENT '发送消息超时时间',
  `message_mode` varchar(20) DEFAULT '' COMMENT '消费模式',
  `is_success` varchar(1) NOT NULL DEFAULT '' COMMENT '是否发送、消费成功 0失败  1成功',
  `abnormal_log` mediumblob COMMENT '异常日志',
  `param1` varchar(255) DEFAULT '' COMMENT '记录消费失败次数',
  `param2` varchar(255) DEFAULT '' COMMENT '备用字段2',
  `param3` varchar(255) DEFAULT '' COMMENT '备用字段3',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '操作员',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '操作机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL DEFAULT '' COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL DEFAULT '' COMMENT '修改时间',
  PRIMARY KEY (`message_id`,`mq_object_id`,`mq_object_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='mq轨迹表';


-- flexibleint.fs_optional_risk_duty definition

CREATE TABLE `fs_optional_risk_duty` (
  `risk_code` varchar(20) NOT NULL DEFAULT '' COMMENT '险种编码',
  `risk_name` varchar(50) DEFAULT NULL,
  `duty_code` varchar(20) NOT NULL DEFAULT '' COMMENT '责任编码',
  `duty_name` varchar(50) DEFAULT NULL,
  `ensure_type` varchar(10) DEFAULT '' COMMENT '保障类型',
  `default_amount` decimal(12,2) DEFAULT NULL COMMENT '默认保额',
  `default_copies` varchar(10) DEFAULT '' COMMENT '默认的份数',
  `deduct_amount` decimal(12,2) DEFAULT NULL COMMENT '免赔额',
  `deduct_amount_type` char(2) DEFAULT NULL COMMENT '免赔额类型\n            01 年免赔\n            02 次免赔',
  `loss_ration` decimal(12,2) DEFAULT NULL COMMENT '赔付比例',
  `security_detail` varchar(2000) DEFAULT NULL COMMENT '保障明细',
  `public_amount` decimal(12,2) DEFAULT NULL COMMENT '公共保额',
  `is_limit` char(1) DEFAULT NULL COMMENT '是否限制\n            0 否(同公共保额)\n            1是(低于公共保额)',
  `perlimit_amount` decimal(12,2) DEFAULT NULL COMMENT '个人限额\n            绑定is_limit为是',
  `deduct_day` int(11) DEFAULT NULL COMMENT '免赔天数',
  `selimit_amount` decimal(12,2) DEFAULT NULL COMMENT '次限额',
  `duty_order` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`risk_code`,`duty_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_pay_com definition

CREATE TABLE `fs_pay_com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(2) NOT NULL DEFAULT '',
  `city` varchar(4) NOT NULL DEFAULT '',
  `county` varchar(6) NOT NULL DEFAULT '',
  `fin_db` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COMMENT='FS_PAY_COM';


-- flexibleint.fs_prem_factor_config definition

CREATE TABLE `fs_prem_factor_config` (
  `factor_type` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '保费因子',
  `factor_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '因子组合名称',
  `factor_value` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '因子值',
  `param1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `param2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `param3` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`factor_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='保费因子配置';


-- flexibleint.fs_risk definition

CREATE TABLE `fs_risk` (
  `risk_code` varchar(8) NOT NULL,
  `risk_ver` varchar(8) NOT NULL,
  `risk_name` varchar(120) CHARACTER SET utf8 NOT NULL,
  `risk_short_name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `risk_en_name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `risk_en_short_name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `cho_duty_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `cpay_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `get_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `edor_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `rnew_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `uw_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `rins_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `insuacc_flag` varchar(1) CHARACTER SET utf8 NOT NULL,
  `dest_rate` float(22,0) DEFAULT NULL,
  `orig_risk_code` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `sub_risk_ver` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `risk_stat_name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `is_sale` varchar(2) CHARACTER SET utf8 NOT NULL,
  `is_table_rate` varchar(2) NOT NULL COMMENT '是否是表定费率险种 0否 1是',
  PRIMARY KEY (`risk_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_risk_app definition

CREATE TABLE `fs_risk_app` (
  `risk_code` varchar(10) NOT NULL,
  `risk_ver` varchar(10) DEFAULT NULL,
  `risk_name` varchar(30) DEFAULT NULL,
  `kind_code` varchar(10) DEFAULT NULL,
  `risk_type` varchar(10) DEFAULT NULL,
  `risk_type1` varchar(10) DEFAULT NULL,
  `risk_type2` varchar(10) DEFAULT NULL,
  `risk_prop` varchar(10) DEFAULT NULL,
  `risk_period` varchar(10) DEFAULT NULL,
  `risk_type_detail` varchar(10) DEFAULT NULL,
  `risk_flag` varchar(10) DEFAULT NULL,
  `pol_type` varchar(10) DEFAULT NULL,
  `invest_flag` varchar(10) DEFAULT NULL,
  `bonus_flag` varchar(10) DEFAULT NULL,
  `bonus_mode` varchar(10) DEFAULT NULL,
  `list_flag` varchar(10) DEFAULT NULL,
  `subrisk_flag` varchar(10) DEFAULT NULL COMMENT 'M主险S附加',
  `cal_digital` varchar(10) DEFAULT NULL,
  `cal_chomode` varchar(10) DEFAULT NULL,
  `risk_amntmult` varchar(10) DEFAULT NULL,
  `insuperiod_flag` varchar(10) DEFAULT NULL,
  `maxend_period` varchar(10) DEFAULT NULL,
  `agelmt` varchar(10) DEFAULT NULL,
  `signdate_calmode` varchar(10) DEFAULT NULL,
  `protocol_flag` varchar(10) DEFAULT NULL,
  `getchg_flag` varchar(10) DEFAULT NULL,
  `protocol_pay_flag` varchar(10) DEFAULT NULL,
  `ensuplan_flag` varchar(10) DEFAULT NULL,
  `ensuplanadj_flag` varchar(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_appnt_age` varchar(10) DEFAULT NULL,
  `max_appnt_age` varchar(10) DEFAULT NULL,
  `max_insured_age` varchar(10) DEFAULT NULL,
  `min_insured_age` varchar(10) DEFAULT NULL,
  `appinterest` varchar(10) DEFAULT NULL,
  `apppremrate` varchar(10) DEFAULT NULL,
  `insured_flag` varchar(10) DEFAULT NULL,
  `share_flag` varchar(10) DEFAULT NULL,
  `bnf_flag` varchar(10) DEFAULT NULL,
  `temppay_flag` varchar(10) DEFAULT NULL,
  `inppay_plan` varchar(10) DEFAULT NULL,
  `impart_flag` varchar(10) DEFAULT NULL,
  `insuexpe_flag` varchar(10) DEFAULT NULL,
  `loan_flag` varchar(10) DEFAULT NULL,
  `mortagage_flag` varchar(10) DEFAULT NULL,
  `idifreturn_flag` varchar(10) DEFAULT NULL,
  `cutamnt_stop_pay` varchar(10) DEFAULT NULL,
  `rins_rate` varchar(10) DEFAULT NULL,
  `sale_flag` varchar(10) DEFAULT NULL,
  `fileapp_flag` varchar(10) DEFAULT NULL,
  `mngcom` varchar(10) DEFAULT NULL,
  `autopay__flag` varchar(10) DEFAULT NULL,
  `need_printhospital` varchar(10) DEFAULT NULL,
  `need_printget` varchar(10) DEFAULT NULL,
  `risk_type3` varchar(10) DEFAULT NULL,
  `risk_type4` varchar(10) DEFAULT NULL,
  `risk_type5` varchar(10) DEFAULT NULL,
  `not_printpol` varchar(10) DEFAULT NULL,
  `need_getpoldate` varchar(10) DEFAULT NULL,
  `need_rereadbank` varchar(10) DEFAULT NULL,
  `spec_flag` varchar(10) DEFAULT NULL,
  `interestdif_flag` varchar(10) DEFAULT NULL,
  `risk_typeacc` varchar(10) DEFAULT NULL,
  `risk_periodacc` varchar(10) DEFAULT NULL,
  `risk_type7` varchar(10) DEFAULT NULL,
  `risk_type6` varchar(10) DEFAULT NULL,
  `health_type` varchar(10) DEFAULT NULL,
  `cancle_foreget_spec_flag` varchar(10) DEFAULT NULL,
  `risk_type8` varchar(10) DEFAULT NULL,
  `sign_datecal_mode2` varchar(10) DEFAULT NULL,
  `sign_datecal_mode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`risk_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_risk_config definition

CREATE TABLE `fs_risk_config` (
  `risk_code` varchar(10) COLLATE utf8_bin NOT NULL,
  `source` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '来源 TF  IYB',
  `zt_service_fee` varchar(5) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '减人手续费率',
  `ct_service_fee` varchar(5) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '整单退保手续费率',
  `param1` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备用字段1',
  `param2` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备用字段2',
  `param3` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备用字段3',
  `param4` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备用字段4',
  `param5` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备用字段5',
  PRIMARY KEY (`risk_code`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='险种配置';


-- flexibleint.fs_risk_duty_rela definition

CREATE TABLE `fs_risk_duty_rela` (
  `risk_code` varchar(8) NOT NULL,
  `risk_ver` varchar(8) DEFAULT NULL,
  `duty_code` varchar(10) NOT NULL,
  `cho_flag` varchar(1) NOT NULL,
  `spec_flag` varchar(1) NOT NULL,
  PRIMARY KEY (`risk_code`,`duty_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- flexibleint.fs_risk_rela definition

CREATE TABLE `fs_risk_rela` (
  `risk_code` varchar(8) NOT NULL COMMENT '险种编码',
  `rela_risk_code` varchar(8) NOT NULL COMMENT '附加险种编码',
  `rela_code` varchar(2) NOT NULL,
  `managecom_grp` varchar(300) NOT NULL,
  `is_force` varchar(2) DEFAULT NULL,
  `fee_to_acc_flag` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- flexibleint.fs_risk_rule_config definition

CREATE TABLE `fs_risk_rule_config` (
  `risk_code` varchar(20) NOT NULL COMMENT '险种编码  如果是通用规则',
  `rule_code` varchar(50) NOT NULL COMMENT '规则编码',
  `rule_desc` varchar(3000) DEFAULT NULL,
  `use_type` varchar(10) DEFAULT NULL COMMENT '使用场景：1.核保接口',
  `platform` varchar(60) DEFAULT NULL COMMENT '平台类型：i云保：IYB  德保源：DBY',
  `is_show` varchar(10) DEFAULT NULL COMMENT '是否展示',
  `is_valid` varchar(10) DEFAULT NULL COMMENT '是否有效',
  `other_sign` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`risk_code`,`rule_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_risk_rule_config_copy definition

CREATE TABLE `fs_risk_rule_config_copy` (
  `risk_code` varchar(20) NOT NULL COMMENT '险种编码  如果是通用规则',
  `rule_code` varchar(50) NOT NULL COMMENT '规则编码',
  `rule_desc` varchar(3000) DEFAULT NULL,
  `use_type` varchar(10) DEFAULT NULL COMMENT '使用场景：1.核保接口',
  `platform` varchar(60) DEFAULT NULL COMMENT '平台类型：i云保：IYB  德保源：DBY',
  `is_show` varchar(10) DEFAULT NULL COMMENT '是否展示',
  `is_valid` varchar(10) DEFAULT NULL COMMENT '是否有效',
  `other_sign` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`risk_code`,`rule_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_risk_table_factor definition

CREATE TABLE `fs_risk_table_factor` (
  `risk_code` varchar(10) NOT NULL COMMENT '险种编码',
  `factor_type` varchar(20) NOT NULL COMMENT '费率因子类型',
  `factor_value` varchar(10) NOT NULL COMMENT '费率值',
  `factor_rate` decimal(12,2) NOT NULL COMMENT '费率因子',
  `factor_desc` varchar(100) DEFAULT NULL COMMENT '费率类型描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='险种表定费率特殊因子表';


-- flexibleint.fs_risk_table_rate_211311 definition

CREATE TABLE `fs_risk_table_rate_211311` (
  `risk_code` varchar(10) NOT NULL COMMENT '险种编码',
  `duty_code` varchar(20) NOT NULL COMMENT '责任编码',
  `grade` decimal(13,2) DEFAULT NULL COMMENT '档次',
  `gender` decimal(13,2) DEFAULT NULL COMMENT '性别',
  `lower_age` decimal(13,2) DEFAULT NULL COMMENT '年龄下限',
  `upper_age` decimal(13,2) DEFAULT NULL COMMENT '年龄上限',
  `prem` decimal(13,2) DEFAULT NULL COMMENT '1000元保额保费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='险种表定费率表211311团体定期寿险（B款）';


-- flexibleint.fs_risk_table_rate_211314 definition

CREATE TABLE `fs_risk_table_rate_211314` (
  `risk_code` varchar(10) NOT NULL COMMENT '险种编码',
  `duty_code` varchar(20) NOT NULL COMMENT '责任编码',
  `grade` decimal(13,2) DEFAULT NULL COMMENT '档次',
  `gender` decimal(13,2) DEFAULT NULL COMMENT '性别',
  `lower_age` decimal(13,2) DEFAULT NULL COMMENT '年龄下限',
  `upper_age` decimal(13,2) DEFAULT NULL COMMENT '年龄上限',
  `prem` decimal(13,2) DEFAULT NULL COMMENT '1000元保额保费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='险种表定费率表211314众泰团体定期寿险（A款）';


-- flexibleint.fs_role_menugrp_rela definition

CREATE TABLE `fs_role_menugrp_rela` (
  `id` int(11) NOT NULL,
  `menugrp_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `role_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `operator` varchar(10) COLLATE utf8_bin NOT NULL,
  `operatorcom` varchar(20) COLLATE utf8_bin NOT NULL,
  `makedate` date NOT NULL,
  `maketime` char(8) COLLATE utf8_bin NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` char(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fs_rule definition

CREATE TABLE `fs_rule` (
  `rule_code` varchar(10) NOT NULL DEFAULT '' COMMENT '规则编码',
  `risk_code` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '险种编码',
  `rule_tips` varchar(1000) DEFAULT NULL COMMENT '规则提示',
  `rule_sql` varchar(3000) DEFAULT NULL COMMENT '规则sql',
  `rule_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '规则类型：00：通用规则',
  `param_num` int(10) DEFAULT NULL COMMENT '参数个数',
  `param_list` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '参数列表',
  `other_sign` varchar(10) DEFAULT NULL COMMENT '其他标识',
  PRIMARY KEY (`rule_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fs_rule_config definition

CREATE TABLE `fs_rule_config` (
  `rule_code` varchar(8) NOT NULL COMMENT '规则编码',
  `risk_code` varchar(8) NOT NULL COMMENT '险种编码',
  `duty_code` varchar(10) NOT NULL COMMENT '责任编码',
  `factor` varchar(2) NOT NULL DEFAULT '0' COMMENT '0-保额 1-保费',
  `rate` varchar(5) NOT NULL DEFAULT '1' COMMENT '保额保费倍数',
  PRIMARY KEY (`rule_code`,`risk_code`,`duty_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='累计保额规则配置表';


-- flexibleint.fs_sysvar definition

CREATE TABLE `fs_sysvar` (
  `sys_var` int(11) NOT NULL AUTO_INCREMENT,
  `sys_var_type` varchar(2) NOT NULL COMMENT '01-项目访问路径\r\n   02-项目负载路径\r\n   03-前端访问路径   04-前端调用后台路径   05-调度平台调用路径        ',
  `sys_var_value` varchar(200) NOT NULL COMMENT '访问路径',
  `state` varchar(1) NOT NULL COMMENT '0-停用；1-生效',
  `flag` varchar(1) NOT NULL COMMENT '0-不可维护；1-可维护',
  `sys_desc` varchar(200) NOT NULL DEFAULT '',
  `sys_envir` varchar(3) CHARACTER SET armscii8 NOT NULL DEFAULT '' COMMENT '系统环境 int-int测试环境 npd-生产环境',
  `manage_com` varchar(20) NOT NULL,
  `operator` varchar(10) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` char(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` char(8) NOT NULL,
  PRIMARY KEY (`sys_var`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COMMENT='系统配置表';


-- flexibleint.ft_api_trace_log definition

CREATE TABLE `ft_api_trace_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `current_request_id` varchar(50) DEFAULT NULL COMMENT '当前请求ID',
  `global_request_id` varchar(50) DEFAULT NULL COMMENT '全局请求ID',
  `operator` varchar(20) DEFAULT NULL,
  `request_ip` varchar(50) NOT NULL,
  `request_method` varchar(5) NOT NULL,
  `request_url` varchar(100) NOT NULL COMMENT '请求URL',
  `request_data` mediumtext COMMENT '请求数据',
  `response_data` mediumtext COMMENT '返回数据',
  `buss_source` varchar(2) NOT NULL DEFAULT '' COMMENT '业务来源\n            01 弹福HR\n            02 弹福Mobile\n            03 深圳个账',
  `request_time` bigint(20) NOT NULL COMMENT '请求时间戳',
  `response_time` bigint(20) DEFAULT NULL COMMENT '返回时间戳',
  `take_time` bigint(20) DEFAULT NULL COMMENT '请求耗时',
  `result_message` mediumtext COMMENT '返回结果',
  `makedate` datetime NOT NULL COMMENT '创建时间',
  `modifydate` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8809 DEFAULT CHARSET=utf8mb4 COMMENT='API访问日志表';


-- flexibleint.ft_benefy definition

CREATE TABLE `ft_benefy` (
  `benefy_id` varchar(10) NOT NULL,
  `benefy_name` varchar(40) NOT NULL COMMENT '姓名',
  `sex` varchar(2) NOT NULL COMMENT '性别:\n            0  男\n            1  女',
  `birthday` date NOT NULL COMMENT '出生日期',
  `id_type` varchar(2) NOT NULL COMMENT '证件类型',
  `id_no` varchar(20) NOT NULL COMMENT '证件号',
  `occupation_type` varchar(2) NOT NULL DEFAULT '' COMMENT '职业类别',
  `married` char(1) NOT NULL DEFAULT '' COMMENT '是否已婚\n            0 否\n            1 是',
  `benefy_amount` decimal(13,2) DEFAULT NULL COMMENT '受益份额',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`benefy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='受益人信息表';


-- flexibleint.ft_egrp definition

CREATE TABLE `ft_egrp` (
  `edor_appno` varchar(20) NOT NULL DEFAULT '' COMMENT '保全受理号',
  `grp_contno_list` blob NOT NULL COMMENT '团体保单号列表',
  `grp_no` varchar(10) NOT NULL COMMENT '企业号',
  `salesman_id` varchar(20) NOT NULL DEFAULT '' COMMENT '业务员编号',
  `grpno_up` varchar(20) NOT NULL DEFAULT '' COMMENT '上级企业客户号\n            若该字段为空，则说明该企业是总公司',
  `grp_level` varchar(2) NOT NULL DEFAULT '0' COMMENT '0-表示总公司\n            1-表示一级分公司\n            2-表示二级分公司\n            3-表示三级分公司\n            4-表示四级分公司',
  `grp_name` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `manage_area` varchar(100) NOT NULL DEFAULT '' COMMENT '经营范围',
  `register_no` varchar(20) NOT NULL DEFAULT '' COMMENT '工商注册号',
  `manage_no` varchar(20) NOT NULL DEFAULT '' COMMENT '组织机构',
  `business_type` varchar(20) NOT NULL DEFAULT '' COMMENT '行业分类',
  `grp_type` varchar(10) NOT NULL DEFAULT '' COMMENT '单位性质',
  `id_type` varchar(2) NOT NULL DEFAULT '' COMMENT '企业证件类型\n            \r\n6 统一社会信息代码\n            \r\n2 组织机构代码',
  `id_no` varchar(50) NOT NULL DEFAULT '' COMMENT '企业证件号码',
  `id_validate` date NOT NULL COMMENT '企业证件有效期\n            长期9999-12-12',
  `peoples` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '单位总人数',
  `corporation_man` varchar(50) NOT NULL DEFAULT '' COMMENT '企业法人代表',
  `operator_name` varchar(50) NOT NULL DEFAULT '' COMMENT '经营者姓名',
  `endor_period` varchar(50) NOT NULL DEFAULT '' COMMENT '保全追溯期间',
  `endor_period_unit` char(1) NOT NULL DEFAULT '' COMMENT '保全追溯期间单位\r\n保全追溯期间单位\r\nY 年\r\nM 月\r\nD 日',
  `country` varchar(10) NOT NULL DEFAULT 'CHN' COMMENT '国家',
  `province` varchar(10) NOT NULL COMMENT '省',
  `city` varchar(10) NOT NULL COMMENT '市',
  `county` varchar(10) NOT NULL COMMENT '区县',
  `address` varchar(500) NOT NULL COMMENT '单位地址',
  `fixedtel` varchar(20) NOT NULL DEFAULT '' COMMENT '企业固定电话',
  `phone` varchar(18) NOT NULL DEFAULT '' COMMENT '企业电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '企业传真',
  `zip_code` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '企业e_mail',
  `is_auth` char(1) NOT NULL DEFAULT '' COMMENT '是否认证\r\n0 否\r\n1 是',
  `business_license` varchar(50) DEFAULT NULL COMMENT '营业执照id',
  `operator` varchar(11) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL DEFAULT '',
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`edor_appno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业客户临时表';


-- flexibleint.ft_egrp_contact definition

CREATE TABLE `ft_egrp_contact` (
  `id` varchar(10) NOT NULL COMMENT '主键',
  `contact_name` varchar(50) NOT NULL COMMENT '联系人名称',
  `email` varchar(100) NOT NULL COMMENT '联系人邮箱',
  `id_type` varchar(2) NOT NULL DEFAULT '' COMMENT '联系人证件类型',
  `id_no` varchar(100) NOT NULL DEFAULT '' COMMENT '联系人证件号码',
  `mobilephone` varchar(11) NOT NULL COMMENT '联系人手机号',
  `operator` varchar(10) NOT NULL COMMENT '登录用户ID',
  `operatorcom` varchar(20) NOT NULL COMMENT '登录用户管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` varchar(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` varchar(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业联系人表';


-- flexibleint.ft_egrp_contact_rela definition

CREATE TABLE `ft_egrp_contact_rela` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `grpcontact_id` varchar(10) DEFAULT NULL COMMENT '企业联系人ID',
  `grp_no` varchar(10) DEFAULT NULL COMMENT '企业编号',
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `operator` varchar(11) NOT NULL COMMENT '登录用户ID',
  `operatorcom` varchar(20) NOT NULL COMMENT '登录用户机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` varchar(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` varchar(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPCONTACTRELA_FCGRP` (`grp_no`) USING BTREE,
  KEY `FK_FCGRPCONTACTRELA_FCGRPCONTACT` (`grpcontact_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COMMENT='企业与联系人关联表';


-- flexibleint.ft_validatecode definition

CREATE TABLE `ft_validatecode` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动态密码流水号',
  `code_id` varchar(100) NOT NULL COMMENT '验证码id\n            存当前验证码标识：如邮箱或手机号等',
  `code_type` char(2) NOT NULL COMMENT '动态密码类型\n            01-手机\n            02-邮箱',
  `validate_code` varchar(10) NOT NULL COMMENT '验证码',
  `is_valid` char(1) NOT NULL DEFAULT '1' COMMENT '是否有效:\n            0-否\n            1-是',
  `startdate` date NOT NULL,
  `maketime` varchar(8) NOT NULL COMMENT '起始时间',
  `enddate` date NOT NULL,
  `endtime` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4150 DEFAULT CHARSET=utf8mb4 COMMENT='存放未注册用户动态验证码信息';


-- flexibleint.fu_agent definition

CREATE TABLE `fu_agent` (
  `agent_code` varchar(20) NOT NULL,
  `agent_name` varchar(100) DEFAULT NULL,
  `id_type` varchar(5) DEFAULT NULL,
  `id_no` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `wechat` varchar(60) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `hrcode` varchar(32) DEFAULT NULL,
  `team_code` varchar(20) DEFAULT NULL,
  `team_name` varchar(200) DEFAULT NULL,
  `manage_com` varchar(20) DEFAULT NULL,
  `com_code` varchar(20) DEFAULT NULL,
  `agent_grade` varchar(10) DEFAULT NULL,
  `group_code` varchar(70) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `psn_type` varchar(2) DEFAULT NULL COMMENT '1营销   2团险  3银保   6收展',
  `data_type` varchar(1) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`agent_code`),
  UNIQUE KEY `agent_code_2` (`agent_code`) USING BTREE,
  KEY `idx_group_code` (`group_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fu_channel definition

CREATE TABLE `fu_channel` (
  `id` varchar(10) NOT NULL,
  `channel_name` varchar(20) NOT NULL,
  `login_url` varchar(500) NOT NULL DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fu_comtoagent definition

CREATE TABLE `fu_comtoagent` (
  `agent_com` varchar(50) NOT NULL,
  `rela_type` varchar(10) NOT NULL,
  `agent_code` varchar(50) NOT NULL,
  `agent_group` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `operatorcom` varchar(255) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`agent_com`,`agent_code`,`rela_type`),
  KEY `agent_com` (`agent_com`),
  KEY `agent_code` (`agent_code`),
  KEY `agent_com_2` (`agent_com`) USING BTREE,
  KEY `agent_code_2` (`agent_code`) USING BTREE,
  KEY `agent_com_3` (`agent_com`) USING BTREE,
  KEY `agent_com_4` (`agent_com`) USING BTREE,
  KEY `agent_com_5` (`agent_com`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fu_faceauth_trace definition

CREATE TABLE `fu_faceauth_trace` (
  `trans_no` varchar(16) COLLATE utf8_bin NOT NULL,
  `busi_code` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `type` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '文件类型，图片-image；视频-video',
  `name` varchar(60) COLLATE utf8_bin NOT NULL,
  `id_type` varchar(2) COLLATE utf8_bin NOT NULL,
  `id_no` varchar(20) COLLATE utf8_bin NOT NULL,
  `detection_file` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `detection_url` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `auth_date` date NOT NULL,
  `auth_time` char(8) COLLATE utf8_bin NOT NULL,
  `straight_error_times` int(11) NOT NULL DEFAULT '0',
  `result_code` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '0-成功，其他-失败',
  `result_message` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `auth_conclusion` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'pass-通过，no_pass-未通过',
  `auth_score` decimal(7,2) DEFAULT NULL,
  `mismatiching_message` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `business_no` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `operatorcom` varchar(8) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `operator` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) COLLATE utf8_bin NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`trans_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fu_register_source definition

CREATE TABLE `fu_register_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(11) NOT NULL COMMENT '用户id',
  `register_source` varchar(2) NOT NULL DEFAULT '' COMMENT '用户注册时的来源 01:pc端 02:移动端 03:管理员 04:渠道用户 05:大型员福hr 06:员工',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1962 DEFAULT CHARSET=utf8mb4 COMMENT='用户注册来源表';


-- flexibleint.fu_role definition

CREATE TABLE `fu_role` (
  `id` varchar(2) NOT NULL COMMENT '1、HR\n            2、分公司管理员\n            3、总公司管理员',
  `role_name` varchar(10) NOT NULL COMMENT '1、HR\n            2、分公司管理员\n            3、总公司管理员',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fu_user definition

CREATE TABLE `fu_user` (
  `id` varchar(10) NOT NULL COMMENT '用户编号',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `user_name` varchar(60) NOT NULL DEFAULT '' COMMENT '姓名',
  `nick_name` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `pass_word` varchar(200) NOT NULL COMMENT '密码',
  `percustomer_id` varchar(10) NOT NULL DEFAULT '' COMMENT '关联个人客户ID',
  `is_lock` char(1) NOT NULL DEFAULT '0' COMMENT '锁定标记0未锁定1锁定',
  `is_vip` char(1) NOT NULL DEFAULT '0' COMMENT 'VIP标记0非1是',
  `login_fail_time` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '登录失败次数>=3锁定用户',
  `state` char(1) NOT NULL DEFAULT '1' COMMENT '用户状态0无效 1有效',
  `user_source` varchar(10) NOT NULL COMMENT ' 页面注册用户 直销 01\n            分公司管理员创建用户 分公司管理员 02 \n            渠道人员创建用户 渠道 存对应渠道编码 ',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `is_initpwd` char(1) NOT NULL DEFAULT '1' COMMENT '是否为初始化密码  0否 1是',
  `lockdate` date DEFAULT NULL COMMENT '锁定日期',
  `locktime` char(8) DEFAULT '' COMMENT '锁定时间',
  `agentcode` varchar(20) NOT NULL DEFAULT '' COMMENT '存业务员ID',
  `managecom` varchar(20) NOT NULL COMMENT '存分公司编码',
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `register_source` varchar(2) NOT NULL DEFAULT '' COMMENT '用户注册时的来源 01:pc端 02:移动端 03:管理员 04:渠道用户 05:大型员福hr 06:员工',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fu_user_map definition

CREATE TABLE `fu_user_map` (
  `id` int(11) NOT NULL,
  `pass_word` varchar(255) NOT NULL,
  `sm_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.grp_temp definition

CREATE TABLE `grp_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `grp_name` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `grp_id_no` varchar(100) DEFAULT NULL COMMENT '企业证件号',
  `grp_contno` varchar(100) DEFAULT NULL COMMENT '保单号',
  `grp_type` varchar(100) DEFAULT NULL COMMENT '企业性质',
  `grp_business_type` varchar(100) DEFAULT NULL COMMENT '行业性质',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9989 DEFAULT CHARSET=utf8;


-- flexibleint.txhx_laagent_syn definition

CREATE TABLE `txhx_laagent_syn` (
  `AGENTCODE` varchar(20) NOT NULL,
  `AGENTNAME` varchar(100) DEFAULT NULL,
  `IDTYPE` varchar(5) DEFAULT NULL,
  `IDNO` varchar(20) DEFAULT NULL,
  `SEX` varchar(2) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `JOINDATE` date DEFAULT NULL,
  `TEAMCODE` varchar(20) DEFAULT NULL,
  `TEAMNAME` varchar(200) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '0-离司 1-在职 2-删除',
  `MANAGECOM` varchar(20) NOT NULL,
  `COMCODE` varchar(20) NOT NULL,
  `MAKEOPERATOR` varchar(30) NOT NULL,
  `MAKEDATE` date NOT NULL,
  `MAKETIME` varchar(8) NOT NULL,
  `MODIFYOPERATOR` varchar(30) NOT NULL,
  `MODIFYDATE` date NOT NULL,
  `MODIFYTIME` varchar(8) NOT NULL,
  `PSNTYPE` varchar(2) DEFAULT NULL,
  `DATATYPE` varchar(1) NOT NULL COMMENT 'C-CMS系统 G-GMS系统',
  `ADDRESS` varchar(300) DEFAULT NULL,
  `ZIPCODE` varchar(10) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(60) DEFAULT NULL,
  `WECHAT` varchar(60) DEFAULT NULL,
  `HRCODE` varchar(32) DEFAULT NULL,
  `AGENTGRADE` varchar(10) DEFAULT NULL,
  `GROUPCODE` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`AGENTCODE`,`DATATYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.txhx_lacom_syn definition

CREATE TABLE `txhx_lacom_syn` (
  `AGENTCOM` varchar(40) NOT NULL,
  `NAME` varchar(300) DEFAULT NULL,
  `AREATYPE` varchar(2) DEFAULT NULL COMMENT '1-总公司 2-分公司 3-支公司',
  `UPAGENTCOM` varchar(50) DEFAULT NULL,
  `SALEDEPART` varchar(2) DEFAULT NULL,
  `CHNLTYPE` varchar(2) DEFAULT NULL,
  `SALECHNL` varchar(2) DEFAULT NULL,
  `NEEDWRITEOFF` varchar(2) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(60) DEFAULT NULL,
  `ZIPCODE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `WEBADDRESS` varchar(100) DEFAULT NULL,
  `LINKMAN` varchar(200) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `CORPORATION` varchar(200) DEFAULT NULL,
  `RGTCAPITAL` decimal(16,2) DEFAULT NULL,
  `BANKCODE` varchar(200) DEFAULT NULL,
  `BANKACCNO` varchar(50) DEFAULT NULL,
  `ACCNAME` varchar(200) DEFAULT NULL,
  `LICENSE` varchar(32) DEFAULT NULL,
  `ORGANIZATIONCODE` varchar(32) DEFAULT NULL,
  `TAXCODE` varchar(32) DEFAULT NULL,
  `SALEFLAG` varchar(2) DEFAULT NULL COMMENT '0-否 1-是',
  `QUALIFYNO` varchar(32) DEFAULT NULL,
  `QUALIFYSTARTDATE` date DEFAULT NULL,
  `QUALIFYENDDATE` date DEFAULT NULL,
  `CONTRACTNO` varchar(32) DEFAULT NULL,
  `CONTRACTSTARTDATE` date DEFAULT NULL,
  `CONTRACTENDDATE` date DEFAULT NULL,
  `RESTATE` varchar(1) DEFAULT NULL COMMENT '0-同意 1-不同意',
  `RESULT` varchar(200) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '0-无效 1-有效 2--新增 3--更新中 4-待审核 5-审核不通过 6-删除',
  `AGENTTYPE1` varchar(2) DEFAULT NULL COMMENT '是否虚拟中介 0-否 1-是',
  `AGENTTYPE2` varchar(2) DEFAULT NULL COMMENT '是否属于短意险系统 1-属于 2-不属于',
  `AGENTTYPE3` varchar(2) DEFAULT NULL,
  `AGENTTYPE4` varchar(2) DEFAULT NULL,
  `AGENTTYPE5` varchar(2) DEFAULT NULL,
  `MANAGECOM` varchar(20) NOT NULL COMMENT '承保管理机构',
  `COMCODE` varchar(20) NOT NULL COMMENT '承保公司代码',
  `MAKEOPERATOR` varchar(30) NOT NULL,
  `MAKEDATE` date NOT NULL,
  `MAKETIME` varchar(8) NOT NULL,
  `MODIFYOPERATOR` varchar(30) NOT NULL,
  `MODIFYDATE` date NOT NULL,
  `MODIFYTIME` varchar(8) NOT NULL,
  `BUSINESSNO` varchar(32) DEFAULT NULL,
  `ORGNO` varchar(32) DEFAULT NULL,
  `BUSINESSSTARTDATE` date DEFAULT NULL,
  `BUSINESSENDDATE` date DEFAULT NULL,
  `ORGSTARTDATE` date DEFAULT NULL,
  `ORGENDDATE` date DEFAULT NULL,
  `BEGINDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `PROTOCALNO` varchar(20) DEFAULT NULL COMMENT '协议号',
  PRIMARY KEY (`AGENTCOM`),
  KEY `TXHX_LACOM_INDEX` (`MANAGECOM`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.txhx_lacomtoagent_syn definition

CREATE TABLE `txhx_lacomtoagent_syn` (
  `AGENTCOM` varchar(20) NOT NULL COMMENT '代理机构代码,通过该字段对应银行专有属性表(可能是银行信息表）',
  `RELATYPE` varchar(1) NOT NULL COMMENT '关联类型,0-渠道组与渠道关联(分行),1-网点（机构）与代理人关联',
  `AGENTCODE` varchar(10) NOT NULL COMMENT '代理人编码',
  `AGENTGROUP` varchar(12) DEFAULT NULL COMMENT '代理人组别',
  `OPERATOR` varchar(10) NOT NULL COMMENT '操作员代码',
  `MAKEDATE` date NOT NULL COMMENT '入机日期',
  `MAKETIME` varchar(8) NOT NULL COMMENT '入机时间',
  `MODIFYDATE` date NOT NULL COMMENT '最后一次修改日期',
  `MODIFYTIME` varchar(8) NOT NULL COMMENT '最后一次修改时间',
  `STARTDATE` date DEFAULT NULL COMMENT '起始日期',
  `ENDDATE` date DEFAULT NULL COMMENT '终止日期',
  PRIMARY KEY (`AGENTCOM`,`AGENTCODE`,`RELATYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.txhx_lacomtomarketagent_syn definition

CREATE TABLE `txhx_lacomtomarketagent_syn` (
  `AGENTCOM` varchar(20) NOT NULL COMMENT '代理机构代码',
  `BRANCHTYPE` varchar(1) NOT NULL COMMENT '渠道',
  `AGENTCODE` varchar(20) NOT NULL COMMENT '销售人员编码',
  `OPERATOR` varchar(10) DEFAULT NULL COMMENT '操作人',
  `MAKEDATE` date DEFAULT NULL COMMENT '操作日期',
  `MAKETIME` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `MODIFYDATE` date DEFAULT NULL COMMENT '修改日期',
  `MODIFYTIME` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `STARTDATE` date DEFAULT NULL COMMENT '起始日期',
  `ENDDATE` date DEFAULT NULL,
  `STATE` varchar(2) NOT NULL COMMENT '当前状态  0无效 1有效',
  PRIMARY KEY (`AGENTCOM`,`AGENTCODE`,`BRANCHTYPE`,`STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='中介机构销售人员关联表';


-- flexibleint.txhx_lagroupmapping_syn definition

CREATE TABLE `txhx_lagroupmapping_syn` (
  `MAPPINGNO` varchar(20) NOT NULL,
  `MAPPINGTYPE` varchar(4) DEFAULT NULL,
  `STATCODE` varchar(20) NOT NULL,
  `GROUPCODE` varchar(20) DEFAULT NULL,
  `STARTDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `LINKTYPE` varchar(4) DEFAULT NULL,
  `LINKGROUPCODE` varchar(20) DEFAULT NULL,
  `STATE` varchar(4) DEFAULT NULL,
  `MAKEDATE` date NOT NULL,
  `MAKETIME` varchar(8) NOT NULL,
  `MODIFYDATE` date NOT NULL,
  `MODIFYTIME` varchar(8) NOT NULL,
  `OPERATOR` varchar(80) NOT NULL,
  `F1` varchar(20) DEFAULT NULL,
  `F2` varchar(20) DEFAULT NULL,
  `F3` varchar(20) DEFAULT NULL,
  `F4` varchar(20) DEFAULT NULL,
  `K1` decimal(12,2) DEFAULT NULL,
  `K2` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`MAPPINGNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.txhx_lamarketagent_syn definition

CREATE TABLE `txhx_lamarketagent_syn` (
  `MARKETAGENTCODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '销管工号',
  `AGENTCOM` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '代理机构',
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `SEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '出生日期',
  `IDTYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '证件类型',
  `IDNO` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '证件号',
  `DEGREE` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `PHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `JOINDATE` date DEFAULT NULL COMMENT '入司日期',
  `OUTWORKDATE` date DEFAULT NULL COMMENT '离职日期',
  `AGENTSTATE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '在职状态',
  `RISKWN` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否有万能险资格',
  `RISKWNCODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '万能险销售资格证号',
  `AGENTCOMID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '代理公司内部工号',
  `BLACKCODE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否黑名单',
  `BLACKREASON` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '黑名单原因',
  `SUPAGENTCODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '督导代码',
  `SUPAGENTNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '督导姓名',
  `EMPOLYDATE` date DEFAULT NULL COMMENT '中介入职时间',
  `OPERATOR` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `MAKEDATE` date DEFAULT NULL COMMENT '操作日期',
  `MAKETIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '操作时间',
  `MODIFYDATE` date DEFAULT NULL COMMENT '修改日期',
  `MODIFYTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '修改时间',
  `ISMICRINVEST` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否有微投资格',
  `BRANCHTYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '渠道',
  `FREE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段1',
  `FREE3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段2 - 执业证号',
  `FREE4` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`MARKETAGENTCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.txhx_laqualification_syn definition

CREATE TABLE `txhx_laqualification_syn` (
  `SERIALNO` int(11) NOT NULL COMMENT '主键',
  `AGENTCODE` varchar(20) DEFAULT NULL COMMENT '业务员编码',
  `AGENTTYPE` varchar(1) DEFAULT NULL,
  `QLFYCARDNO` varchar(32) DEFAULT NULL,
  `QLFYCARDTYPENO` varchar(1) DEFAULT NULL,
  `QLFYCARDTYPENAME` varchar(30) DEFAULT NULL,
  `STARTDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `STATE` varchar(1) DEFAULT NULL,
  `MAKEOPERATOR` varchar(30) NOT NULL,
  `MAKEDATE` date NOT NULL,
  `MAKETIME` varchar(8) NOT NULL,
  `MODIFYOPERATOR` varchar(30) NOT NULL,
  `MODIFYDATE` date NOT NULL,
  `MODIFYTIME` varchar(8) NOT NULL,
  `DEVNO1` varchar(30) DEFAULT NULL,
  `DEVNO2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`SERIALNO`),
  KEY `txhx_laqualification_syn_AGENTCODE_IDX` (`AGENTCODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.txhx_ldcom_syn definition

CREATE TABLE `txhx_ldcom_syn` (
  `MANAGECOM` varchar(20) NOT NULL COMMENT '机构编码',
  `OUTCOMCODE` varchar(30) NOT NULL DEFAULT '' COMMENT '对外公布的机构代码',
  `NAME` varchar(300) NOT NULL DEFAULT '' COMMENT '机构名称',
  `SHORTNAME` varchar(300) NOT NULL DEFAULT '' COMMENT '短名称',
  `ENGLISHNAME` varchar(300) DEFAULT '',
  `ADDRESS` varchar(360) DEFAULT '' COMMENT '机构地址',
  `ZIPCODE` varchar(6) DEFAULT '' COMMENT '机构邮编',
  `PHONE` varchar(18) DEFAULT '' COMMENT '机构电话',
  `FAX` varchar(18) DEFAULT '' COMMENT '机构传真',
  `EMAIL` varchar(60) DEFAULT '' COMMENT 'EMail',
  `WEBADDRESS` varchar(100) DEFAULT '' COMMENT '网址',
  `SATRAPNAME` varchar(30) DEFAULT '' COMMENT '主管人姓名',
  `COMCODEISC` varchar(30) DEFAULT '',
  `OTHERCOMCODE` varchar(30) DEFAULT '',
  `COMNATURE` varchar(6) DEFAULT '',
  `COMGRADE` varchar(10) DEFAULT '',
  `COMAREATYPE` varchar(10) DEFAULT '',
  `UPCOMCODE` varchar(30) DEFAULT '',
  `PROVINCE` varchar(30) DEFAULT '',
  `CITY` varchar(30) DEFAULT '',
  `COUNTY` varchar(30) DEFAULT '',
  `FINDB` varchar(30) DEFAULT '' COMMENT '主要用于与Sun财务系统对接使用',
  `SEGMENT1` varchar(30) DEFAULT '',
  `SEGMENT2` varchar(30) DEFAULT '',
  `SEGMENT3` varchar(30) DEFAULT '',
  `SEGMENT4` varchar(30) DEFAULT '',
  `SEGMENT5` varchar(30) DEFAULT '',
  `COMCODE` varchar(20) DEFAULT '',
  `MAKEOPERATOR` varchar(30) DEFAULT NULL,
  `MAKEDATE` date DEFAULT NULL,
  `MAKETIME` varchar(8) DEFAULT NULL,
  `MODIFYOPERATOR` varchar(30) DEFAULT NULL,
  `MODIFYDATE` date DEFAULT NULL,
  `MODIFYTIME` varchar(8) DEFAULT NULL,
  `SERVICENAME` varchar(50) DEFAULT '',
  `SERVICEPHONE` varchar(30) DEFAULT '',
  `SERVICEPOSTADDRESS` varchar(160) DEFAULT '',
  `PREFECTURALLEVELCITY` varchar(2) DEFAULT '',
  PRIMARY KEY (`MANAGECOM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='核心机构同步表';


-- flexibleint.yqb_temp definition

CREATE TABLE `yqb_temp` (
  `pay_no` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `pay_date_time` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`pay_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fa_agent_com definition

CREATE TABLE `fa_agent_com` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `agent_com` varchar(20) NOT NULL,
  `agent_com_name` varchar(100) NOT NULL,
  `agent_saleman` varchar(200) NOT NULL,
  `agent_code` varchar(20) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `agent_manage_com` varchar(10) NOT NULL,
  `comm_busi_rate` decimal(14,4) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FAAGENTCOM_FOGRPORDER` (`grp_order_no`) USING BTREE,
  CONSTRAINT `fa_agent_com_ibfk_1` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3640 DEFAULT CHARSET=utf8mb4 COMMENT='中介云机构信息表';


-- flexibleint.fa_agent_hand_fee definition

CREATE TABLE `fa_agent_hand_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `risk_code` varchar(8) NOT NULL COMMENT '险种编码',
  `agent_com_name` varchar(100) NOT NULL,
  `agent_com` varchar(40) NOT NULL,
  `handfee_rate` decimal(12,4) NOT NULL COMMENT '手续费比率',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FAAGENTHANDFEE_FOGRPORDER` (`grp_order_no`) USING BTREE,
  CONSTRAINT `fa_agent_hand_fee_ibfk_1` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9040 DEFAULT CHARSET=utf8mb4 COMMENT='中介云手续费表';


-- flexibleint.fa_channel_combo_rela definition

CREATE TABLE `fa_channel_combo_rela` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `channel_code` varchar(20) DEFAULT NULL COMMENT '渠道编码\n            IYB     i云保\n            EJ    e家\n            DBY    德保源',
  `combo_code` varchar(20) DEFAULT NULL COMMENT '套餐编码',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FACHANNELCOMBORELA_FACHANNEL` (`channel_code`) USING BTREE,
  KEY `FK_FACHANNELCOMBORELA_FACOMBO` (`combo_code`) USING BTREE,
  CONSTRAINT `fa_channel_combo_rela_ibfk_1` FOREIGN KEY (`channel_code`) REFERENCES `fa_channel` (`channel_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fa_channel_combo_rela_ibfk_2` FOREIGN KEY (`combo_code`) REFERENCES `fa_combo` (`combo_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COMMENT='中介云渠道和套餐关联表';


-- flexibleint.fa_combo_plan_rela definition

CREATE TABLE `fa_combo_plan_rela` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_code` varchar(20) DEFAULT NULL,
  `combo_code` varchar(20) DEFAULT NULL COMMENT '套餐编码',
  `ensure_type` varchar(3) DEFAULT NULL COMMENT '保障类型\n            E00 单个保障类型\n            E01 A\n            E02 B\n            E03 C\n            E04 D\n            E05 E',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FACOMBOFPPLANRELA_FACOMBO` (`combo_code`,`ensure_type`) USING BTREE,
  KEY `FK_FACOMBOFPPLANRELA_FPPLAN` (`plan_code`) USING BTREE,
  CONSTRAINT `fa_combo_plan_rela_ibfk_1` FOREIGN KEY (`combo_code`, `ensure_type`) REFERENCES `fa_combo` (`combo_code`, `ensure_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fa_combo_plan_rela_ibfk_2` FOREIGN KEY (`plan_code`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4050 DEFAULT CHARSET=utf8mb4 COMMENT='中介云套餐和方案关联表';


-- flexibleint.fa_grporder_info definition

CREATE TABLE `fa_grporder_info` (
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `channel_code` varchar(20) DEFAULT NULL COMMENT '渠道编码\n            IYB     i云保\n            EJ    e家\n            DBY    德保源',
  `insured_period` int(11) NOT NULL DEFAULT '0',
  `insured_period_flag` char(1) NOT NULL DEFAULT '' COMMENT 'Y 年\n            M 月\n            D 日',
  `grp_spec` varchar(2000) NOT NULL,
  `pay_intv` varchar(2) NOT NULL COMMENT '缴费方式\n            0 趸交\n            1 期缴\n            3 季缴\n            6 半年缴\n            12 年缴',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`grp_order_no`),
  KEY `FK_FAGRPORDERINFO_FACHANNEL` (`channel_code`) USING BTREE,
  CONSTRAINT `fa_grporder_info_ibfk_1` FOREIGN KEY (`channel_code`) REFERENCES `fa_channel` (`channel_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='中介云团体订单明细表';


-- flexibleint.fa_grporder_product definition

CREATE TABLE `fa_grporder_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `combo_code` varchar(20) DEFAULT NULL COMMENT '套餐编码',
  `ensure_type` varchar(3) DEFAULT NULL COMMENT '保障类型\r\n            E00 单个保障类型\r\n            E01 A\r\n            E02 B\r\n            E03 C\r\n            E04 D\r\n            E05 E',
  `plan_code` varchar(20) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FAGRPORDERPRODUCT_FACOMBO` (`combo_code`,`ensure_type`),
  KEY `FK_FAGRPORDERPRODUCT_FOGRPORDER` (`grp_order_no`),
  KEY `FK_FAGRPORDERPRODUCT_FPPLAN` (`plan_code`),
  CONSTRAINT `FK_FAGRPORDERPRODUCT_FACOMBO` FOREIGN KEY (`combo_code`, `ensure_type`) REFERENCES `fa_combo` (`combo_code`, `ensure_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FAGRPORDERPRODUCT_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FAGRPORDERPRODUCT_FPPLAN` FOREIGN KEY (`plan_code`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4044 DEFAULT CHARSET=utf8mb4 COMMENT='中介云团体订单与产品表';


-- flexibleint.fc_grp_account definition

CREATE TABLE `fc_grp_account` (
  `grpacct_id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_no` varchar(10) DEFAULT NULL,
  `pay_bank_code` varchar(50) NOT NULL DEFAULT '',
  `pay_bank_name` varchar(100) NOT NULL DEFAULT '',
  `pay_bank_line` varchar(50) NOT NULL DEFAULT '',
  `pay_account_name` varchar(100) NOT NULL DEFAULT '',
  `pay_account_no` varchar(50) NOT NULL DEFAULT '',
  `pay_province` varchar(50) NOT NULL DEFAULT '',
  `pay_city` varchar(50) NOT NULL DEFAULT '',
  `pay_street` varchar(100) NOT NULL DEFAULT '',
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(50) NOT NULL DEFAULT '',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '',
  `operator` varchar(11) NOT NULL DEFAULT '',
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL DEFAULT '',
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`grpacct_id`),
  KEY `FK_FCGRPACCOUNT_FCGRP` (`grp_no`),
  CONSTRAINT `FK_FCGRPACCOUNT_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4316 DEFAULT CHARSET=utf8mb4 COMMENT='企业账户信息';


-- flexibleint.fc_grp_contact_rela definition

CREATE TABLE `fc_grp_contact_rela` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grpcontact_id` varchar(10) DEFAULT NULL,
  `grp_no` varchar(10) DEFAULT NULL,
  `operator` varchar(11) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPCONTACTRELA_FCGRP` (`grp_no`),
  KEY `FK_FCGRPCONTACTRELA_FCGRPCONTACT` (`grpcontact_id`),
  CONSTRAINT `FK_FCGRPCONTACTRELA_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCGRPCONTACTRELA_FCGRPCONTACT` FOREIGN KEY (`grpcontact_id`) REFERENCES `fc_grp_contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5954 DEFAULT CHARSET=utf8mb4 COMMENT='企业与联系人关联表';


-- flexibleint.fc_grp_ensure_rela definition

CREATE TABLE `fc_grp_ensure_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_no` varchar(10) DEFAULT NULL,
  `ensure_code` varchar(10) DEFAULT NULL,
  `deal_conclusion` varchar(2) NOT NULL DEFAULT '' COMMENT '处理结论\r\n            01 通过\r\n            02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `state` varchar(2) DEFAULT NULL,
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPENSURERELA_FCGRP` (`grp_no`),
  KEY `FK_FCGRPENSURERELA_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FCGRPENSURERELA_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCGRPENSURERELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=661 DEFAULT CHARSET=utf8mb4 COMMENT='福利和企业关联表';


-- flexibleint.fc_grp_ensure_track definition

CREATE TABLE `fc_grp_ensure_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_no` varchar(10) DEFAULT NULL,
  `ensure_code` varchar(10) DEFAULT NULL,
  `deal_conclusion` varchar(2) NOT NULL DEFAULT '' COMMENT '处理结论\r\n            01 通过\r\n            02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `state` varchar(2) DEFAULT '' COMMENT '处理意见',
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPENSURETRACK_FCGRP` (`grp_no`),
  KEY `FK_FCGRPENSURETRACK_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FCGRPENSURETRACK_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCGRPENSURETRACK_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2087 DEFAULT CHARSET=utf8mb4 COMMENT='企业福利关联轨迹表';


-- flexibleint.fc_grp_person_rela definition

CREATE TABLE `fc_grp_person_rela` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `per_no` varchar(10) DEFAULT NULL,
  `grp_no` varchar(10) DEFAULT NULL,
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPPERSONRELA_FCGRP` (`grp_no`),
  KEY `FK_FCGRPPERSONRELA_FCPERSON` (`per_no`),
  CONSTRAINT `FK_FCGRPPERSONRELA_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCGRPPERSONRELA_FCPERSON` FOREIGN KEY (`per_no`) REFERENCES `fc_person` (`per_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=225241 DEFAULT CHARSET=utf8mb4 COMMENT='企业个人客户关联表';


-- flexibleint.fc_grp_personalization definition

CREATE TABLE `fc_grp_personalization` (
  `grp_no` varchar(10) NOT NULL,
  `short_market_url` varchar(200) NOT NULL DEFAULT '' COMMENT '短险超市链接',
  `puhuibao_url` varchar(200) NOT NULL DEFAULT '' COMMENT '普惠宝链接',
  `other_url` varchar(200) NOT NULL DEFAULT '' COMMENT '其它链接',
  `img_one` varchar(200) NOT NULL DEFAULT '' COMMENT '图片一',
  `img_two` varchar(200) NOT NULL DEFAULT '' COMMENT '图片二',
  `img_three` varchar(200) NOT NULL DEFAULT '' COMMENT '图片三',
  `img_four` varchar(200) NOT NULL DEFAULT '' COMMENT '图片四',
  `img_five` varchar(200) NOT NULL DEFAULT '' COMMENT '图片五',
  `img_six` varchar(200) NOT NULL DEFAULT '' COMMENT '图片六',
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`grp_no`),
  CONSTRAINT `FK_FCGRPPERSONALIZATION_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业个性化配置表';


-- flexibleint.fc_grp_track definition

CREATE TABLE `fc_grp_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_no` varchar(10) NOT NULL,
  `state` varchar(2) NOT NULL COMMENT '企业审核状态\n            \r\n01 定制中\n            \r\n02 待审核\n            \r\n03 审核中\n            \r\n04 审核完成\n            \r\n05 审核拒绝',
  `deal_conclusion` char(2) NOT NULL DEFAULT '' COMMENT '处理结论\n           \r\n01 通过\n            \r\n02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FCGRPTRACK_FCGRP` (`grp_no`),
  CONSTRAINT `FK_FCGRPTRACK_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8mb4 COMMENT='企业审核轨迹表';


-- flexibleint.fc_person_family_rela definition

CREATE TABLE `fc_person_family_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_no` varchar(10) DEFAULT NULL,
  `family_no` varchar(10) DEFAULT NULL,
  `family_person_rela` varchar(2) NOT NULL COMMENT '01本人\n            02子女\n            03父母',
  `operator` varchar(11) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FCPERSONFAMILYRELA_FCPERSON` (`person_no`),
  KEY `FK_FCPERSONFAMILYRELA_FCPERSON_F` (`family_no`),
  CONSTRAINT `FK_FCPERSONFAMILYRELA_FCPERSON` FOREIGN KEY (`person_no`) REFERENCES `fc_person` (`per_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCPERSONFAMILYRELA_FCPERSON_F` FOREIGN KEY (`family_no`) REFERENCES `fc_person` (`per_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=170204 DEFAULT CHARSET=utf8mb4 COMMENT='个人家属关联表';


-- flexibleint.fc_staff_rank definition

CREATE TABLE `fc_staff_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_no` varchar(10) DEFAULT NULL,
  `rank_code` varchar(10) NOT NULL,
  `rank_desc` varchar(50) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_FCSTAFFRANK_FCGRP` (`grp_no`),
  CONSTRAINT `FK_FCSTAFFRANK_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb4 COMMENT='员工职级表';


-- flexibleint.fe_edor_pay definition

CREATE TABLE `fe_edor_pay` (
  `pay_no` varchar(30) NOT NULL COMMENT '订单缴费明细号',
  `edor_appno` varchar(20) DEFAULT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) DEFAULT '',
  `pay_type` varchar(20) NOT NULL COMMENT '01-对私支付\n            02-对公支付',
  `pay_way` varchar(2) NOT NULL DEFAULT '' COMMENT '缴费方式:\n            01-趸（dun）缴\n            02-期缴\n            ',
  `pay_state` varchar(2) NOT NULL COMMENT '0 申请成功\n            1 交易在途\n            2 交易成功\n            3 交易失败\n            4 交易撤销',
  `pay_state_desc` varchar(1000) NOT NULL,
  `stage` varchar(2) NOT NULL DEFAULT '-1' COMMENT '-1 不分期',
  `num` decimal(13,2) NOT NULL DEFAULT '0.00' COMMENT '缴费积分数',
  `bank_code` varchar(20) NOT NULL DEFAULT '' COMMENT '01 银行卡支付',
  `money` decimal(13,2) NOT NULL COMMENT '缴费金额',
  `pay_money` decimal(13,2) NOT NULL,
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(30) NOT NULL DEFAULT '',
  `pay_url` varchar(1000) NOT NULL DEFAULT '' COMMENT '支付地址\n            用于网关支付地址',
  `rtn_serialno` varchar(50) NOT NULL DEFAULT '',
  `rtn_serialno1` varchar(50) NOT NULL DEFAULT '',
  `rtn_serialno2` varchar(50) NOT NULL DEFAULT '',
  `refund_pay_no` varchar(30) NOT NULL DEFAULT '' COMMENT '退费缴费明细号\n            网关支付退款存收费时的缴费明细号',
  `notice_flag` char(1) NOT NULL DEFAULT '' COMMENT '对公支付异步回调通知标记\n            0 否\n            1 是',
  `pay_account_no` varchar(40) NOT NULL DEFAULT '' COMMENT '银行卡卡号',
  `pay_account_name` varchar(50) NOT NULL DEFAULT '',
  `pay_bank_line` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(13) NOT NULL DEFAULT '',
  `account_bank` varchar(40) NOT NULL DEFAULT '',
  `account_bank_code` varchar(10) NOT NULL DEFAULT '',
  `bank_provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `bank_city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `bank_district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `rec_account_no` varchar(50) NOT NULL DEFAULT '',
  `rec_account_name` varchar(50) NOT NULL DEFAULT '',
  `rec_bankname` varchar(30) NOT NULL DEFAULT '',
  `rec_bank` varchar(30) NOT NULL DEFAULT '',
  `business_id` varchar(50) NOT NULL DEFAULT '' COMMENT '业务编码，1：IYB 2：DBY 3：EJ',
  `transaction_date` date DEFAULT NULL,
  `transaction_time` char(8) DEFAULT '',
  `back_type` varchar(2) DEFAULT '' COMMENT '退费方式  00-退回原账户  01-转溢缴',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`pay_no`),
  KEY `FK_FEEDORPAY_FEEDORMAIN` (`edor_appno`,`grp_contno`) USING BTREE,
  CONSTRAINT `fe_edor_pay_ibfk_1` FOREIGN KEY (`edor_appno`, `grp_contno`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全缴费明细表';


-- flexibleint.fe_edoritem definition

CREATE TABLE `fe_edoritem` (
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '',
  `edor_type` varchar(2) NOT NULL COMMENT '批改类型\n            NI 保全增人\n            ZT 保全减人',
  `prem` decimal(13,2) NOT NULL DEFAULT '0.00',
  `amnt` decimal(13,2) NOT NULL DEFAULT '0.00',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`edor_appno`,`grp_contno`,`edor_type`),
  CONSTRAINT `fe_edoritem_ibfk_1` FOREIGN KEY (`edor_appno`, `grp_contno`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全项目表';


-- flexibleint.fe_edormain_file_rela definition

CREATE TABLE `fe_edormain_file_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edor_appno` varchar(20) DEFAULT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) DEFAULT '',
  `file_id` int(11) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FEEDORMAINFILERELA_FEEDORMAIN` (`edor_appno`,`grp_contno`) USING BTREE,
  KEY `FK_FEEDORMAINFILERELA_FSFILEMAIN` (`file_id`) USING BTREE,
  CONSTRAINT `fe_edormain_file_rela_ibfk_1` FOREIGN KEY (`edor_appno`, `grp_contno`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fe_edormain_file_rela_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `fs_file_main` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2225 DEFAULT CHARSET=utf8mb4 COMMENT='保全资料表';


-- flexibleint.fe_einsured definition

CREATE TABLE `fe_einsured` (
  `einsured_id` varchar(10) NOT NULL,
  `core_insured_id` varchar(20) NOT NULL DEFAULT '' COMMENT '保全减人存核心被保人id',
  `edor_appno` varchar(20) DEFAULT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '',
  `edor_type` varchar(2) DEFAULT NULL COMMENT '批改类型',
  `is_legal_benefy` varchar(1) NOT NULL DEFAULT '' COMMENT '是否法定受益人\n            0 否\n            1 是\n            如果为法定受益人，则在受益人表中无数据',
  `main_einsured_id` varchar(10) NOT NULL DEFAULT '',
  `main_einsured_no` varchar(40) NOT NULL DEFAULT '' COMMENT '主被保人证件号',
  `relation` char(2) NOT NULL DEFAULT '' COMMENT '01 本人\n            02配偶\n            03子女\n            04父母\n            05其它',
  `einsured_name` varchar(40) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(1) NOT NULL DEFAULT '' COMMENT '0  男\n            1  女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `id_type` char(2) NOT NULL DEFAULT '' COMMENT '证件类型',
  `id_no` varchar(20) NOT NULL DEFAULT '' COMMENT '证件号',
  `occupation_type` varchar(10) NOT NULL DEFAULT '' COMMENT '职业类别',
  `occupation_code` varchar(20) NOT NULL DEFAULT '',
  `married` char(1) NOT NULL DEFAULT '' COMMENT '是否已婚',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `join_compdate` date DEFAULT NULL COMMENT '入职日期',
  `join_medprotect` char(1) NOT NULL DEFAULT '' COMMENT '是否参加医保:\n            0-否\n            1-是',
  `medprotect_type` char(2) NOT NULL DEFAULT '' COMMENT '医保类型',
  `plan_code` varchar(50) NOT NULL DEFAULT '' COMMENT '方案编码',
  `plan_name` varchar(50) NOT NULL DEFAULT '' COMMENT '方案编码',
  `plan_num` int(11) NOT NULL DEFAULT '0' COMMENT '方案份数',
  `prem` decimal(13,2) NOT NULL DEFAULT '0.00',
  `province` varchar(13) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `county` varchar(10) NOT NULL DEFAULT '' COMMENT '区县',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '详细地址',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(10) NOT NULL DEFAULT '',
  `zip_code` varchar(10) NOT NULL DEFAULT '',
  `business` varchar(50) NOT NULL DEFAULT '',
  `is_validdate` char(1) NOT NULL,
  `id_start_date` date DEFAULT NULL,
  `id_end_date` date DEFAULT NULL,
  `id_check_times` varchar(2) DEFAULT '' COMMENT '换证次数',
  `is_on_job` char(1) NOT NULL DEFAULT '' COMMENT '是否在职\n            0 否\n            1 是',
  `edor_effective_date` date NOT NULL,
  `is_error` char(1) NOT NULL COMMENT '录入是否有误\n            0 否\n            1 是',
  `error_desc` varchar(200) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`einsured_id`),
  KEY `FK_FEEINSURED_FEEDORITEM` (`edor_appno`,`grp_contno`,`edor_type`) USING BTREE,
  CONSTRAINT `fe_einsured_ibfk_1` FOREIGN KEY (`edor_appno`, `grp_contno`, `edor_type`) REFERENCES `fe_edoritem` (`edor_appno`, `grp_contno`, `edor_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全被保人临时表';


-- flexibleint.fe_impart_detail definition

CREATE TABLE `fe_impart_detail` (
  `edor_app_no` varchar(10) NOT NULL,
  `grp_cont_no` varchar(20) NOT NULL,
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL COMMENT '答题结果\n            00 否\n            01 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`edor_app_no`,`grp_cont_no`,`impartver_ver`,`impartver_code`),
  CONSTRAINT `fe_impart_detail_ibfk_1` FOREIGN KEY (`edor_app_no`, `grp_cont_no`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健康告知答案明细表';


-- flexibleint.fe_impart_detail_per definition

CREATE TABLE `fe_impart_detail_per` (
  `edor_app_no` varchar(20) NOT NULL DEFAULT '',
  `grp_cont_no` varchar(20) NOT NULL,
  `einsured_id` varchar(10) NOT NULL,
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL COMMENT '答题结果\n            00 否\n            01 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`edor_app_no`,`grp_cont_no`,`einsured_id`,`impartver_ver`,`impartver_code`),
  KEY `fe_impart_detail_per_ibfk_2` (`einsured_id`),
  CONSTRAINT `fe_impart_detail_per_ibfk_1` FOREIGN KEY (`edor_app_no`, `grp_cont_no`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fe_impart_detail_per_ibfk_2` FOREIGN KEY (`einsured_id`) REFERENCES `fe_einsured` (`einsured_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人健康告知答案明细表';


-- flexibleint.fe_impart_result definition

CREATE TABLE `fe_impart_result` (
  `edor_app_no` varchar(20) NOT NULL,
  `grp_cont_no` varchar(20) NOT NULL,
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_result` varchar(2) NOT NULL COMMENT '答题结果\n            0否\n            1 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`edor_app_no`,`grp_cont_no`,`impartver_ver`,`impartver_code`),
  CONSTRAINT `fe_impart_result_ibfk_1` FOREIGN KEY (`edor_app_no`, `grp_cont_no`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全健康告知答案表';


-- flexibleint.fe_impart_result_per definition

CREATE TABLE `fe_impart_result_per` (
  `edor_app_no` varchar(20) NOT NULL DEFAULT '',
  `grp_cont_no` varchar(20) NOT NULL,
  `einsured_id` varchar(10) NOT NULL,
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_result` varchar(2) NOT NULL COMMENT '答题结果\n            00 否\n            01 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`edor_app_no`,`grp_cont_no`,`einsured_id`,`impartver_ver`,`impartver_code`),
  KEY `fe_impart_result_per_ibfk_2` (`einsured_id`),
  CONSTRAINT `fe_impart_result_per_ibfk_1` FOREIGN KEY (`edor_app_no`, `grp_cont_no`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fe_impart_result_per_ibfk_2` FOREIGN KEY (`einsured_id`) REFERENCES `fe_einsured` (`einsured_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全个人健康告知答案表';


-- flexibleint.fe_invoice definition

CREATE TABLE `fe_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edor_appno` varchar(20) NOT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) DEFAULT '',
  `invoice_type` varchar(2) NOT NULL DEFAULT '' COMMENT '发票类型\n            0-纸质，1-电子',
  `invoice_sub_type` varchar(2) NOT NULL DEFAULT '' COMMENT '发票种类\n            0-增值税专用发票，1-增值税普通发票',
  `invoice_head_type` varchar(2) NOT NULL DEFAULT '' COMMENT '发票抬头\n            01 企业\n            02 个人',
  `invoice_detail` varchar(2) NOT NULL DEFAULT '' COMMENT '发票内容\n            01 保险费用\n            02  险种名称',
  `invoice_head_name` varchar(50) NOT NULL DEFAULT '',
  `invoice_taxno` varchar(30) NOT NULL DEFAULT '',
  `provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `address` varchar(200) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `bank_name` varchar(40) NOT NULL DEFAULT '' COMMENT '开户行名称',
  `bank_accno` varchar(40) NOT NULL DEFAULT '' COMMENT '开户行账号',
  `contact_phone` varchar(20) NOT NULL DEFAULT '',
  `contact_email` varchar(40) NOT NULL DEFAULT '',
  `shipping_provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_address` varchar(200) NOT NULL DEFAULT '',
  `shipping_name` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `bill_id` varchar(50) NOT NULL DEFAULT '' COMMENT '发票id',
  `invoice_path` varchar(200) NOT NULL DEFAULT '',
  `data_flag` varchar(2) NOT NULL DEFAULT '1' COMMENT '1 代表旧主体（华夏）、2 代表新主体（瑞众）',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FEINVOICE_FEEDORMAIN` (`edor_appno`,`grp_contno`) USING BTREE,
  CONSTRAINT `fe_invoice_ibfk_1` FOREIGN KEY (`edor_appno`, `grp_contno`) REFERENCES `fe_edormain` (`edor_appno`, `grp_contno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COMMENT='保全发票信息表';


-- flexibleint.fo_grp_invoice definition

CREATE TABLE `fo_grp_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `grp_contno` varchar(20) NOT NULL DEFAULT '',
  `invoice_type` varchar(2) NOT NULL DEFAULT '' COMMENT '发票类型\n            0-纸质，1-电子',
  `invoice_sub_type` varchar(2) NOT NULL DEFAULT '' COMMENT '发票种类\n            0-增值税专用发票，1-增值税普通发票',
  `invoice_head_type` varchar(2) NOT NULL DEFAULT '' COMMENT '发票抬头\n            01 企业\n            02 个人',
  `invoice_detail` varchar(2) NOT NULL DEFAULT '' COMMENT '发票内容\n            01 保险费用\n            02  险种名称',
  `invoice_head_name` varchar(50) NOT NULL DEFAULT '',
  `invoice_taxno` varchar(30) NOT NULL DEFAULT '',
  `provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `address` varchar(200) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `bank_name` varchar(40) NOT NULL DEFAULT '' COMMENT '开户行名称',
  `bank_accno` varchar(40) NOT NULL DEFAULT '' COMMENT '开户行账号',
  `contact_phone` varchar(20) NOT NULL DEFAULT '',
  `contact_email` varchar(40) NOT NULL DEFAULT '',
  `shipping_provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `shipping_address` varchar(200) NOT NULL DEFAULT '',
  `shipping_name` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `bill_id` varchar(20) NOT NULL DEFAULT '' COMMENT '发票id',
  `invoice_path` varchar(200) NOT NULL DEFAULT '',
  `data_flag` varchar(2) NOT NULL DEFAULT '1' COMMENT '1 代表旧主体（华夏）、2 代表新主体（瑞众）',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FOGRPINVOICE_FOGRPORDER` (`grp_order_no`),
  CONSTRAINT `FK_FOGRPINVOICE_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4 COMMENT='发票信息表';


-- flexibleint.fo_grpappnt_contact_rela definition

CREATE TABLE `fo_grpappnt_contact_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_appnt_id` varchar(10) DEFAULT NULL,
  `contact_id` varchar(20) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FOGRPAPPNTCONTACTRELA_FOGRPAPPNT` (`grp_appnt_id`),
  KEY `FK_FOGRPAPPNTCONTACTRELA_FOGRPAPPNTCONTACT` (`contact_id`),
  CONSTRAINT `FK_FOGRPAPPNTCONTACTRELA_FOGRPAPPNT` FOREIGN KEY (`grp_appnt_id`) REFERENCES `fo_grp_appnt` (`grp_appnt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FOGRPAPPNTCONTACTRELA_FOGRPAPPNTCONTACT` FOREIGN KEY (`contact_id`) REFERENCES `fo_grpappnt_contact` (`contact_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27543 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_grporder_pay definition

CREATE TABLE `fo_grporder_pay` (
  `pay_no` varchar(30) NOT NULL COMMENT '订单缴费明细号',
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `pay_type` varchar(20) NOT NULL COMMENT '01-对私支付\n            02-对公支付',
  `pay_way` varchar(2) NOT NULL DEFAULT '' COMMENT '缴费方式:\n            01-趸（dun）缴\n            02-期缴\n            ',
  `pay_state` varchar(2) NOT NULL COMMENT '0 申请成功\n            1 交易在途\n            2 交易成功\n            3 交易失败\n            4 交易撤销',
  `pay_state_desc` varchar(1000) NOT NULL,
  `stage` varchar(2) NOT NULL DEFAULT '-1' COMMENT '-1 不分期',
  `num` decimal(13,2) NOT NULL DEFAULT '0.00' COMMENT '缴费积分数',
  `bank_code` varchar(20) NOT NULL DEFAULT '' COMMENT '01 银行卡支付',
  `money` decimal(13,2) NOT NULL COMMENT '缴费金额',
  `pay_money` decimal(13,2) NOT NULL,
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(30) NOT NULL DEFAULT '',
  `pay_url` varchar(3000) NOT NULL DEFAULT '' COMMENT '支付地址\n            用于网关支付地址',
  `rtn_serialno` varchar(50) NOT NULL DEFAULT '',
  `rtn_serialno1` varchar(50) NOT NULL DEFAULT '' COMMENT '交易单号',
  `rtn_serialno2` varchar(50) NOT NULL DEFAULT '' COMMENT '商户单号',
  `refund_pay_no` varchar(30) NOT NULL DEFAULT '' COMMENT '退费缴费明细号\r\n网关支付退款存收费时的缴费明细号',
  `notice_flag` char(1) NOT NULL DEFAULT '' COMMENT '对公支付异步回调通知标记\r\n0 否\r\n1 是',
  `pay_account_no` varchar(40) NOT NULL DEFAULT '' COMMENT '银行卡卡号',
  `pay_account_name` varchar(50) NOT NULL DEFAULT '',
  `pay_bank_line` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(13) NOT NULL DEFAULT '',
  `account_bank` varchar(40) NOT NULL DEFAULT '',
  `account_bank_code` varchar(10) NOT NULL DEFAULT '',
  `bank_provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `bank_city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `bank_district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `rec_account_no` varchar(50) NOT NULL DEFAULT '',
  `rec_account_name` varchar(50) NOT NULL DEFAULT '',
  `rec_bankname` varchar(30) NOT NULL DEFAULT '',
  `rec_bank` varchar(30) NOT NULL DEFAULT '',
  `transaction_date` date DEFAULT NULL,
  `transaction_time` char(8) DEFAULT '',
  `business_id` varchar(50) DEFAULT '' COMMENT '业务编码，1：IYB 2：DBY 3：EJ',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`pay_no`),
  KEY `FK_FOGRPORDERPAY_FOGRPORDER` (`grp_order_no`),
  KEY `GRPORDERNO` (`grp_order_no`),
  CONSTRAINT `FK_FOGRPORDERPAY_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团体订单缴费明细表';


-- flexibleint.fo_grporder_plan definition

CREATE TABLE `fo_grporder_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `combo_id` varchar(8) DEFAULT '',
  `plan_id` varchar(9) NOT NULL DEFAULT '',
  `copies` int(10) unsigned DEFAULT NULL,
  `is_healthnotify` char(1) NOT NULL COMMENT '是否填写健康告知\n            0 否\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FOGRPORDERPLAN_FOGRPORDER` (`grp_order_no`),
  CONSTRAINT `FK_FOGRPORDERPLAN_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49100 DEFAULT CHARSET=utf8mb4 COMMENT='当前订单的方案信息';


-- flexibleint.fo_grporder_track definition

CREATE TABLE `fo_grporder_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `grporder_state` varchar(2) NOT NULL DEFAULT '',
  `error_msg` varchar(250) NOT NULL DEFAULT '',
  `is_questdoc` varchar(1) NOT NULL DEFAULT '' COMMENT '1--是\n            0--否',
  `remark` varchar(100) NOT NULL DEFAULT '',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FOGRPORDERTRACK_FOGRPORDER` (`grp_order_no`),
  CONSTRAINT `FK_FOGRPORDERTRACK_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=251163 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fo_insured_benefy_rela definition

CREATE TABLE `fo_insured_benefy_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '被保人和受益人关联ID',
  `benefy_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `insured_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `operator` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) COLLATE utf8_bin NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FOINSUREDBENEFYRELA_FOBENEFY` (`benefy_id`),
  CONSTRAINT `FK_FOINSUREDBENEFYRELA_FOBENEFY` FOREIGN KEY (`benefy_id`) REFERENCES `fo_benefy` (`benefy_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='被保人受益人关联表';


-- flexibleint.fo_order definition

CREATE TABLE `fo_order` (
  `order_no` varchar(18) NOT NULL,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `order_status` char(2) NOT NULL DEFAULT '' COMMENT '订单状态:\n            01-未提交\n            02- 待人工核保\n            03-人工核保中\n            04-拒保\n            05-带客户修改（eba发起的修改）\n            06-已提交待整单审核\n            07整单审核中\n            08--已生效\n            09--已作废\n            10--待修改（客户自己发起的修改）\n            11--转默认计划处理中（临时状态）\n            12--待填写个人告知信息\n            \n            日常订单状态:\n            21-待填写参保信息\n            22-待填写个人告知\n            23-待确认参保信息\n            24-待填写支付信息\n            \n            \n            \n            25-已提交待审核\n            26-审核通过待收费\n            27-拒保\n            28-待方案调整\n            29-已撤销\n            30-已生效\n            31-扣款成功待生效',
  `order_type` char(2) NOT NULL COMMENT '订单类型:\n            01年度福利\n            02日常福利\n            03集中采购\n            04小微企业\n            0101年度福利--默认计划的订单',
  `commit_date` date DEFAULT NULL,
  `commit_time` varchar(8) NOT NULL DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `effective_time` varchar(8) NOT NULL DEFAULT '',
  `cost_no` varchar(20) NOT NULL DEFAULT '' COMMENT '消费明细号',
  `grp_no` varchar(20) NOT NULL DEFAULT '' COMMENT '企业客户号',
  `per_no` varchar(20) NOT NULL DEFAULT '' COMMENT '个人客户号',
  `grade` varchar(20) NOT NULL DEFAULT '' COMMENT '员工订单层级:针对于小微企业和集中采购时根据分层来购买产品',
  `step_no` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '步骤数',
  `insured_startdate` date DEFAULT NULL,
  `insured_enddate` date DEFAULT NULL COMMENT '团体投保人编号',
  `batch_deduct_status` char(1) DEFAULT '' COMMENT '批量扣费状态\r\n0 失败\r\n1 成功',
  `batch_deduct_reason` varchar(255) DEFAULT '' COMMENT '批量扣费失败原因',
  `old_order_no` varchar(18) DEFAULT '' COMMENT '原订单号',
  `per_paymoney` decimal(13,2) DEFAULT NULL COMMENT '个人缴费金额',
  `grp_paymoney` decimal(13,2) DEFAULT NULL COMMENT '企业缴费金额',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`order_no`),
  KEY `FK_FOORDER_FOGRPORDER` (`grp_order_no`),
  KEY `foorder_grporderno_index` (`grp_order_no`) USING BTREE,
  KEY `foorder_batchdeductstatus_index` (`batch_deduct_status`) USING BTREE,
  CONSTRAINT `FK_FOORDER_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';


-- flexibleint.fo_order_item definition

CREATE TABLE `fo_order_item` (
  `order_item_no` varchar(19) NOT NULL,
  `order_no` varchar(18) DEFAULT NULL,
  `grp_no` varchar(20) NOT NULL DEFAULT '',
  `per_no` varchar(20) NOT NULL DEFAULT '',
  `cost_no` varchar(20) NOT NULL DEFAULT '' COMMENT '消费明细号',
  `per_paymoney` decimal(13,2) DEFAULT NULL COMMENT '个人缴费金额',
  `grp_paymoney` decimal(13,2) DEFAULT NULL COMMENT '企业缴费金额',
  `is_health_notify` char(1) DEFAULT '' COMMENT '是否需要健康告知',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`order_item_no`),
  KEY `FK_FOORDERITEM_FOORDER` (`order_no`),
  KEY `foorder_orderno_index` (`order_no`) USING BTREE,
  KEY `foorder_perno_index` (`per_no`) USING BTREE,
  CONSTRAINT `FK_FOORDERITEM_FOORDER` FOREIGN KEY (`order_no`) REFERENCES `fo_order` (`order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='子订单表';


-- flexibleint.fo_order_pay definition

CREATE TABLE `fo_order_pay` (
  `pay_no` varchar(30) NOT NULL COMMENT '订单缴费明细号',
  `order_no` varchar(18) NOT NULL,
  `pay_type` varchar(20) NOT NULL COMMENT '01-对私支付\r\n            02-对公支付',
  `pay_way` varchar(2) NOT NULL DEFAULT '' COMMENT '缴费方式:\r\n            01-趸（dun）缴\r\n            02-期缴\r\n            ',
  `pay_state` varchar(2) NOT NULL COMMENT '0 申请成功\r\n            1 交易在途\r\n            2 交易成功\r\n            3 交易失败\r\n            4 交易撤销\r\n            9 交易确认',
  `pay_state_desc` varchar(1000) NOT NULL,
  `stage` varchar(2) NOT NULL DEFAULT '-1' COMMENT '-1 不分期',
  `num` decimal(13,2) NOT NULL DEFAULT '0.00' COMMENT '缴费积分数',
  `bank_code` varchar(20) NOT NULL COMMENT '01 银行卡支付',
  `money` decimal(13,2) NOT NULL COMMENT '缴费金额',
  `pay_money` decimal(13,2) NOT NULL,
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(30) NOT NULL DEFAULT '',
  `pay_url` varchar(1000) NOT NULL DEFAULT '' COMMENT '支付地址\r\n            用于网关支付地址',
  `rtn_serialno` varchar(50) NOT NULL DEFAULT '',
  `rtn_serialno1` varchar(50) NOT NULL DEFAULT '',
  `rtn_serialno2` varchar(50) NOT NULL DEFAULT '',
  `refund_pay_no` varchar(30) NOT NULL DEFAULT '' COMMENT '退费缴费明细号\r\n            网关支付退款存收费时的缴费明细号',
  `notice_flag` char(1) NOT NULL DEFAULT '' COMMENT '对公支付异步回调通知标记\r\n            0 否\r\n            1 是',
  `pay_account_no` varchar(40) NOT NULL DEFAULT '' COMMENT '银行卡卡号',
  `pay_account_name` varchar(50) NOT NULL DEFAULT '',
  `pay_bank_line` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(13) NOT NULL DEFAULT '',
  `account_bank` varchar(40) NOT NULL DEFAULT '',
  `account_bank_code` varchar(10) NOT NULL DEFAULT '',
  `bank_provice` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `bank_city` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `bank_district` varchar(40) NOT NULL DEFAULT '' COMMENT '公司注册省',
  `rec_account_no` varchar(50) NOT NULL DEFAULT '',
  `rec_account_name` varchar(50) NOT NULL DEFAULT '',
  `rec_bankname` varchar(30) NOT NULL DEFAULT '',
  `rec_bank` varchar(30) NOT NULL DEFAULT '',
  `transaction_date` date DEFAULT NULL,
  `transaction_time` char(8) DEFAULT '',
  `business_id` varchar(50) NOT NULL DEFAULT '' COMMENT '业务id',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`pay_no`),
  KEY `FK_FOORDERPAY_FOORDER` (`order_no`),
  CONSTRAINT `FK_FOORDERPAY_FOORDER` FOREIGN KEY (`order_no`) REFERENCES `fo_order` (`order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单缴费明细表';


-- flexibleint.fo_order_record definition

CREATE TABLE `fo_order_record` (
  `order_no` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `cont_no` varchar(30) CHARACTER SET utf8mb4 DEFAULT '',
  `order_type` varchar(2) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '01-标准，02-自选，03-员福，04-易企保，05-深圳医保，06-志愿者',
  `sign_result` varchar(1) CHARACTER SET utf8mb4 NOT NULL COMMENT '0-成功，1-失败',
  `sign_error_message` varchar(200) CHARACTER SET utf8mb4 DEFAULT '',
  `push_state` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '0-待推送，1-推送中，2-推送成功，3-推送失败，4-无需推送',
  `operator` varchar(20) CHARACTER SET utf8mb4 DEFAULT '',
  `operatorcom` varchar(20) CHARACTER SET utf8mb4 DEFAULT '',
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) CHARACTER SET utf8mb4 DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) CHARACTER SET utf8mb4 DEFAULT '',
  PRIMARY KEY (`order_no`),
  CONSTRAINT `FK_FOORDERRECORD_FOORDER` FOREIGN KEY (`order_no`) REFERENCES `fo_order` (`order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- flexibleint.fo_order_track definition

CREATE TABLE `fo_order_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(18) DEFAULT NULL,
  `order_status` varchar(2) NOT NULL,
  `error_msg` varchar(500) DEFAULT NULL,
  `is_questdoc` varchar(1) DEFAULT NULL COMMENT '1--是\r\n            0--否',
  `remark` varchar(200) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `foordertrack_orderno_index` (`order_no`) USING BTREE,
  CONSTRAINT `FK_FOORDERTRACK_FOORDER` FOREIGN KEY (`order_no`) REFERENCES `fo_order` (`order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15963 DEFAULT CHARSET=utf8mb4 COMMENT='订单轨迹表';


-- flexibleint.fo_orderitem_info definition

CREATE TABLE `fo_orderitem_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_no` varchar(19) DEFAULT NULL,
  `duty_code` varchar(10) NOT NULL,
  `amount_insured` decimal(12,2) DEFAULT NULL COMMENT '保额\r\n            公共保额险种 此处存个人限额',
  `prem` decimal(12,2) DEFAULT NULL COMMENT '保费\r\n            公共保额险种 此处存0',
  `pay_type` varchar(2) NOT NULL COMMENT '缴费类型\r\n            01 个人缴费\r\n            02 企业缴费',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `foorderiteminfo_orderitemno_index` (`order_item_no`) USING BTREE,
  KEY `foorderiteminfo_dutycode_index` (`duty_code`) USING BTREE,
  CONSTRAINT `FK_FOORDERITEMCOREPLAN_FOORDERITEM` FOREIGN KEY (`order_item_no`) REFERENCES `fo_order_item` (`order_item_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11360 DEFAULT CHARSET=utf8mb4 COMMENT='子订单详情表';


-- flexibleint.fo_reserve definition

CREATE TABLE `fo_reserve` (
  `id` varchar(10) NOT NULL COMMENT '预约编码',
  `user_id` varchar(11) DEFAULT NULL,
  `grp_name` varchar(40) NOT NULL COMMENT '企业名称',
  `contact_sex` varchar(2) NOT NULL COMMENT '联系人性别\n            \r\n01 先生\r\n02 女士',
  `contact_name` varchar(40) NOT NULL COMMENT '联系人姓名',
  `contact_phone` varchar(20) NOT NULL COMMENT '联系人手机',
  `own_industry` varchar(50) NOT NULL COMMENT '所属行业',
  `peoples_up` varchar(10) NOT NULL DEFAULT '' COMMENT '企业规模',
  `peoples_down` varchar(10) NOT NULL DEFAULT '' COMMENT '此字段暂无用',
  `email` varchar(100) DEFAULT NULL,
  `ensureType` varchar(50) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FORESERVE_FUUSER` (`user_id`),
  CONSTRAINT `FK_FORESERVE_FUUSER` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='预约信息表';


-- flexibleint.fo_reserve_track definition

CREATE TABLE `fo_reserve_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轨迹ID',
  `reserve_id` varchar(10) DEFAULT NULL COMMENT '预约编码',
  `reserve_state` varchar(2) DEFAULT NULL,
  `deal_conclusion` char(2) NOT NULL DEFAULT '' COMMENT '处理结论\n            01 通过\n            02 拒绝',
  `deal_opinion` varchar(2000) NOT NULL DEFAULT '' COMMENT '处理意见',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FORESERVETRACK_FORESERVE` (`reserve_id`),
  CONSTRAINT `FK_FORESERVETRACK_FORESERVE` FOREIGN KEY (`reserve_id`) REFERENCES `fo_reserve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8mb4 COMMENT='预约审核轨迹表';


-- flexibleint.fp_combo_com_rela definition

CREATE TABLE `fp_combo_com_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_id` varchar(8) DEFAULT NULL COMMENT '套餐ID\n            TC000001',
  `manage_com` varchar(20) DEFAULT NULL,
  `is_stop` char(1) NOT NULL DEFAULT '0' COMMENT '0 否\n            1 是',
  `effect_date` datetime DEFAULT NULL COMMENT '授权有效时间',
  `stop_time` datetime DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPCOMBOCOMRELA_FSCOM` (`manage_com`),
  KEY `FK_FPCOMBOCOMRELA_FPCOMBO` (`combo_id`),
  CONSTRAINT `FK_FPCOMBOCOMRELA_FPCOMBO` FOREIGN KEY (`combo_id`) REFERENCES `fp_combo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12440 DEFAULT CHARSET=utf8mb4 COMMENT='套餐和机构关联表\r\n如果为直销套餐默认与所有机构相关联';


-- flexibleint.fp_combo_plan_rela definition

CREATE TABLE `fp_combo_plan_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据库自增ID',
  `combo_id` varchar(8) DEFAULT NULL COMMENT '套餐ID\n            TC000001',
  `plan_id` varchar(9) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPCOMBOPLANRELA_FPCOMBO` (`combo_id`),
  KEY `FK_FPCOMBOPLANRELA_FPPLAN` (`plan_id`),
  CONSTRAINT `FK_FPCOMBOPLANRELA_FPCOMBO` FOREIGN KEY (`combo_id`) REFERENCES `fp_combo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FPCOMBOPLANRELA_FPPLAN` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7404 DEFAULT CHARSET=utf8mb4 COMMENT='套餐与方案存在多对多关联关系';


-- flexibleint.fp_combotrack definition

CREATE TABLE `fp_combotrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_id` varchar(8) NOT NULL COMMENT '套餐ID\n            TC000001',
  `combo_state` varchar(2) NOT NULL COMMENT '套餐状态\r\n01 定制中\r\n02 待审核\r\n03 审核中\r\n04 审核完成\r\n05 审核拒绝',
  `deal_conclusion` char(2) NOT NULL DEFAULT '' COMMENT '处理结论\n            01 通过\n            02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPCOMBOTRACK_FPCOMBO` (`combo_id`),
  CONSTRAINT `FK_FPCOMBOTRACK_FPCOMBO` FOREIGN KEY (`combo_id`) REFERENCES `fp_combo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7400 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fp_core_plan definition

CREATE TABLE `fp_core_plan` (
  `core_plan_id` varchar(10) NOT NULL COMMENT '核心方案ID',
  `core_plan_name` varchar(40) DEFAULT NULL,
  `core_plan_type` varchar(2) NOT NULL COMMENT '核心方案类型\n            01 普通方案\n            02 公共保额方案',
  `plan_id` varchar(9) DEFAULT NULL,
  `career_up` int(10) unsigned DEFAULT NULL COMMENT '职业上限',
  `career_down` int(10) unsigned DEFAULT NULL,
  `age_up` int(10) unsigned DEFAULT NULL,
  `age_down` int(10) unsigned DEFAULT NULL,
  `people_up` int(10) unsigned DEFAULT NULL COMMENT '投保人数上限',
  `people_down` int(10) unsigned DEFAULT NULL,
  `sex` char(1) DEFAULT NULL COMMENT '性别\n            0 男\n            1 女\n            '''' 性别无关',
  `have_medicare` char(1) DEFAULT NULL COMMENT '有无社保\n            0 无\n            1 有\n            '''' 社保无关',
  `in_work` char(1) DEFAULT NULL COMMENT '是否在职\n            0 否\n            1 是\n            '''' 在职无关',
  `prem` decimal(12,2) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`core_plan_id`),
  KEY `FK_FPCOREPLAN_FPPLAN` (`plan_id`),
  CONSTRAINT `FK_FPCOREPLAN_FPPLAN` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='核心方案表';


-- flexibleint.fp_core_riskduty definition

CREATE TABLE `fp_core_riskduty` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '险种责任ID',
  `core_plan_id` varchar(10) DEFAULT NULL COMMENT '方案编码',
  `risk_code` varchar(20) NOT NULL COMMENT '险种编码',
  `duty_code` varchar(10) NOT NULL COMMENT '责任编码',
  `amount_insured` decimal(12,2) DEFAULT NULL COMMENT '保额\n            个人限额\n            公共保额',
  `deduct_amount` decimal(12,2) DEFAULT NULL COMMENT '免赔额',
  `deduct_amount_type` char(2) DEFAULT NULL COMMENT '免赔额类型\n            01 年免赔\n            02 次免赔',
  `loss_ration` decimal(12,2) DEFAULT NULL COMMENT '赔付比例',
  `prem` decimal(12,2) DEFAULT NULL COMMENT '保费',
  `deduct_day` int(11) DEFAULT NULL COMMENT '免赔天数',
  `selimit_amount` decimal(12,2) DEFAULT NULL COMMENT '次限额',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '操作员\n            存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '操作机构\n            存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPCORERISKDUTY_FPCOREPLAN` (`core_plan_id`),
  CONSTRAINT `FK_FPCORERISKDUTY_FPCOREPLAN` FOREIGN KEY (`core_plan_id`) REFERENCES `fp_core_plan` (`core_plan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27755 DEFAULT CHARSET=utf8mb4 COMMENT='核心险种责任表';


-- flexibleint.fp_ensure_acom_rela definition

CREATE TABLE `fp_ensure_acom_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(10) DEFAULT NULL,
  `agent_code` varchar(40) DEFAULT NULL,
  `agency_agent` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSUREACOMRELA_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FPENSUREACOMRELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='福利和代理机构关联表';


-- flexibleint.fp_ensure_agent_rela definition

CREATE TABLE `fp_ensure_agent_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `saleman_code` varchar(10) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSUREAGENTRELA_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FPENSUREAGENTRELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='福利和代理人关联表';


-- flexibleint.fp_ensure_file_rela definition

CREATE TABLE `fp_ensure_file_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(10) NOT NULL,
  `file_id` int(11) NOT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSUREFILERELA_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FPENSUREFILERELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COMMENT='福利和投保资料关联表';


-- flexibleint.fp_ensure_obj definition

CREATE TABLE `fp_ensure_obj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_obj_type` varchar(2) NOT NULL COMMENT '01 员工\r\n            02 家属',
  `relation_to_staff` varchar(2) NOT NULL COMMENT '与员工关系\r\n            01 本人\r\n            02 父母\r\n            03 子女\r\n            04  配偶',
  `ensure_code` varchar(10) NOT NULL,
  `rank_up` varchar(1000) NOT NULL COMMENT '职级上限',
  `rank_down` varchar(10) NOT NULL DEFAULT '' COMMENT '职级下限',
  `default_grade_pay` varchar(2) NOT NULL DEFAULT '' COMMENT '默认档次缴费\r\n01 个人缴费\r\n02 企业缴费',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSUREOBJ_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FPENSUREOBJ_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1455 DEFAULT CHARSET=utf8mb4 COMMENT='投保对象表';


-- flexibleint.fp_ensure_obj_info definition

CREATE TABLE `fp_ensure_obj_info` (
  `insured_obj_id` int(11) NOT NULL,
  `duty_code` varchar(10) NOT NULL,
  `amount_up` decimal(12,2) NOT NULL,
  `amount_down` decimal(12,2) NOT NULL,
  `is_default_level` char(1) NOT NULL COMMENT '是否默认档次\r\n            0 否\r\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`duty_code`,`insured_obj_id`),
  KEY `FK_FPENSUREOBJINFO_FPENSUREOBJ` (`insured_obj_id`),
  CONSTRAINT `FK_FPENSUREOBJINFO_FPENSUREOBJ` FOREIGN KEY (`insured_obj_id`) REFERENCES `fp_ensure_obj` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='投保对象明细表';


-- flexibleint.fp_ensure_plan_rela definition

CREATE TABLE `fp_ensure_plan_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` varchar(20) DEFAULT NULL COMMENT '计划编码',
  `ensure_code` varchar(10) DEFAULT NULL COMMENT '福利编码',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSUREPLANRELA_FPENSURE` (`ensure_code`),
  KEY `FK_FPENSUREPLANRELA_FPPLAN` (`plan_id`),
  CONSTRAINT `FK_FPENSUREPLANRELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FPENSUREPLANRELA_FPPLAN` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1460 DEFAULT CHARSET=utf8mb4 COMMENT='福利与计划关联表';


-- flexibleint.fp_ensure_risk_handfee definition

CREATE TABLE `fp_ensure_risk_handfee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_plan_id` int(11) DEFAULT NULL COMMENT '福利产品关联id',
  `risk_code` varchar(8) DEFAULT NULL COMMENT '险种编码',
  `agent_com` varchar(40) DEFAULT NULL,
  `handfee_rate` decimal(12,2) DEFAULT NULL COMMENT '手续费比率',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSURERISKHANDFEE_FPENSUREPLANRELA` (`ensure_plan_id`),
  CONSTRAINT `FK_FPENSURERISKHANDFEE_FPENSUREPLANRELA` FOREIGN KEY (`ensure_plan_id`) REFERENCES `fp_ensure_plan_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COMMENT='福利中介手续费表';


-- flexibleint.fp_ensure_saleman_rela definition

CREATE TABLE `fp_ensure_saleman_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPENSURESALEMANRELA_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FPENSURESALEMANRELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1477 DEFAULT CHARSET=utf8mb4 COMMENT='福利和业务员表关联表';


-- flexibleint.fp_optional_plan_config definition

CREATE TABLE `fp_optional_plan_config` (
  `plan_id` varchar(20) NOT NULL DEFAULT '' COMMENT '方案编码',
  `recommend_sign` varchar(10) NOT NULL DEFAULT '' COMMENT '是否为推荐的方案',
  `recommend_plan_id` varchar(20) DEFAULT '' COMMENT '是否为推荐的方案信息',
  `grp_nature` varchar(10) NOT NULL DEFAULT '' COMMENT '企业性质',
  `grp_scale` varchar(10) NOT NULL DEFAULT '' COMMENT '企业规模',
  `grp_industry` varchar(10) NOT NULL DEFAULT '' COMMENT '企业所属行业',
  `occupation_type` varchar(10) NOT NULL DEFAULT '' COMMENT '职业类型',
  `per_capita_prem` varchar(10) NOT NULL DEFAULT '' COMMENT '人均保费档次',
  `ensure_type` varchar(10) NOT NULL DEFAULT '' COMMENT '保障类型是一个数据',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`plan_id`),
  KEY `fp_plan_id` (`plan_id`) USING BTREE,
  CONSTRAINT `fp_optional_plan_config_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.fp_planimpact_info definition

CREATE TABLE `fp_planimpact_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` varchar(9) NOT NULL,
  `factor_type` char(2) NOT NULL COMMENT '01 年龄\n            02 职业\n            03 投保人数',
  `factor_value` blob NOT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPPLANIMPACTINFO_FPPLAN` (`plan_id`),
  CONSTRAINT `FK_FPPLANIMPACTINFO_FPPLAN` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39986 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fp_planrule definition

CREATE TABLE `fp_planrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` varchar(9) DEFAULT NULL COMMENT '方案编码',
  `rule_code` varchar(2) NOT NULL COMMENT '规则编码\n            01 最低投保人数要求',
  `rule_info` blob NOT NULL COMMENT '规则明细 \n            规则Json串',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPPLANRULE_FPPLAN` (`plan_id`),
  CONSTRAINT `FK_FPPLANRULE_FPPLAN` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2328 DEFAULT CHARSET=utf8mb4 COMMENT='方案规则表';


-- flexibleint.fp_riskduty definition

CREATE TABLE `fp_riskduty` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '险种责任ID',
  `plan_id` varchar(20) DEFAULT NULL,
  `risk_code` varchar(20) NOT NULL COMMENT '险种编码',
  `custom_risk_name` varchar(50) NOT NULL COMMENT '自定义险种名称',
  `duty_code` varchar(10) NOT NULL COMMENT '责任编码',
  `custom_duty_name` varchar(50) NOT NULL COMMENT '自定义责任名称',
  `amount_insured` decimal(12,2) DEFAULT NULL COMMENT '保额',
  `deduct_amount` decimal(12,2) DEFAULT NULL COMMENT '免赔额',
  `deduct_amount_type` char(2) DEFAULT NULL COMMENT '免赔额类型\n            01 年免赔\n            02 次免赔',
  `loss_ration` decimal(12,2) DEFAULT NULL COMMENT '赔付比例',
  `impact_factor` blob COMMENT '保费影响因子\n            {"riskdutymix":[{"age":["16","25"],"career":["1","4"],"socialCard":"0","amount":"123.5"},{"age":["16","25"],"career":["1","4"],"socialCard":"1","amount":"100.5"},{"age":["16","25"],"career":["4","6"],"socialCard":"0","amount":"200.5"},{"age":["16","25"],"career":["4","6"],"socialCard":"1","amount":"230.5"},{"age":["25","40"],"career":["1","4"],"socialCard":"0","amount":"123.5"},{"age":["25","40"],"career":["1","4"],"socialCard":"1","amount":"100.5"},{"age":["25","40"],"career":["4","6"],"socialCard":"0","amount":"200.5"},{"age":["25","40"],"career":["4","6"],"socialCard":"1","amount":"230.5"}]}',
  `security_detail` varchar(2000) DEFAULT NULL COMMENT '保障明细',
  `public_amount` decimal(12,2) DEFAULT NULL COMMENT '公共保额',
  `is_limit` char(1) DEFAULT NULL COMMENT '是否限制\n            0 否(同公共保额)\n            1是(低于公共保额)',
  `perlimit_amount` decimal(12,2) DEFAULT NULL COMMENT '个人限额\n            绑定is_limit为是',
  `deduct_day` int(11) DEFAULT NULL COMMENT '免赔天数',
  `selimit_amount` decimal(12,2) DEFAULT NULL COMMENT '次限额',
  `real_reate_factor` varchar(2) NOT NULL DEFAULT '' COMMENT '实际费率因子\r\n            存实际保存时勾选的费率因子\r\n            01 年龄\r\n            02  职业         03 投保人数\r\n            04 职业+年龄\r\n            05 年龄+性别\r\n            06 年龄+是否在职\r\n            07 年龄+有无医保\r\n            08 年龄+职业+性别\r\n            09 人数+年龄+有无医保',
  `is_table_rate` varchar(2) NOT NULL DEFAULT '' COMMENT '是否是表定费率险种 0否 1是',
  `zt_service_fee` varchar(5) DEFAULT '' COMMENT '减人手续费率',
  `ct_service_fee` varchar(5) DEFAULT '' COMMENT '整单退保手续费率',
  `security_plan` varchar(2) DEFAULT '' COMMENT '保障计划',
  `loss_ration_medprotect` decimal(12,2) DEFAULT NULL COMMENT '以医保身份投保未以医保身份结算的赔付比例',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '操作员\n            存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '操作机构\n            存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FPRISKDUTY_FPPLAN` (`plan_id`),
  CONSTRAINT `FK_FPRISKDUTY_FPPLAN` FOREIGN KEY (`plan_id`) REFERENCES `fp_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41106 DEFAULT CHARSET=utf8mb4 COMMENT='险种责任表';


-- flexibleint.fs_ensure_impart_config definition

CREATE TABLE `fs_ensure_impart_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(10) DEFAULT NULL COMMENT '福利编码',
  `duty_code` varchar(10) NOT NULL DEFAULT '' COMMENT '责任编码',
  `rank_up` varchar(2) NOT NULL DEFAULT '' COMMENT '职级上限',
  `rank_down` varchar(2) NOT NULL DEFAULT '' COMMENT '职级下限',
  `amount_up` decimal(12,2) DEFAULT NULL COMMENT '保额上限',
  `amount_down` decimal(12,2) DEFAULT NULL COMMENT '保额下限',
  `age_up` int(11) DEFAULT NULL COMMENT '年龄上限',
  `age_down` int(11) DEFAULT NULL COMMENT '年限下限',
  `sex` varchar(1) NOT NULL COMMENT '性别',
  `insured_type` varchar(2) NOT NULL COMMENT '被保人类型\r\n            01 员工\r\n            02 家属',
  `is_health_report` varchar(1) NOT NULL COMMENT '是否需要体检报告\r\n            0 否\r\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FSENSUREIMPARTCONFIG_FPENSURE` (`ensure_code`),
  CONSTRAINT `FK_FSENSUREIMPARTCONFIG_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2077 DEFAULT CHARSET=utf8mb4 COMMENT='福利健康告知配置表';


-- flexibleint.fs_impart_detail definition

CREATE TABLE `fs_impart_detail` (
  `grp_order_no` varchar(10) NOT NULL,
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL COMMENT '答题结果\n            00 否\n            01 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`grp_order_no`,`impartver_ver`,`impartver_code`),
  CONSTRAINT `FK_FSIMPARTDETAIL_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健康告知答案明细表';


-- flexibleint.fs_impart_detail_per definition

CREATE TABLE `fs_impart_detail_per` (
  `order_item_no` varchar(19) NOT NULL DEFAULT '',
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_content` varchar(1000) NOT NULL COMMENT '答题结果\r\n            00 否\r\n            01 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`order_item_no`,`impartver_ver`,`impartver_code`),
  CONSTRAINT `FK_FSIMPARTDETAILPER_FOORDERITEM` FOREIGN KEY (`order_item_no`) REFERENCES `fo_order_item` (`order_item_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人健康告知答案明细表';


-- flexibleint.fs_impart_result definition

CREATE TABLE `fs_impart_result` (
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_result` varchar(2) NOT NULL COMMENT '答题结果\n            0否\n            1 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`grp_order_no`,`impartver_ver`,`impartver_code`),
  CONSTRAINT `FK_FSIMPARTRESULT_FOGRPORDER` FOREIGN KEY (`grp_order_no`) REFERENCES `fo_grporder` (`grp_order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健康告知答案表';


-- flexibleint.fs_impart_result_per definition

CREATE TABLE `fs_impart_result_per` (
  `order_item_no` varchar(19) NOT NULL DEFAULT '',
  `impartver_ver` varchar(10) NOT NULL,
  `impartver_code` varchar(3) NOT NULL,
  `impartver_result` varchar(2) NOT NULL COMMENT '答题结果\r\n            00 否\r\n            01 是',
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL,
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL,
  PRIMARY KEY (`order_item_no`,`impartver_ver`,`impartver_code`),
  CONSTRAINT `FK_FSIMPARTRESULTPER_FOORDERITEM` FOREIGN KEY (`order_item_no`) REFERENCES `fo_order_item` (`order_item_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人健康告知答案表';


-- flexibleint.fs_menugrp_menu_rela definition

CREATE TABLE `fs_menugrp_menu_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menugrp_id` varchar(10) DEFAULT NULL,
  `node_code` varchar(10) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FSMENUGRPMENURELA_FSMENU` (`node_code`),
  KEY `FK_FSMENUGRPMENURELA_FSMENUGRP` (`menugrp_id`),
  CONSTRAINT `FK_FSMENUGRPMENURELA_FSMENU` FOREIGN KEY (`node_code`) REFERENCES `fs_menu` (`node_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FSMENUGRPMENURELA_FSMENUGRP` FOREIGN KEY (`menugrp_id`) REFERENCES `fs_menugrp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2119 DEFAULT CHARSET=utf8mb4 COMMENT=' 存放所有的菜单组和菜单的关联关系';


-- flexibleint.fs_user_menugrp_rela definition

CREATE TABLE `fs_user_menugrp_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menugrp_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户编号',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FSUSERMENUGRPRELA_FSMENUGRP` (`menugrp_id`),
  KEY `FK_FSUSERMENUGRPRELA_FUUSER` (`user_id`),
  CONSTRAINT `FK_FSUSERMENUGRPRELA_FSMENUGRP` FOREIGN KEY (`menugrp_id`) REFERENCES `fs_menugrp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FSUSERMENUGRPRELA_FUUSER` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20273 DEFAULT CHARSET=utf8mb4 COMMENT=' 存放所有的用户和菜单组的关联关系';


-- flexibleint.ft_einsured definition

CREATE TABLE `ft_einsured` (
  `einsured_id` varchar(10) NOT NULL,
  `core_insured_id` varchar(20) DEFAULT '' COMMENT '核心被保人id，可以确定一套数据，该字段用于减人',
  `edor_appno` varchar(20) DEFAULT NULL COMMENT '保全受理号',
  `grp_contno` varchar(30) NOT NULL DEFAULT '',
  `edor_type` varchar(2) DEFAULT NULL COMMENT '批改类型',
  `is_legal_benefy` varchar(1) NOT NULL DEFAULT '' COMMENT '是否法定受益人\n            0 否\n            1 是\n            如果为法定受益人，则在受益人表中无数据',
  `main_einsured_id` varchar(10) NOT NULL DEFAULT '',
  `main_einsured_no` varchar(40) NOT NULL DEFAULT '' COMMENT '主被保人证件号',
  `relation` char(2) NOT NULL DEFAULT '' COMMENT '01 本人\n            02配偶\n            03子女\n            04父母\n            05其它',
  `einsured_name` varchar(40) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(1) NOT NULL DEFAULT '' COMMENT '0  男\n            1  女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `id_type` char(2) NOT NULL DEFAULT '' COMMENT '证件类型',
  `id_no` varchar(20) NOT NULL DEFAULT '' COMMENT '证件号',
  `occupation_type` varchar(10) NOT NULL DEFAULT '' COMMENT '职业类别',
  `occupation_code` varchar(20) NOT NULL DEFAULT '',
  `married` char(1) NOT NULL DEFAULT '' COMMENT '是否已婚',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(20) NOT NULL DEFAULT '' COMMENT '邮箱',
  `join_compdate` date DEFAULT NULL COMMENT '入职日期',
  `join_medprotect` char(1) NOT NULL DEFAULT '' COMMENT '是否参加医保:\n            0-否\n            1-是',
  `medprotect_type` char(2) NOT NULL DEFAULT '' COMMENT '医保类型',
  `plan_name` varchar(50) NOT NULL DEFAULT '' COMMENT '方案编码',
  `plan_num` int(11) NOT NULL DEFAULT '0' COMMENT '方案份数',
  `plan_code` varchar(50) NOT NULL DEFAULT '' COMMENT '方案编码',
  `prem` decimal(13,2) NOT NULL DEFAULT '0.00',
  `province` varchar(13) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `county` varchar(10) NOT NULL DEFAULT '' COMMENT '区县',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '详细地址',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(10) NOT NULL DEFAULT '',
  `zip_code` varchar(10) NOT NULL DEFAULT '',
  `business` varchar(50) NOT NULL DEFAULT '',
  `is_validdate` char(1) DEFAULT '',
  `id_start_date` date DEFAULT NULL COMMENT '证件生效日期',
  `id_end_date` date DEFAULT NULL COMMENT '证件失效日期',
  `id_check_times` varchar(2) DEFAULT '' COMMENT '换证次数',
  `is_on_job` char(1) NOT NULL DEFAULT '' COMMENT '是否在职\n            0 否\n            1 是',
  `edor_effective_date` date DEFAULT NULL,
  `is_error` char(1) NOT NULL COMMENT '录入是否有误\n            0 否\n            1 是',
  `error_desc` varchar(200) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`einsured_id`),
  KEY `FK_FTEINSURED_FEEDORITEM` (`edor_appno`,`grp_contno`,`edor_type`) USING BTREE,
  CONSTRAINT `ft_einsured_ibfk_1` FOREIGN KEY (`edor_appno`, `grp_contno`, `edor_type`) REFERENCES `fe_edoritem` (`edor_appno`, `grp_contno`, `edor_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保全被保人临时表';


-- flexibleint.ft_insured definition

CREATE TABLE `ft_insured` (
  `insured_id` varchar(10) NOT NULL,
  `grp_order_no` varchar(20) DEFAULT NULL COMMENT '团体订单号',
  `order_no` varchar(18) DEFAULT NULL COMMENT '团体订单号',
  `order_item_no` varchar(19) DEFAULT NULL,
  `is_legal_benefy` varchar(1) NOT NULL DEFAULT '' COMMENT '是否法定受益人\n            0 否\n            1 是\n            如果为法定受益人，则在受益人表中无数据',
  `main_insured_id` varchar(10) NOT NULL DEFAULT '',
  `relation` char(2) NOT NULL DEFAULT '' COMMENT '01 本人\n            02配偶\n            03子女\n            04父母\n            05其它',
  `insured_name` varchar(40) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(1) NOT NULL DEFAULT '' COMMENT '0  男\n            1  女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `id_type` char(2) NOT NULL DEFAULT '' COMMENT '证件类型',
  `id_no` varchar(20) NOT NULL DEFAULT '' COMMENT '证件号',
  `occupation_type` varchar(10) NOT NULL DEFAULT '' COMMENT '职业类别',
  `occupation_code` varchar(20) NOT NULL DEFAULT '',
  `married` char(1) NOT NULL DEFAULT '' COMMENT '是否已婚',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(20) NOT NULL DEFAULT '' COMMENT '邮箱',
  `join_compdate` date DEFAULT NULL COMMENT '入职日期',
  `join_medprotect` char(1) NOT NULL DEFAULT '' COMMENT '是否参加医保:\n            0-否\n            1-是',
  `medprotect_type` char(2) NOT NULL DEFAULT '' COMMENT '医保类型',
  `province` varchar(13) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `county` varchar(10) NOT NULL DEFAULT '' COMMENT '区县',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '详细地址',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `order_validdate` date DEFAULT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(10) NOT NULL DEFAULT '',
  `zip_code` varchar(10) NOT NULL DEFAULT '',
  `business` varchar(50) DEFAULT NULL,
  `is_validdate` char(1) NOT NULL DEFAULT '',
  `id_start_date` date DEFAULT NULL COMMENT '证件有效起期',
  `id_end_date` date DEFAULT NULL COMMENT '证件有效止期',
  `id_check_times` varchar(2) DEFAULT '' COMMENT '换证次数',
  `is_on_job` char(1) NOT NULL DEFAULT '' COMMENT '是否在职\n            0 否\n            1 是',
  `amount_insured` decimal(12,2) DEFAULT NULL,
  `prem` decimal(12,2) DEFAULT NULL,
  `is_error` char(1) NOT NULL COMMENT '录入是否有误\n            0 否\n            1 是',
  `error_desc` varchar(200) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`insured_id`),
  UNIQUE KEY `uk_orderitemno` (`order_item_no`) USING BTREE,
  KEY `FK_FTINSURED_FOORDERITEM` (`order_item_no`),
  KEY `ftinsured_grporderno_index` (`grp_order_no`) USING BTREE,
  KEY `ftinsured_orderno_index` (`order_no`) USING BTREE,
  KEY `ftinsured_idno_index` (`id_no`) USING BTREE,
  CONSTRAINT `FK_FTINSURED_FOORDERITEM` FOREIGN KEY (`order_item_no`) REFERENCES `fo_order_item` (`order_item_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='被保人信息表';


-- flexibleint.ft_insured_benefy_rela definition

CREATE TABLE `ft_insured_benefy_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '被保人和受益人关联ID',
  `benefy_id` varchar(10) DEFAULT NULL,
  `insured_id` varchar(10) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FTINSUREDBENEFYRELA_FTBENEFY` (`benefy_id`),
  KEY `FK_FTINSUREDBENEFYRELA_FTINSURED` (`insured_id`),
  CONSTRAINT `FK_FTINSUREDBENEFYRELA_FTBENEFY` FOREIGN KEY (`benefy_id`) REFERENCES `ft_benefy` (`benefy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FTINSUREDBENEFYRELA_FTINSURED` FOREIGN KEY (`insured_id`) REFERENCES `ft_insured` (`insured_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- flexibleint.ft_staff definition

CREATE TABLE `ft_staff` (
  `staff_id` varchar(10) NOT NULL,
  `ensure_code` varchar(13) DEFAULT NULL COMMENT '团体订单号',
  `insured_name` varchar(40) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(1) NOT NULL DEFAULT '' COMMENT '0  男\r\n            1  女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `id_type` char(2) NOT NULL DEFAULT '' COMMENT '证件类型',
  `id_no` varchar(20) NOT NULL DEFAULT '' COMMENT '证件号',
  `rank` varchar(200) NOT NULL,
  `occupation_type` varchar(10) NOT NULL DEFAULT '' COMMENT '职业类别',
  `occupation_code` varchar(20) NOT NULL DEFAULT '' COMMENT '职业代码',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(20) NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_medprotect` char(1) NOT NULL DEFAULT '' COMMENT '是否参加医保:\r\n            0-否\r\n            1-是',
  `is_on_job` char(1) NOT NULL DEFAULT '' COMMENT '是否在职\r\n            0 否\r\n            1 是',
  `is_error` char(1) NOT NULL COMMENT '录入是否有误\r\n            0 否\r\n            1 是',
  `is_validdate` char(1) NOT NULL,
  `id_end_date` date DEFAULT NULL,
  `error_desc` varchar(200) DEFAULT NULL,
  `start_appnt_date` datetime DEFAULT NULL COMMENT '投保开始日期',
  `end_appnt_date` datetime DEFAULT NULL COMMENT '投保结束日期',
  `is_create_user` char(1) NOT NULL DEFAULT '' COMMENT '是否已生成用户\r\n            0 否\r\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`staff_id`),
  KEY `ftstaff_ensurecode_index` (`ensure_code`) USING BTREE,
  KEY `ftstaff_idno_index` (`id_no`) USING BTREE,
  CONSTRAINT `FK_FTSTAFF_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工信息临时表';


-- flexibleint.fu_channel_combo_rela definition

CREATE TABLE `fu_channel_combo_rela` (
  `id` varchar(7) NOT NULL COMMENT '渠道套餐关联ID\n            CHANNELCOMBOID QT00001',
  `channel_id` varchar(10) DEFAULT NULL COMMENT '渠道编码',
  `combo_id` varchar(8) DEFAULT NULL COMMENT '套餐ID\n            TC000001',
  `channel_type` char(2) NOT NULL COMMENT '渠道类型\n            01 直销\n            02 综拓\n            03 专业代理\n            04 兼业代理\n            05 经纪',
  `is_unify_sale` char(1) DEFAULT NULL COMMENT '是否统一落地\n            0 否\n            1 是',
  `is_auth` char(1) DEFAULT '0' COMMENT '授权状态\n            0 未授权\n            1 已授权',
  `auth_startdate` datetime DEFAULT NULL COMMENT '授权起始日期',
  `auth_enddate` datetime DEFAULT NULL COMMENT '授权截止日期',
  `prem_deduct_rate` decimal(12,2) DEFAULT NULL COMMENT '保费折扣比例',
  `ensure_type` varchar(10) DEFAULT NULL COMMENT '保障类型',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBORELA_FPCOMBO` (`combo_id`),
  KEY `FK_FUCHANNELCOMBORELA_FUCHANNEL` (`channel_id`),
  CONSTRAINT `FK_FUCHANNELCOMBORELA_FPCOMBO` FOREIGN KEY (`combo_id`) REFERENCES `fp_combo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FUCHANNELCOMBORELA_FUCHANNEL` FOREIGN KEY (`channel_id`) REFERENCES `fu_channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道和套餐关联表';


-- flexibleint.fu_channel_combo_rela_copy definition

CREATE TABLE `fu_channel_combo_rela_copy` (
  `id` varchar(7) NOT NULL COMMENT '渠道套餐关联ID\n            CHANNELCOMBOID QT00001',
  `channel_id` varchar(10) DEFAULT NULL COMMENT '渠道编码',
  `combo_id` varchar(8) DEFAULT NULL COMMENT '套餐ID\n            TC000001',
  `channel_type` char(2) NOT NULL COMMENT '渠道类型\n            01 直销\n            02 综拓\n            03 专业代理\n            04 兼业代理\n            05 经纪',
  `is_unify_sale` char(1) DEFAULT NULL COMMENT '是否统一落地\n            0 否\n            1 是',
  `is_auth` char(1) DEFAULT '0' COMMENT '授权状态\n            0 未授权\n            1 已授权',
  `auth_startdate` datetime DEFAULT NULL COMMENT '授权起始日期',
  `auth_enddate` datetime DEFAULT NULL COMMENT '授权截止日期',
  `prem_deduct_rate` decimal(12,2) DEFAULT NULL COMMENT '保费折扣比例',
  `ensure_type` varchar(10) DEFAULT NULL COMMENT '保障类型',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBORELA_FPCOMBO` (`combo_id`),
  KEY `FK_FUCHANNELCOMBORELA_FUCHANNEL` (`channel_id`),
  CONSTRAINT `fu_channel_combo_rela_copy_ibfk_1` FOREIGN KEY (`combo_id`) REFERENCES `fp_combo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fu_channel_combo_rela_copy_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `fu_channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道和套餐关联表';


-- flexibleint.fu_channelcombo_com_rela definition

CREATE TABLE `fu_channelcombo_com_rela` (
  `id` varchar(10) NOT NULL COMMENT '渠道和机构关联ID\n            CHANNELCOMID QC00001',
  `channel_combo_id` varchar(10) DEFAULT NULL,
  `manage_com` varchar(20) DEFAULT NULL,
  `rela_type` varchar(2) NOT NULL COMMENT '01 承保\n            02 销售',
  `is_add_attribution` char(1) NOT NULL DEFAULT '' COMMENT '是否增加业绩归属\n            0 否\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMRELA_FSCOM` (`manage_com`),
  KEY `FK_FUCHANNELCOMBOCOMRELA_FUCHANNELCOMBORELA` (`channel_combo_id`),
  CONSTRAINT `FK_FUCHANNELCOMBOCOMRELA_FUCHANNELCOMBORELA` FOREIGN KEY (`channel_combo_id`) REFERENCES `fu_channel_combo_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存渠道和承保机构/销售机构的关联关系';


-- flexibleint.fu_channelcombo_com_rela_copy definition

CREATE TABLE `fu_channelcombo_com_rela_copy` (
  `id` varchar(10) NOT NULL COMMENT '渠道和机构关联ID\n            CHANNELCOMID QC00001',
  `channel_combo_id` varchar(10) DEFAULT NULL,
  `manage_com` varchar(20) DEFAULT NULL,
  `rela_type` varchar(2) NOT NULL COMMENT '01 承保\n            02 销售',
  `is_add_attribution` char(1) NOT NULL DEFAULT '' COMMENT '是否增加业绩归属\n            0 否\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMRELA_FSCOM` (`manage_com`),
  KEY `FK_FUCHANNELCOMBOCOMRELA_FUCHANNELCOMBORELA` (`channel_combo_id`),
  CONSTRAINT `fu_channelcombo_com_rela_copy_ibfk_1` FOREIGN KEY (`manage_com`) REFERENCES `fs_com` (`manage_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fu_channelcombo_com_rela_copy_ibfk_2` FOREIGN KEY (`channel_combo_id`) REFERENCES `fu_channel_combo_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存渠道和承保机构/销售机构的关联关系';


-- flexibleint.fu_channelcombo_risk_handfee definition

CREATE TABLE `fu_channelcombo_risk_handfee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `channel_combo_id` varchar(7) DEFAULT NULL COMMENT '渠道套餐关联ID',
  `risk_code` varchar(8) DEFAULT NULL COMMENT '险种编码',
  `agent_com` varchar(40) DEFAULT NULL,
  `handfee_rate` decimal(12,2) DEFAULT NULL COMMENT '手续费比率',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCOMBORISKHANDFEE_FSACOM` (`agent_com`),
  KEY `FK_FUCOMBORISKHANDFEE_FSRISK` (`risk_code`),
  KEY `FK_FUCOMBORISKHANDFEE_FUCHANNELCOMBORELA` (`channel_combo_id`),
  CONSTRAINT `FK_FUCOMBORISKHANDFEE_FSRISK` FOREIGN KEY (`risk_code`) REFERENCES `fs_risk` (`risk_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FUCOMBORISKHANDFEE_FUCHANNELCOMBORELA` FOREIGN KEY (`channel_combo_id`) REFERENCES `fu_channel_combo_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3337 DEFAULT CHARSET=utf8mb4 COMMENT='渠道套餐险种手续费表';


-- flexibleint.fu_channelcombo_risk_handfee_copy definition

CREATE TABLE `fu_channelcombo_risk_handfee_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `channel_combo_id` varchar(7) DEFAULT NULL COMMENT '渠道套餐关联ID',
  `risk_code` varchar(8) DEFAULT NULL COMMENT '险种编码',
  `agent_com` varchar(40) DEFAULT NULL,
  `handfee_rate` decimal(12,2) DEFAULT NULL COMMENT '手续费比率',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCOMBORISKHANDFEE_FSACOM` (`agent_com`),
  KEY `FK_FUCOMBORISKHANDFEE_FSRISK` (`risk_code`),
  KEY `FK_FUCOMBORISKHANDFEE_FUCHANNELCOMBORELA` (`channel_combo_id`),
  CONSTRAINT `fu_channelcombo_risk_handfee_copy_ibfk_1` FOREIGN KEY (`agent_com`) REFERENCES `fs_acom` (`agent_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fu_channelcombo_risk_handfee_copy_ibfk_2` FOREIGN KEY (`risk_code`) REFERENCES `fs_risk` (`risk_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fu_channelcombo_risk_handfee_copy_ibfk_3` FOREIGN KEY (`channel_combo_id`) REFERENCES `fu_channel_combo_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8mb4 COMMENT='渠道套餐险种手续费表';


-- flexibleint.fu_channelcombo_track definition

CREATE TABLE `fu_channelcombo_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_combo_id` varchar(10) NOT NULL COMMENT '渠道套餐关联ID',
  `state` varchar(2) NOT NULL COMMENT '渠道套餐审核状态\n            01 待审核\n            02 审核中\n            03 审核完成\n            04 审核拒绝',
  `deal_conclusion` char(2) NOT NULL COMMENT '处理结论\n            01 通过\n            02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOTRACK_FUCHANNELCOMBORELA` (`channel_combo_id`),
  CONSTRAINT `FK_FUCHANNELCOMBOTRACK_FUCHANNELCOMBORELA` FOREIGN KEY (`channel_combo_id`) REFERENCES `fu_channel_combo_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5360 DEFAULT CHARSET=utf8mb4 COMMENT='渠道套餐审核轨迹表';


-- flexibleint.fu_channelcombo_track_copy definition

CREATE TABLE `fu_channelcombo_track_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_combo_id` varchar(10) NOT NULL COMMENT '渠道套餐关联ID',
  `state` varchar(2) NOT NULL COMMENT '渠道套餐审核状态\n            01 待审核\n            02 审核中\n            03 审核完成\n            04 审核拒绝',
  `deal_conclusion` char(2) NOT NULL COMMENT '处理结论\n            01 通过\n            02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOTRACK_FUCHANNELCOMBORELA` (`channel_combo_id`),
  CONSTRAINT `fu_channelcombo_track_copy_ibfk_1` FOREIGN KEY (`channel_combo_id`) REFERENCES `fu_channel_combo_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1078 DEFAULT CHARSET=utf8mb4 COMMENT='渠道套餐审核轨迹表';


-- flexibleint.fu_channelcombocom_acom_rela definition

CREATE TABLE `fu_channelcombocom_acom_rela` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '渠道和代理机构的关联关系',
  `channelcombo_com_id` varchar(10) DEFAULT NULL,
  `agent_code` varchar(40) DEFAULT NULL,
  `agency_agent` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `market_agent_code` varchar(30) NOT NULL DEFAULT '' COMMENT '代理机构销售人员编码',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMACOMRELA_FSACOM` (`agent_code`),
  KEY `FK_FUCHANNELCOMBOCOMACOMRELA_FUAGENT` (`agency_agent`),
  KEY `FK_FUCHANNELCOMBOCOMACOMRELA_FUCHANNELCOMBOCOMRELA` (`channelcombo_com_id`),
  CONSTRAINT `FK_FUCHANNELCOMBOCOMACOMRELA_FUCHANNELCOMBOCOMRELA` FOREIGN KEY (`channelcombo_com_id`) REFERENCES `fu_channelcombo_com_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COMMENT='渠道套餐机构（承保机构）和中介机构关联表\n只能录入一个中介机构';


-- flexibleint.fu_channelcombocom_acom_rela_copy definition

CREATE TABLE `fu_channelcombocom_acom_rela_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '渠道和代理机构的关联关系',
  `channelcombo_com_id` varchar(10) DEFAULT NULL,
  `agent_code` varchar(40) DEFAULT NULL,
  `agency_agent` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMACOMRELA_FSACOM` (`agent_code`),
  KEY `FK_FUCHANNELCOMBOCOMACOMRELA_FUAGENT` (`agency_agent`),
  KEY `FK_FUCHANNELCOMBOCOMACOMRELA_FUCHANNELCOMBOCOMRELA` (`channelcombo_com_id`),
  CONSTRAINT `fu_channelcombocom_acom_rela_copy_ibfk_1` FOREIGN KEY (`agent_code`) REFERENCES `fs_acom` (`agent_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fu_channelcombocom_acom_rela_copy_ibfk_3` FOREIGN KEY (`channelcombo_com_id`) REFERENCES `fu_channelcombo_com_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COMMENT='渠道套餐机构（承保机构）和中介机构关联表\n只能录入一个中介机构';


-- flexibleint.fu_channelcombocom_agent_rela definition

CREATE TABLE `fu_channelcombocom_agent_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelcombo_com_id` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `saleman_code` varchar(10) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMAGENTRELA_FUAGENT` (`agent_code`),
  KEY `FK_FUCHANNELCOMBOCOMAGENTRELA_FUCHANNELCOMBOCOMRELA` (`channelcombo_com_id`),
  CONSTRAINT `FK_FUCHANNELCOMBOCOMAGENTRELA_FUCHANNELCOMBOCOMRELA` FOREIGN KEY (`channelcombo_com_id`) REFERENCES `fu_channelcombo_com_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COMMENT='综拓代理人';


-- flexibleint.fu_channelcombocom_agent_rela_copy definition

CREATE TABLE `fu_channelcombocom_agent_rela_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelcombo_com_id` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `saleman_code` varchar(10) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMAGENTRELA_FUAGENT` (`agent_code`),
  KEY `FK_FUCHANNELCOMBOCOMAGENTRELA_FUCHANNELCOMBOCOMRELA` (`channelcombo_com_id`),
  CONSTRAINT `fu_channelcombocom_agent_rela_copy_ibfk_2` FOREIGN KEY (`channelcombo_com_id`) REFERENCES `fu_channelcombo_com_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='综拓代理人';


-- flexibleint.fu_channelcombocom_saleman_rela definition

CREATE TABLE `fu_channelcombocom_saleman_rela` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `channelcombo_com_id` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `is_uwsaleman` char(1) NOT NULL DEFAULT '' COMMENT '是否承保业务员\n            0 否\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMSALEMANRELA_FUCHANNELCOMBOCOMRELA` (`channelcombo_com_id`),
  KEY `FK_FUCHANNELCOMBOCOMSALEMANRELA_FUAGENT` (`agent_code`),
  CONSTRAINT `FK_FUCHANNELCOMBOCOMSALEMANRELA_FUCHANNELCOMBOCOMRELA` FOREIGN KEY (`channelcombo_com_id`) REFERENCES `fu_channelcombo_com_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1512 DEFAULT CHARSET=utf8mb4 COMMENT='渠道和（渠道和机构关联表中的关联关系为01承保）关联';


-- flexibleint.fu_channelcombocom_saleman_rela_copy definition

CREATE TABLE `fu_channelcombocom_saleman_rela_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `channelcombo_com_id` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `is_uwsaleman` char(1) NOT NULL DEFAULT '' COMMENT '是否承保业务员\n            0 否\n            1 是',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUCHANNELCOMBOCOMSALEMANRELA_FUCHANNELCOMBOCOMRELA` (`channelcombo_com_id`),
  KEY `FK_FUCHANNELCOMBOCOMSALEMANRELA_FUAGENT` (`agent_code`),
  CONSTRAINT `fu_channelcombocom_saleman_rela_copy_ibfk_2` FOREIGN KEY (`channelcombo_com_id`) REFERENCES `fu_channelcombo_com_rela` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4 COMMENT='渠道和（渠道和机构关联表中的关联关系为01承保）关联';


-- flexibleint.fu_pwdhistory definition

CREATE TABLE `fu_pwdhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登录密码流水号',
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户编号',
  `pass_word` varchar(200) NOT NULL COMMENT '用户密码',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUPWDHISTORY_FUUSER` (`user_id`),
  CONSTRAINT `FK_FUPWDHISTORY_FUUSER` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16043 DEFAULT CHARSET=utf8mb4 COMMENT='登录密码历史表';


-- flexibleint.fu_user_grp_rela definition

CREATE TABLE `fu_user_grp_rela` (
  `user_grp_id` varchar(10) NOT NULL,
  `grp_no` varchar(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户编号',
  `state` varchar(2) NOT NULL DEFAULT '' COMMENT '企业审核状态\r\n01 定制中\r\n02 待审核\r\n03 审核中\r\n04 审核完成\r\n05 审核拒绝',
  `business_license` varchar(10) DEFAULT '' COMMENT '营业执照',
  `auth_certificate` varchar(11) NOT NULL DEFAULT '' COMMENT '个人授权书',
  `operator` varchar(11) NOT NULL,
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`user_grp_id`),
  KEY `FK_FUUSERGRPRELA_FCGRP` (`grp_no`),
  KEY `FK_FUUSERGRPRELA_FUUSER` (`user_id`),
  CONSTRAINT `FK_FUUSERGRPRELA_FCGRP` FOREIGN KEY (`grp_no`) REFERENCES `fc_grp` (`grp_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FUUSERGRPRELA_FUUSER` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和企业客户关联表';


-- flexibleint.fu_user_grp_track definition

CREATE TABLE `fu_user_grp_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grp_id` varchar(10) DEFAULT NULL,
  `grp_no` varchar(10) NOT NULL,
  `state` varchar(2) NOT NULL COMMENT '企业审核状态\n            01 定制中\n            02 待审核\n            03 审核中\n            04 审核完成\n            05 审核拒绝',
  `deal_conclusion` char(2) NOT NULL DEFAULT '' COMMENT '处理结论\n            01 通过\n            02 拒绝',
  `deal_opinion` varchar(200) NOT NULL DEFAULT '' COMMENT '处理意见',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUUSERGRPTRACK_FUUSERGRPRELA` (`user_grp_id`),
  CONSTRAINT `FK_FUUSERGRPTRACK_FUUSERGRPRELA` FOREIGN KEY (`user_grp_id`) REFERENCES `fu_user_grp_rela` (`user_grp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13888 DEFAULT CHARSET=utf8mb4 COMMENT='企业审核轨迹表';


-- flexibleint.fu_user_role_rela definition

CREATE TABLE `fu_user_role_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色主键ID',
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户编号',
  `role_id` varchar(2) DEFAULT NULL COMMENT '1、HR\n            2、分公司管理员\n            3、总公司管理员',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_FUUSERROLERELA_FUROLE` (`role_id`),
  KEY `FK_FUUSERROLERELA_FUUSER` (`user_id`),
  CONSTRAINT `FK_FUUSERROLERELA_FUROLE` FOREIGN KEY (`role_id`) REFERENCES `fu_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FUUSERROLERELA_FUUSER` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19341 DEFAULT CHARSET=utf8mb4;


-- flexibleint.fu_user_station_rela definition

CREATE TABLE `fu_user_station_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色主键ID',
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户编号',
  `station_id` varchar(2) DEFAULT NULL COMMENT '1、内勤\n            2、外勤\n          ',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_FUUSERROLERELA_FUROLE` (`station_id`) USING BTREE,
  KEY `FK_FUUSERROLERELA_FUUSER` (`user_id`) USING BTREE,
  CONSTRAINT `fu_user_station_rela_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- flexibleint.fu_validatecode definition

CREATE TABLE `fu_validatecode` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动态密码流水号',
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户编号',
  `validate_code` varchar(10) NOT NULL COMMENT '动态密码',
  `codetype` varchar(2) NOT NULL COMMENT '01-手机\n            02-邮箱',
  `is_valid` char(1) NOT NULL COMMENT '是否有效:\n            0-否\n            1-是',
  `startdate` date NOT NULL,
  `maketime` varchar(8) NOT NULL COMMENT '起始时间',
  `enddate` date NOT NULL,
  `endtime` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FUVALIDATECODE_FUUSER` (`user_id`),
  CONSTRAINT `FK_FUVALIDATECODE_FUUSER` FOREIGN KEY (`user_id`) REFERENCES `fu_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1121 DEFAULT CHARSET=utf8mb4 COMMENT=' 动态密码表\n存放用户登录时获取的动态密码';


-- flexibleint.fc_person_ensure_rela definition

CREATE TABLE `fc_person_ensure_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ensure_code` varchar(10) DEFAULT NULL COMMENT '福利编码',
  `per_no` varchar(10) NOT NULL,
  `staff_id` varchar(10) DEFAULT NULL,
  `start_appnt_date` datetime DEFAULT NULL COMMENT '投保开始日期',
  `end_appnt_date` datetime DEFAULT NULL COMMENT '投保结束日期',
  `operator` varchar(11) DEFAULT NULL,
  `operatorcom` varchar(20) DEFAULT NULL,
  `makedate` date DEFAULT NULL,
  `maketime` varchar(8) DEFAULT '',
  `modifydate` date DEFAULT NULL,
  `modifytime` varchar(8) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_FCPERSONENSURERELA_FCPERSON` (`per_no`),
  KEY `FK_FCPERSONENSURERELA_FPENSURE` (`ensure_code`),
  KEY `FK_FCPERSONENSURERELA_FTSTAFF` (`staff_id`),
  CONSTRAINT `FK_FCPERSONENSURERELA_FCPERSON` FOREIGN KEY (`per_no`) REFERENCES `fc_person` (`per_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCPERSONENSURERELA_FPENSURE` FOREIGN KEY (`ensure_code`) REFERENCES `fp_ensure` (`ensure_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FCPERSONENSURERELA_FTSTAFF` FOREIGN KEY (`staff_id`) REFERENCES `ft_staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12501 DEFAULT CHARSET=utf8mb4 COMMENT='个人客户和福利关联表';


-- flexibleint.fo_bank_info definition

CREATE TABLE `fo_bank_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(18) DEFAULT NULL,
  `pay_bank_code` varchar(50) NOT NULL DEFAULT '',
  `pay_bank_name` varchar(100) NOT NULL DEFAULT '',
  `pay_bank_line` varchar(50) NOT NULL DEFAULT '',
  `pay_account_name` varchar(100) NOT NULL DEFAULT '',
  `pay_account_no` varchar(50) NOT NULL DEFAULT '',
  `pay_account_img` varchar(150) NOT NULL DEFAULT '',
  `pay_province` varchar(50) NOT NULL DEFAULT '',
  `pay_city` varchar(50) NOT NULL DEFAULT '',
  `pay_street` varchar(100) NOT NULL DEFAULT '',
  `id_type` varchar(2) NOT NULL DEFAULT '',
  `id_no` varchar(50) NOT NULL DEFAULT '',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '',
  `operator` varchar(11) NOT NULL DEFAULT '',
  `operatorcom` varchar(20) NOT NULL,
  `makedate` date NOT NULL,
  `maketime` varchar(8) NOT NULL DEFAULT '',
  `modifydate` date NOT NULL,
  `modifytime` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_FOBANKINFO_FOORDER` (`order_no`),
  CONSTRAINT `FK_FOBANKINFO_FOORDER` FOREIGN KEY (`order_no`) REFERENCES `fo_order` (`order_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1636 DEFAULT CHARSET=utf8mb4 COMMENT='银行账户信息';


-- flexibleint.fo_insured definition

CREATE TABLE `fo_insured` (
  `insured_id` varchar(10) NOT NULL,
  `grp_order_no` varchar(20) NOT NULL COMMENT '团体订单号',
  `order_no` varchar(18) DEFAULT NULL COMMENT '团体订单号',
  `order_item_no` varchar(19) DEFAULT NULL,
  `is_legal_benefy` varchar(1) NOT NULL DEFAULT '' COMMENT '是否法定受益人\n            0 否\n            1 是\n            如果为法定受益人，则在受益人表中无数据',
  `main_insured_id` varchar(10) NOT NULL DEFAULT '',
  `relation` char(2) NOT NULL DEFAULT '' COMMENT '01 本人\n            02配偶\n            03子女\n            04父母\n            05其它',
  `insured_name` varchar(40) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(1) NOT NULL DEFAULT '' COMMENT '0  男\n            1  女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `id_type` char(2) NOT NULL DEFAULT '' COMMENT '证件类型',
  `id_no` varchar(20) NOT NULL DEFAULT '' COMMENT '证件号',
  `occupation_type` varchar(10) NOT NULL DEFAULT '' COMMENT '职业类别',
  `occupation_code` varchar(20) NOT NULL DEFAULT '',
  `married` char(1) NOT NULL DEFAULT '' COMMENT '是否已婚',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `join_compdate` date DEFAULT NULL COMMENT '入职日期',
  `join_medprotect` char(1) NOT NULL DEFAULT '' COMMENT '是否参加医保:\n            0-否\n            1-是',
  `medprotect_type` char(2) NOT NULL DEFAULT '' COMMENT '医保类型',
  `province` varchar(13) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `county` varchar(10) NOT NULL DEFAULT '' COMMENT '区县',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '详细地址',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `order_validdate` date DEFAULT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(10) NOT NULL DEFAULT '',
  `zip_code` varchar(10) NOT NULL DEFAULT '',
  `business` varchar(50) NOT NULL DEFAULT '',
  `is_validdate` char(1) NOT NULL DEFAULT '',
  `id_start_date` date DEFAULT NULL,
  `id_end_date` date DEFAULT NULL,
  `id_check_times` varchar(2) DEFAULT '' COMMENT '换证次数',
  `is_on_job` char(1) NOT NULL DEFAULT '' COMMENT '是否在职\n            0 否\n            1 是',
  `amount_insured` decimal(12,2) DEFAULT NULL,
  `prem` decimal(12,2) DEFAULT NULL,
  `is_error` char(1) NOT NULL COMMENT '录入是否有误\n            0 否\n            1 是',
  `error_desc` varchar(200) DEFAULT NULL,
  `is_sync_data` char(1) DEFAULT '0' COMMENT '是否已同步到核心',
  `operator` varchar(10) NOT NULL DEFAULT '' COMMENT '存当前登录用户ID',
  `operatorcom` varchar(20) NOT NULL DEFAULT '' COMMENT '存当前操作用户的管理机构',
  `makedate` date NOT NULL COMMENT '创建日期',
  `maketime` char(8) NOT NULL COMMENT '创建时间',
  `modifydate` date NOT NULL COMMENT '修改日期',
  `modifytime` char(8) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`insured_id`),
  UNIQUE KEY `uk_orderitemno` (`order_item_no`) USING BTREE,
  KEY `FK_FOINSURED_FOORDERITEM` (`order_item_no`),
  KEY `foinsured_grporderno_index` (`grp_order_no`) USING BTREE,
  KEY `fo_insured_idno` (`id_no`) USING BTREE,
  KEY `foinsured_orderno_index` (`order_no`) USING BTREE,
  KEY `foinsured_idno_index` (`id_no`) USING BTREE,
  KEY `foinsured_issyncdata_index` (`is_sync_data`) USING BTREE,
  CONSTRAINT `FK_FOINSURED_FOORDERITEM` FOREIGN KEY (`order_item_no`) REFERENCES `fo_order_item` (`order_item_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='被保人信息表';