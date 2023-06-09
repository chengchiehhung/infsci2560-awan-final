package cn.itfxq.admin.mapper;


import cn.itfxq.common.domain.SysMenu;

import java.util.List;

/**
 * @author: awan-group
 * @datetime: 6/16 21:24
 * @description: TODO
 */
public interface MenuMapper {
    /**
     *  @description:  查询所有的菜单
     *  @params: 没有参数
     *  @return 菜单集合
     *
     */
    List<SysMenu> findAllMenus();

    /**
     *  @description: 保存一级菜单
     *  @params:  sysMenu前台菜单对象
     *  @return   是否保存成功
     *
     */
    void saveMenu(SysMenu sysMenu);
    /**
     *  @description: 删除菜单
     *  @params:  id
     *  @return   删除是否成功
     *
     */
    void removeMenuById(Long id);
    /**
     *  @description: 修改菜单
     *  @params:  SysMenu
     *  @return   修改是否成功
     *
     */
    void updateMenuById(SysMenu sysMenu);
}
