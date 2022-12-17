package com.producttype.model;

import java.util.List;

public interface ProductTypeDAO_interface {
	public void insert(ProductTypeVO productTypeVO);
    public void update(ProductTypeVO productTypeVO);
    public void delete(Integer productTypeNo);
    public ProductTypeVO findByPrimaryKey(Integer productTypeNo);
    public List<ProductTypeVO> getAll();
}