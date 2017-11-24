package generate;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.DbType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

public class Generater {
	public static void main(String[] args) {

		AutoGenerator mpg = new AutoGenerator();

		// 全局配置
		GlobalConfig gc = new GlobalConfig();
		gc.setOutputDir("D://haha");
		gc.setFileOverride(true);
		gc.setActiveRecord(true);// 不需要ActiveRecord特性的请改为false
		gc.setEnableCache(false);// XML 二级缓存
		gc.setBaseResultMap(true);// XML ResultMap
		gc.setBaseColumnList(false);// XML columList
		gc.setAuthor("lin");
		mpg.setGlobalConfig(gc);

		// 数据源配置
		DataSourceConfig dsc = new DataSourceConfig();
		dsc.setDbType(DbType.MYSQL);
		dsc.setDriverName("com.mysql.jdbc.Driver");
		dsc.setUsername("root");
		dsc.setPassword("123456");
		dsc.setUrl(
				"jdbc:mysql://127.0.0.1:3306/test2?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
		mpg.setDataSource(dsc);

		// 策略配置
		StrategyConfig strategyConfig = new StrategyConfig();
		// strategy.setTablePrefix(new String[]{"_"});// 此处可以修改为您的表前缀
		strategyConfig.setInclude(new String[] { "thing" });// 这里限制需要生成的表,不写则是生成所有表
		strategyConfig.setNaming(NamingStrategy.underline_to_camel);// 表名生成策略
																	// 下划线转驼峰命名
		mpg.setStrategy(strategyConfig);

		// 包配置
		PackageConfig pc = new PackageConfig();
		pc.setParent(null);
		// pc.setModuleName("mybatisplus");
		pc.setEntity("com.du.lin.bean");
		pc.setController("com.du.lin.controller");
		pc.setMapper("com.du.lin.dao");
		pc.setService("com.du.lin.service");
		pc.setServiceImpl("com.du.lin.service.impl");
		pc.setXml("resources.mapping");
		mpg.setPackageInfo(pc);

		// 执行生成
		mpg.execute();

	}
}
