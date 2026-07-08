// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BasePulse {
    enum Choice {
        Bull,
        Bear
    }

    event Pulse(address indexed user, uint256 indexed day, Choice choice, uint256 streak, uint256 total);

    mapping(address => uint256) public lastDay;
    mapping(address => uint256) public streak;
    mapping(address => uint256) public total;
    mapping(address => Choice) public lastChoice;

    function vote(Choice choice) external {
        uint256 currentDay = block.timestamp / 1 days;
        require(lastDay[msg.sender] < currentDay, "Already voted today");

        if (lastDay[msg.sender] + 1 == currentDay) {
            streak[msg.sender] += 1;
        } else {
            streak[msg.sender] = 1;
        }

        lastDay[msg.sender] = currentDay;
        lastChoice[msg.sender] = choice;
        total[msg.sender] += 1;

        emit Pulse(msg.sender, currentDay, choice, streak[msg.sender], total[msg.sender]);
    }
}
