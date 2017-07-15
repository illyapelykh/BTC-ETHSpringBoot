package com.gmail.illya1pelykh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.gmail.illya1pelykh.dao.BtcEthTickerDAO;
import com.gmail.illya1pelykh.entity.BtcEthTicker;

@org.springframework.web.bind.annotation.RestController
public class RestController {

    @Autowired
    private BtcEthTickerDAO tickerDAO;

    @PostMapping("/saveToDB")
    public void save(@RequestBody BtcEthTicker ticker) {
	tickerDAO.save(ticker);
    }

    @GetMapping("/showTickers")
    public List<BtcEthTicker> findAll() {
	return tickerDAO.findAll();
    }

}
