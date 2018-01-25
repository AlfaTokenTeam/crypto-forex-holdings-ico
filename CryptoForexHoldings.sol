pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CryptoForexHoldings is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CryptoForexHoldings(address _owner)  UpgradeableToken(_owner) {
    name = "CryptoForexHoldings";
    symbol = "CFH";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}