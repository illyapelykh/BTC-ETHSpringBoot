package com.gmail.illya1pelykh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gmail.illya1pelykh.dao.BtcEthTickerDAO;
import com.gmail.illya1pelykh.entity.BtcEthTicker;
import com.gmail.illya1pelykh.service.BtcEthTickerService;

public class BtcEthTickerServiceImpl implements BtcEthTickerService {

	@Autowired
	private BtcEthTickerDAO tickerDAO;

	@Override
	public void save(BtcEthTicker ticker) {
		tickerDAO.save(ticker);

	}

	@Override
	public List<BtcEthTicker> findAll() {
		return tickerDAO.findAll();
	}

}
