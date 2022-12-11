pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract UnlockPage is Ownable {
  // Declare a variable to track the page's lock status
  bool public pageLocked = true;

  // The unlockPage function can only be called by the contract owner
  function unlockPage() public onlyOwner {
    // Set the pageLocked variable to false
    pageLocked = false;
  }

  // The isPageLocked function can be called by anyone
  // It returns the value of the pageLocked variable
  function isPageLocked() public view returns (bool) {
    return pageLocked;
  }
}
