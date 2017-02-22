package com.sixun.dao;

import com.sixun.entity.GuestComment;
import com.sixun.page.PageDao;

/**
 * @author tk
 *游客留言 dao 接口
 */
public interface IGuestCommentDao extends BaseDao<GuestComment>, PageDao<GuestComment>{
	
}
