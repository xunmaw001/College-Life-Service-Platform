package com.entity.view;

import com.entity.WeixiushifuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 维修师傅
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-25 17:37:50
 */
@TableName("weixiushifu")
public class WeixiushifuView  extends WeixiushifuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WeixiushifuView(){
	}
 
 	public WeixiushifuView(WeixiushifuEntity weixiushifuEntity){
 	try {
			BeanUtils.copyProperties(this, weixiushifuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
