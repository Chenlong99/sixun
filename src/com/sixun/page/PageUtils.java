package com.sixun.page;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sixun.util.JdbcUtils;


/**
 * 分页工具类
 * @author Administrator
 *
 */
public class PageUtils {
	
	static QueryRunner runner = JdbcUtils.getQueryRunner();
	
	public static <T> List<T> getByPages(PageBean<T> pb,Class<T> t,String sql,String condition){
		String byPage = " LIMIT ?,?";
		
		//查询总记录数  totalRows----------totalPages有值
		pb.setTotalRows(getToTalRows(condition));
		
		//判断一下pageNow是否合理    1~totalPages
		if(pb.getPageNow()<1){
			pb.setPageNow(1);
			System.out.println("修改当前的页面是1");
		}else if(pb.getPageNow()>pb.getTotalPages()){
			pb.setPageNow(pb.getTotalPages());
		}
		
		int start = (pb.getPageNow()-1)*pb.getPageCount();//0  6  12
		System.out.println("start------------"+start);
		
		//查询结果集  List<T>
		sql = sql.concat(condition).concat(byPage);
		System.out.println("分页查询sql："+sql);
		try {
			List<T> datas = runner.query(sql, new BeanListHandler<T>(t),start,pb.getPageCount());
			pb.setDatas(datas);
			return datas;
		} catch (SQLException e) {
			e.printStackTrace();
		}

	 return null;
	}
	
	//返回总记录数
	public static int getToTalRows(String condition) {
		String sql = "SELECT COUNT(*) FROM ";
		sql = sql.concat(condition);
		System.out.println("查询总记录数："+sql);
		try {
			//总记录数
			Long count = runner.query(sql, new ScalarHandler<Long>());
			System.out.println("总记录数："+count);
			return count.intValue();
		} catch (SQLException e) {
			throw new RuntimeException("查询总记录数出错");
		}
	}
	
}
