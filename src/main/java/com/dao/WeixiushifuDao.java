package com.dao;

import com.entity.WeixiushifuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WeixiushifuVO;
import com.entity.view.WeixiushifuView;


/**
 * 维修师傅
 * 
 * @author 
 * @email 
 * @date 2021-01-25 17:37:50
 */
public interface WeixiushifuDao extends BaseMapper<WeixiushifuEntity> {
	
	List<WeixiushifuVO> selectListVO(@Param("ew") Wrapper<WeixiushifuEntity> wrapper);
	
	WeixiushifuVO selectVO(@Param("ew") Wrapper<WeixiushifuEntity> wrapper);
	
	List<WeixiushifuView> selectListView(@Param("ew") Wrapper<WeixiushifuEntity> wrapper);

	List<WeixiushifuView> selectListView(Pagination page,@Param("ew") Wrapper<WeixiushifuEntity> wrapper);
	
	WeixiushifuView selectView(@Param("ew") Wrapper<WeixiushifuEntity> wrapper);
	
}
