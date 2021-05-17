package cn.taoass.service;

import cn.taoass.domain.User;

import java.util.List;

/**
 * 用户管理的业务接口
 */
public interface UserService {
    /**
     * 查询所有用户信息
     * @return 一个 User 类型的 List 集合
     */
    public List<User> findAll();
}
