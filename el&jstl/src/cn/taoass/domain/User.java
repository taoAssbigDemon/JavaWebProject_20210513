package cn.taoass.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class User {
    private String name;
    private String age;
    private Date birthday;

    public User() {
    }

    public User(String name, String age, Date birthday) {
        this.name = name;
        this.age = age;
        this.birthday = birthday;
    }

    /**
     * 逻辑视图
     * @return 格式化后的时间字符串
     */
    public String getBirStr(){
        if(birthday != null){
            //格式化日期对象
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            //返回字符串
            return sdf.format(birthday);
        }
        return "";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public Date getBirthday() {//为什么我的IDE自动生成getter的时候birthday中有参数
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
