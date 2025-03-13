package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WeixiushifuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WeixiushifuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WeixiushifuView;


/**
 * 维修师傅
 *
 * @author 
 * @email 
 * @date 2021-01-25 17:37:50
 */
public interface WeixiushifuService extends IService<WeixiushifuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WeixiushifuVO> selectListVO(Wrapper<WeixiushifuEntity> wrapper);
   	
   	WeixiushifuVO selectVO(@Param("ew") Wrapper<WeixiushifuEntity> wrapper);
   	
   	List<WeixiushifuView> selectListView(Wrapper<WeixiushifuEntity> wrapper);
   	
   	WeixiushifuView selectView(@Param("ew") Wrapper<WeixiushifuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WeixiushifuEntity> wrapper);
   	
}

