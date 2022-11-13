// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract practice {
    // different account address
    address payable diffAccount = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    // 1. send ether to current contract
    function sendEtherToPracticeContract() public payable {}

    // 2. fetch the ether of current contract
    function fetchEther () public view returns(uint) {
        return address(this).balance;
    }

    // 3. send ether to different account
    function sendEtherToDifferentAccount() public {
        require(address(this).balance > 0, "No sufficent balance"); // checking of balance in current contract
        diffAccount.transfer(1 ether);
    }
}
