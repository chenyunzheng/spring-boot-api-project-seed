package com.airuolin.project.core;

import java.util.List;

/**
 * Service层基础接口，其他Service接口 请继承该接口
 */
public interface Service<T> {
    /** 持久化 */
    void save(T model);

    /** 通过主鍵刪除 */
    void deleteById(Integer id);

    /** 更新 */
    void updateById(T model);

    /** 通过ID查找 */
    T findById(Integer id);

    /** 获取所有 */
    List<T> findAll();
}
