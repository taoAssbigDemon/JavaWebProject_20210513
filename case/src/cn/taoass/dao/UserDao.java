package cn.taoass.dao;

import cn.taoass.domain.User;

import java.util.List;

/**
 * 用户操作的DAO
 */
public interface UserDao {
    public List<User> findAll();

}
