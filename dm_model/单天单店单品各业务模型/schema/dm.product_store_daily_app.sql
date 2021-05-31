drop table if exists dm.product_store_daily_app;
CREATE TABLE `dm.product_store_daily_app`(
`id` string comment '主键id',
`date_key` string comment '日期key',
`store_key` string comment '门店编码',
`store_name` string comment '门店名称',
`l2_company_code` string comment '二级子公司编码',
`l2_company_name` string comment '二级子公司名称',
`company_code` string comment '三级子公司编码',
`company_name` string comment '三级子公司名称',
`franchisee_code` string comment '加盟商编码',
`franchisee_name` string comment '加盟商名称',
`province_code` string comment '省份编码',
`province_name` string comment '省份名称',
`city_code` string comment '城市编码',
`city_name` string comment '城市名称',
`area_code` string comment '区域编码',
`area_name` string comment '区域名称',
`area_manager_code` string comment '城区负责人工号',
`area_manager_name` string comment '城区负责人姓名',
`big_area_manager_code` string comment '片区负责人工号',
`big_area_manager_name` string comment '片区负责人姓名',
`trade_area_code` string comment '商圈性质编码',
`trade_area_name` string comment '商圈性质名称',
`store_type` string comment '门店类型（商场厅房／商场沿街／商超专柜／商超中岛／普通门店／站亭店／量贩店）',
`actual_open_date` string comment '实际开店日期',
`store_status` string comment '门店状态：暂闭店、未开张、预闭店、正常营业…',
`demolition_date` string comment '拆店日期',
`channel_type` string comment '渠道类型编码,同dim_channel表',
`channel_type_name` string comment '渠道类型名称',
`sku_key` string comment '商品编码',
`sku_name` string comment '商品名称',
`category_one_code` string comment '一级类别编码',
`category_one_name` string comment '一级类别名称',
`category_two_code` string comment '二级类别编码',
`category_two_name` string comment '二级类别名称',
`category_three_code` string comment '三级类别编码',
`category_three_name` string comment '三级类别名称',
`category_four_code` string comment '四级类别编码',
`category_four_name` string comment '四级类别名称',
`is_gift` string comment '是否赠品',
`jc_unit_code` string comment '基础单位编码',
`jc_unit_name` string comment '基础单位名称',
`jc_sale_sku_qty` decimal(18,4) comment '基础单位销量,按支付时间来算',
`xs_unit_code` string comment '销售单位编码',
`xs_unit_name` string comment '销售单位名称',
`xs_sale_sku_qty` decimal(18,4) comment '销售单位销量,按支付时间来算',
`sales_amt_no_discount` decimal(18,4) COMMENT '商品金额：商品原售价金额,按支付时间来算',
`sales_amt_receive`     decimal(18,4) COMMENT '应收金额：商品额-优惠额,按支付时间来算',
`sales_amt` decimal(18,4) comment '实收额:应收金额-退款,按支付时间来算',
`sales_amt_discount` decimal(18,4) comment '优惠金额,按支付时间来算',
`sales_amt_refund` decimal(18,4) comment '退款金额,按支付时间来算',
`sales_amt_subsidy` decimal(18,4) comment '补贴金额(门店+app才有),按支付时间来算',
`sales_amt_dg` decimal(18,4) comment '实收额:应收金额-退款,按发货时间来算',
`sales_amt_subsidy_dg` decimal(18,4) comment '补贴金额(门店+app才有),按发货时间来算',
`jc_sale_sku_qty_dg` decimal(18,4) comment '基础单位销量,按发货时间来算'
)
COMMENT '单店单天单品业绩指标-APP渠道'
PARTITIONED BY (
`dt` date COMMENT 'yyyy-MM-dd，每天执行一次，生成一个分区')
;