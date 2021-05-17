package cn.taoass.service.impl;

import cn.taoass.dao.UserDao;
import cn.taoass.dao.impl.UserDaoImpl;
import cn.taoass.domain.User;
import cn.taoass.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserDao dao = new UserDaoImpl();
    @Override
    public List<User> findAll() {
        //调用dao完成查询
        return dao.findAll();
    }
}
