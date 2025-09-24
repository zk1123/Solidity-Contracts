//SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

  library PriceConversion{
  
  function getPrice() internal view returns(uint256) {
  // Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
  AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
  (,int256 price,,,)=pricefeed.latestRoundData();
  return uint256(price * 1e10);
  }
  
  function getConversionRate(uint256 CryptoAmount) internal view returns(uint256){
     uint256 CryptoPrice = getPrice();
     uint256 AmountInUsd = (CryptoPrice * CryptoAmount)/1e18;
     return AmountInUsd;
  }
  
  
  function getVersion() internal view returns (uint256){
     return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version(); 
  }
  
}