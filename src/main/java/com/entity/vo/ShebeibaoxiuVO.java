package com.entity.vo;

import com.entity.ShebeibaoxiuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 设备报修
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-25 17:37:50
 */
public class ShebeibaoxiuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 工号
	 */
	
	private String gonghao;
		
	/**
	 * 师傅姓名
	 */
	
	private String shifuxingming;
		
	/**
	 * 保修内容
	 */
	
	private String baoxiuneirong;
		
	/**
	 * 保修日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date baoxiuriqi;
		
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 宿舍
	 */
	
	private String sushe;
				
	
	/**
	 * 设置：工号
	 */
	 
	public void setGonghao(String gonghao) {
		this.gonghao = gonghao;
	}
	
	/**
	 * 获取：工号
	 */
	public String getGonghao() {
		return gonghao;
	}
				
	
	/**
	 * 设置：师傅姓名
	 */
	 
	public void setShifuxingming(String shifuxingming) {
		this.shifuxingming = shifuxingming;
	}
	
	/**
	 * 获取：师傅姓名
	 */
	public String getShifuxingming() {
		return shifuxingming;
	}
				
	
	/**
	 * 设置：保修内容
	 */
	 
	public void setBaoxiuneirong(String baoxiuneirong) {
		this.baoxiuneirong = baoxiuneirong;
	}
	
	/**
	 * 获取：保修内容
	 */
	public String getBaoxiuneirong() {
		return baoxiuneirong;
	}
				
	
	/**
	 * 设置：保修日期
	 */
	 
	public void setBaoxiuriqi(Date baoxiuriqi) {
		this.baoxiuriqi = baoxiuriqi;
	}
	
	/**
	 * 获取：保修日期
	 */
	public Date getBaoxiuriqi() {
		return baoxiuriqi;
	}
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：宿舍
	 */
	 
	public void setSushe(String sushe) {
		this.sushe = sushe;
	}
	
	/**
	 * 获取：宿舍
	 */
	public String getSushe() {
		return sushe;
	}
			
}
