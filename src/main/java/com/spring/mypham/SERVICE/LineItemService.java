package com.spring.mypham.SERVICE;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.mypham.models.LineItem;

public interface LineItemService {
	public void saveLineItem(LineItem item);
	public void deleteLineItem(Long id);
	public void getLineItem(Long id);
	public List<LineItem> getListLiItem();
}
