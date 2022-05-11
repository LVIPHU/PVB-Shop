package com.ltweb.service.impl;

import com.ltweb.dao.ICatalogDAO;
import com.ltweb.dao.impl.CatalogDAO;
import com.ltweb.model.CatalogModel;
import com.ltweb.service.ICategoryService;

import java.util.List;

import javax.inject.Inject;

public class CategoryService implements ICategoryService {
	@Inject
    ICatalogDAO catalogDAO = new CatalogDAO();

    @Override
    public List<CatalogModel> findAll() {
        return catalogDAO.findAll();
    }

	@Override
	public CatalogModel findById(long id) {
		return catalogDAO.findById(id);
	}

	@Override
	public void add(CatalogModel catalogModel) {
		catalogDAO.add(catalogModel);
	}

	@Override
	public void update(CatalogModel catalogModel) {
		catalogDAO.edit(catalogModel);
	}

	@Override
	public void delete(CatalogModel catalogModel) {
		catalogDAO.delete(catalogModel);
	}


}
