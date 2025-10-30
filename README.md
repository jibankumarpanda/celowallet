🪙 Simple Celo Wallet

Network: Celo Sepolia Testnet
Deployed Contract Address: 0x31d36764f4e8d3f4f9473652aa5a55082e325ec7
https://repo.sourcify.dev/11142220/0x31d36764F4e8d3f4f9473652Aa5a55082E325eC7
<img width="1905" height="911" alt="Screenshot 2025-10-30 135648" src="https://github.com/user-attachments/assets/7eb4a313-0b65-40d0-b489-df87bb4e430d" />

A simple decentralized wallet built on the Celo Sepolia Testnet.
This smart contract allows users to deposit, withdraw, transfer, and check their CELO balance securely on-chain.

📄 Smart Contract

Contract Name: CeloWallet
Network: Celo Sepolia Testnet
License: MIT
Language: Solidity ^0.8.18

✨ Features

💰 Deposit CELO into your wallet

💸 Withdraw CELO anytime

🔁 Transfer CELO to other users within the contract

👁️ View your balance instantly

⚡ Receive CELO directly (via the fallback receive() function)

⚙️ Functions Overview
Function	Description
deposit()	Deposit CELO into your wallet
withdraw(uint256 _amount)	Withdraw specified CELO amount
transfer(address _to, uint256 _amount)	Transfer CELO to another wallet user
getBalance()	Returns the balance of the sender
receive()	Automatically triggered when CELO is sent directly
🚀 How It Works

Deploy the contract to the Celo Sepolia testnet

Deposit CELO into the contract using deposit()

Withdraw CELO back to your wallet anytime

Transfer CELO between wallet users easily

Check your balance with getBalance()

🧠 Example Usage

User deposits 1 CELO → wallet balance increases

User transfers 0.4 CELO to another wallet → balances update

User withdraws remaining CELO → CELO sent to their address

🌐 Network Info

Network: Celo Sepolia Testnet

RPC URL: https://sepolia-forno.celo-testnet.org

Block Explorer: https://sepolia-blockscout.celo-testnet.org

Faucet for test CELO: https://celo.org/developers/faucet

📜 Events
Event	Description
Deposited(address indexed user, uint256 amount)	Triggered when a user deposits CELO
Withdrawn(address indexed user, uint256 amount)	Triggered when a user withdraws CELO
Transferred(address indexed from, address indexed to, uint256 amount)	Triggered when CELO is transferred between users
🔐 Security Notes

Always verify the contract address before interacting.

This is a demo/test contract for educational purposes on the Celo Sepolia Testnet.

Do not use with real CELO or mainnet funds.

🧾 License

MIT License © 2025
Developed for learning and experimenting on the Celo blockchain.
