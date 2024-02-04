// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract Jungle {
    uint public highestDonation;
    address public highestDonator;
    
    event Donation(uint amount, address donator);

    function donate() public payable {
        require(msg.value > highestDonation, "Donation must be larger than previous donation.");
        highestDonation = msg.value;
        highestDonator = msg.sender;
        emit Donation(msg.value, msg.sender);
    }
}