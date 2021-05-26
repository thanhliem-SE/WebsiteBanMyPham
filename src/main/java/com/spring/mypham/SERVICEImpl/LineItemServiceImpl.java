package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mypham.DAO.LineItemDAO;
import com.spring.mypham.SERVICE.LineItemService;
import com.spring.mypham.models.LineItem;

@Service
public class LineItemServiceImpl implements LineItemService{
	@Autowired
	LineItemDAO lineItemDAO;
	@Override
	public void saveLineItem(LineItem item) {
		this.lineItemDAO.saveLineItem(item);
	}

	@Override
	public void deleteLineItem(Long id) {
		this.lineItemDAO.deleteLineItem(id);
	}

	@Override
	public void getLineItem(Long id) {
		this.lineItemDAO.getLineItem(id);
	}

	@Override
	public List<LineItem> getListLiItem() {
		return this.lineItemDAO.getListLineItem();
	}

}
