package com.ltweb.dao;

import com.ltweb.mapper.RowMapper;

import java.util.List;

public interface GenericDAO<T> {
    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
    boolean update(String sql, Object... parameters);
}
