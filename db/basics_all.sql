CREATE DATABASE IF NOT EXISTS `basics`  DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

USE `basics`;

/*Table structure for table `sys_area` */

DROP TABLE IF EXISTS sys_area;

CREATE TABLE IF NOT EXISTS 'sys_area'
(
  id varchar(64) NOT NULL COMMENT '编号',
  parent_id varchar(64) NOT NULL COMMENT '父级编号',
  parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
  name varchar(100) NOT NULL COMMENT '名称',
  sort decimal(10,0) NOT NULL COMMENT '排序',
  code varchar(100) COMMENT '区域编码',
  type char(1) COMMENT '区域类型(1：国家；2：省份、直辖市；3：地市；4：区县)',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '区域表';

/*Data for the table `sys_area` */

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS 'sys_dict';

CREATE TABLE IF NOT EXISTS 'sys_dict'
(
  id varchar(64) NOT NULL COMMENT '编号',
  value varchar(100) NOT NULL COMMENT '数据值',
  label varchar(100) NOT NULL COMMENT '标签名',
  type varchar(100) NOT NULL COMMENT '类型',
  description varchar(100) NOT NULL COMMENT '描述',
  sort decimal(10,0) NOT NULL COMMENT '排序（升序）',
  parent_id varchar(64) DEFAULT '0' COMMENT '父级编号',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '字典表';

/*Data for the table `sys_dict` */

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS 'sys_log';

CREATE TABLE IF NOT EXISTS 'sys_log'
(
	id varchar(64) NOT NULL COMMENT '编号',
	type char(1) DEFAULT '1' COMMENT '日志类型(1：接入日志；2：异常日志)',
	title varchar(255) DEFAULT '' COMMENT '日志标题',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	remote_addr varchar(255) COMMENT '操作IP地址',
	user_agent varchar(255) COMMENT '用户代理',
	request_uri varchar(255) COMMENT '请求URI',
	method varchar(5) COMMENT '操作方式',
	params text COMMENT '操作提交的数据',
	exception text COMMENT '异常信息',
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '日志表';

/*Data for the table `sys_log` */

/*Table structure for table `sys_mdict` */

DROP TABLE IF EXISTS 'sys_mdict';

CREATE TABLE IF NOT EXISTS 'sys_mdict'
(
  id varchar(64) NOT NULL COMMENT '编号',
  parent_id varchar(64) NOT NULL COMMENT '父级编号',
  parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
  name varchar(100) NOT NULL COMMENT '名称',
  sort decimal(10,0) NOT NULL COMMENT '排序',
  description varchar(100) COMMENT '描述',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '多级字典表';

/*Data for the table `sys_mdict` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS 'sys_menu';

CREATE TABLE IF NOT EXISTS 'sys_menu'
(
  id varchar(64) NOT NULL COMMENT '编号',
  parent_id varchar(64) NOT NULL COMMENT '父级编号',
  parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
  name varchar(100) NOT NULL COMMENT '名称',
  sort decimal(10,0) NOT NULL COMMENT '排序',
  href varchar(2000) COMMENT '链接',
  target varchar(20) COMMENT '目标',
  icon varchar(100) COMMENT '图标',
  is_show char(1) NOT NULL COMMENT '是否在菜单中显示',
  permission varchar(200) COMMENT '权限标识',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '菜单表';

/*Data for the table `sys_menu` */

/*Table structure for table `sys_office` */

DROP TABLE IF EXISTS 'sys_office';

CREATE TABLE IF NOT EXISTS 'sys_office'
(
  id varchar(64) NOT NULL COMMENT '编号',
  parent_id varchar(64) NOT NULL COMMENT '父级编号',
  parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
  name varchar(100) NOT NULL COMMENT '名称',
  sort decimal(10,0) NOT NULL COMMENT '排序',
  area_id varchar(64) NOT NULL COMMENT '归属区域',
  code varchar(100) COMMENT '区域编码',
  type char(1) NOT NULL COMMENT '机构类型(1：公司；2：部门；3：小组)',
  grade char(1) NOT NULL COMMENT '机构等级(1：一级；2：二级；3：三级；4：四级)',
  address varchar(255) COMMENT '联系地址',
  zip_code varchar(100) COMMENT '邮政编码',
  master varchar(100) COMMENT '负责人',
  phone varchar(200) COMMENT '电话',
  fax varchar(200) COMMENT '传真',
  email varchar(200) COMMENT '邮箱',
  USEABLE varchar(64) COMMENT '是否启用',
  PRIMARY_PERSON varchar(64) COMMENT '主负责人',
  DEPUTY_PERSON varchar(64) COMMENT '副负责人',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '机构表';

/*Data for the table `sys_office` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS 'sys_role';

CREATE TABLE IF NOT EXISTS 'sys_role'
(
  id varchar(64) NOT NULL COMMENT '编号',
  office_id varchar(64) COMMENT '归属机构',
  name varchar(100) NOT NULL COMMENT '角色名称',
  enname varchar(255) COMMENT '英文名称',
  role_type varchar(255) COMMENT '角色类型',
  data_scope char(1) COMMENT '数据范围(0：所有数据；1：所在公司及以下数据；2：所在公司数据；3：所在部门及以下数据；4：所在部门数据；8：仅本人数据；9：按明细设置)',
  is_sys varchar(64) COMMENT '是否系统数据',
  useable varchar(64) COMMENT '是否可用',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '角色表';

/*Data for the table `sys_role` */

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS 'sys_role_menu';

CREATE TABLE IF NOT EXISTS 'sys_role_menu'
(
  role_id varchar(64) NOT NULL COMMENT '角色编号',
  menu_id varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (role_id, menu_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '角色-菜单';

/*Data for the table `sys_role_menu` */

/*Table structure for table `sys_role_office` */

DROP TABLE IF EXISTS 'sys_role_office';

CREATE TABLE IF NOT EXISTS 'sys_role_office'
(
  role_id varchar(64) NOT NULL COMMENT '角色编号',
  office_id varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (role_id, office_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '角色-机构';

/*Data for the table `sys_role_office` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS 'sys_user';

CREATE TABLE IF NOT EXISTS 'sys_user'
(
  id varchar(64) NOT NULL COMMENT '编号',
  company_id varchar(64) NOT NULL COMMENT '归属公司',
  office_id varchar(64) NOT NULL COMMENT '归属部门',
  login_name varchar(100) NOT NULL COMMENT '登录名',
  password varchar(100) NOT NULL COMMENT '密码',
  no varchar(100) COMMENT '工号',
  name varchar(100) NOT NULL COMMENT '姓名',
  email varchar(200) COMMENT '邮箱',
  phone varchar(200) COMMENT '电话',
  mobile varchar(200) COMMENT '手机',
  user_type char(1) COMMENT '用户类型',
  photo varchar(1000) COMMENT '用户头像',
  login_ip varchar(100) COMMENT '最后登陆IP',
  login_date datetime COMMENT '最后登陆时间',
  login_flag varchar(64) COMMENT '是否可登录',
  create_by varchar(64) NOT NULL COMMENT '创建者',
  create_date datetime NOT NULL COMMENT '创建时间',
  update_by varchar(64) NOT NULL COMMENT '更新者',
  update_date datetime NOT NULL COMMENT '更新时间',
  remarks varchar(255) COMMENT '备注信息',
  del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记(0：正常；1：删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '用户表';

/*Data for the table `sys_user` */

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS 'sys_user_role';

CREATE TABLE IF NOT EXISTS 'sys_user_role'
(
  user_id varchar(64) NOT NULL COMMENT '用户编号',
  role_id varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (user_id, role_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '用户-角色';

/*Data for the table `sys_user_role` */