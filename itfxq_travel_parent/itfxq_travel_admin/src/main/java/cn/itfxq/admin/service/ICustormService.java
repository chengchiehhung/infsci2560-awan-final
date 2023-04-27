package cn.itfxq.admin.service;


import cn.itfxq.common.domain.Custorm;
import cn.itfxq.common.query.CustormQuery;
import cn.itfxq.common.util.PageList;

/**
 * @description: ICustormService
 * @date: created by 10/27 8:05
 */
public interface ICustormService {
    //注册
    void regCustorm(Custorm custorm);
    //登录
    Custorm loginCustorm(Custorm custorm);
    //编辑保存用户基本信息
    Custorm editSaveUserInfo(Custorm custorm);
    //更新密码
    Custorm updatePwd(Custorm custorm);
    //更新头像
    Custorm updateHeadImg(Custorm custorm);

    PageList getCustormList(CustormQuery custormQuery);
}
