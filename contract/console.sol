// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @title Simple Celo Wallet - works on Alfajores Testnet
/// @notice Lets users deposit, withdraw, and send CELO

contract CeloWallet {
    mapping(address => uint256) public balances;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event Transferred(address indexed from, address indexed to, uint256 amount);

    /// @notice Deposit CELO into your wallet
    function deposit() external payable {
        require(msg.value > 0, "Send CELO to deposit");
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    /// @notice Withdraw CELO from your wallet
    function withdraw(uint256 _amount) external {
        require(balances[msg.sender] >= _amount, "Not enough balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit Withdrawn(msg.sender, _amount);
    }

    /// @notice Transfer CELO to another user (inside this wallet system)
    function transfer(address _to, uint256 _amount) external {
        require(_to != address(0), "Invalid address");
        require(balances[msg.sender] >= _amount, "Not enough balance");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit Transferred(msg.sender, _to, _amount);
    }

    /// @notice Check wallet balance
    function getBalance() external view returns (uint256) {
        return balances[msg.sender];
    }

    /// @notice Fallback to receive CELO directly
    receive() external payable {
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }
}
