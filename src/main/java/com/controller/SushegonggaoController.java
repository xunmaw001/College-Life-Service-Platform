package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.SushegonggaoEntity;
import com.entity.view.SushegonggaoView;

import com.service.SushegonggaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 宿舍公告
 * 后端接口
 * @author 
 * @email 
 * @date 2021-01-25 17:37:50
 */
@RestController
@RequestMapping("/sushegonggao")
public class SushegonggaoController {
    @Autowired
    private SushegonggaoService sushegonggaoService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,SushegonggaoEntity sushegonggao, HttpServletRequest request){

        EntityWrapper<SushegonggaoEntity> ew = new EntityWrapper<SushegonggaoEntity>();
		PageUtils page = sushegonggaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, sushegonggao), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,SushegonggaoEntity sushegonggao, HttpServletRequest request){
        EntityWrapper<SushegonggaoEntity> ew = new EntityWrapper<SushegonggaoEntity>();
		PageUtils page = sushegonggaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, sushegonggao), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( SushegonggaoEntity sushegonggao){
       	EntityWrapper<SushegonggaoEntity> ew = new EntityWrapper<SushegonggaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( sushegonggao, "sushegonggao")); 
        return R.ok().put("data", sushegonggaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(SushegonggaoEntity sushegonggao){
        EntityWrapper< SushegonggaoEntity> ew = new EntityWrapper< SushegonggaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( sushegonggao, "sushegonggao")); 
		SushegonggaoView sushegonggaoView =  sushegonggaoService.selectView(ew);
		return R.ok("查询宿舍公告成功").put("data", sushegonggaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        SushegonggaoEntity sushegonggao = sushegonggaoService.selectById(id);
        return R.ok().put("data", sushegonggao);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        SushegonggaoEntity sushegonggao = sushegonggaoService.selectById(id);
        return R.ok().put("data", sushegonggao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody SushegonggaoEntity sushegonggao, HttpServletRequest request){
    	sushegonggao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(sushegonggao);

        sushegonggaoService.insert(sushegonggao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody SushegonggaoEntity sushegonggao, HttpServletRequest request){
    	sushegonggao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(sushegonggao);

        sushegonggaoService.insert(sushegonggao);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody SushegonggaoEntity sushegonggao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(sushegonggao);
        sushegonggaoService.updateById(sushegonggao);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        sushegonggaoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<SushegonggaoEntity> wrapper = new EntityWrapper<SushegonggaoEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = sushegonggaoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
