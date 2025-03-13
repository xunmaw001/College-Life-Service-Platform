package com.entity.vo;

import com.entity.ZixishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 自习室
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-25 17:37:50
 */
public class ZixishiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 自习室号
	 */
	
	private String zixishihao;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 时间段
	 */
	
	private String shijianduan;
		
	/**
	 * 容纳人数
	 */
	
	private Integer rongnarenshu;
		
	/**
	 * 详情
	 */
	
	private String xiangqing;
				
	
	/**
	 * 设置：自习室号
	 */
	 
	public void setZixishihao(String zixishihao) {
		this.zixishihao = zixishihao;
	}
	
	/**
	 * 获取：自习室号
	 */
	public String getZixishihao() {
		return zixishihao;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：时间段
	 */
	 
	public void setShijianduan(String shijianduan) {
		this.shijianduan = shijianduan;
	}
	
	/**
	 * 获取：时间段
	 */
	public String getShijianduan() {
		return shijianduan;
	}
				
	
	/**
	 * 设置：容纳人数
	 */
	 
	public void setRongnarenshu(Integer rongnarenshu) {
		this.rongnarenshu = rongnarenshu;
	}
	
	/**
	 * 获取：容纳人数
	 */
	public Integer getRongnarenshu() {
		return rongnarenshu;
	}
				
	
	/**
	 * 设置：详情
	 */
	 
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
	}
			
}
