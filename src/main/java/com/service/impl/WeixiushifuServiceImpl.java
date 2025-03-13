package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.WeixiushifuDao;
import com.entity.WeixiushifuEntity;
import com.service.WeixiushifuService;
import com.entity.vo.WeixiushifuVO;
import com.entity.view.WeixiushifuView;

@Service("weixiushifuService")
public class WeixiushifuServiceImpl extends ServiceImpl<WeixiushifuDao, WeixiushifuEntity> implements WeixiushifuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WeixiushifuEntity> page = this.selectPage(
                new Query<WeixiushifuEntity>(params).getPage(),
                new EntityWrapper<WeixiushifuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WeixiushifuEntity> wrapper) {
		  Page<WeixiushifuView> page =new Query<WeixiushifuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WeixiushifuVO> selectListVO(Wrapper<WeixiushifuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WeixiushifuVO selectVO(Wrapper<WeixiushifuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WeixiushifuView> selectListView(Wrapper<WeixiushifuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WeixiushifuView selectView(Wrapper<WeixiushifuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
