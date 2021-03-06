
CREATE TABLE `dw.dim_store_daily_snapshot`(
  `store_key` string COMMENT '门店编码',
  `store_name` string COMMENT '门店名称',
  `store_properties` string COMMENT '门店性质：1 直营,2 非分支,3 加盟,4 联营 998/997，云商',
  `store_type` string COMMENT '门店类型：商场厅房／商场沿街／商超专柜／商超中岛／普通门店／站亭店／量贩店',
  `province` string COMMENT '省份',
  `city` string COMMENT '城市',
  `area` string COMMENT '区域',
  `trade_area_name` string COMMENT '商圈名称',
  `trade_area_quality` string COMMENT '商圈性质',
  `sale_area` string COMMENT '销售面积',
  `business_area` string COMMENT '营业面积',
  `area_owner` string COMMENT '区域负责人',
  `region_owner` string COMMENT '大区负责人',
  `company_code` string COMMENT '公司代码',
  `company_name` string COMMENT '公司名称',
  `store_level` string COMMENT '门店等级',
  `longitude` string COMMENT '经度',
  `latitude` string COMMENT '纬度',
  `franchisee` string COMMENT '所属加盟商',
  `store_life` string COMMENT '门店生命周期：待装修/待开业/新店/满年老店/待拆店',
  `expect_open_date` date COMMENT '计划开店日期',
  `actual_open_date` date COMMENT '实际开店日期',
  `close_date` date COMMENT '闭店日期',
  `franchisee_name` string COMMENT '所属加盟商名称',
  `l2_company_code` string COMMENT '二级公司编码',
  `l2_company_name` string COMMENT '二级公司名称',
  `store_owner` string COMMENT '店长工号',
  `province_code` string COMMENT '省份编码(isms)',
  `city_code` string COMMENT '城市编码(isms)',
  `area_code` string COMMENT '区域编码(isms)',
  `is_open`   int    COMMENT '是否营业',
   dt         string COMMENT '快照日期yyyy-MM-dd'
  )