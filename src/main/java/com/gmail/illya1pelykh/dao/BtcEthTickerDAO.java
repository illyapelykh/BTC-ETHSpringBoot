package com.gmail.illya1pelykh.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.gmail.illya1pelykh.entity.BtcEthTicker;

public interface BtcEthTickerDAO extends MongoRepository<BtcEthTicker, String> {

}
