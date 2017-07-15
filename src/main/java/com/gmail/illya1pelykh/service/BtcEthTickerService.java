package com.gmail.illya1pelykh.service;

import java.util.List;

import com.gmail.illya1pelykh.entity.BtcEthTicker;

public interface BtcEthTickerService {

	void save(BtcEthTicker ticker);

	List<BtcEthTicker> findAll();

}
