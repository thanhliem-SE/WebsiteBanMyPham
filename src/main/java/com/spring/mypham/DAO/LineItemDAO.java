package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.LineItem;

public interface LineItemDAO {
	public void saveLineItem(LineItem item);
	public void deleteLineItem(Long id);
	public LineItem getLineItem(Long id);
	public List<LineItem> getListLineItem();
}
