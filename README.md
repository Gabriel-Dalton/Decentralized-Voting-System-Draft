# Decentralized Voting System

This is a decentralized voting system built using Ethereum, Solidity, and Web3.js, allowing administrators to create elections and users to vote securely using MetaMask. The system includes functionalities for adding candidates, registering voters, casting votes, and displaying results in real-time.

## Project Status

🚧 **This project is still under development.** 🚧

Currently, core functionalities like adding candidates, casting votes, and displaying results are working, but there may be further improvements and refinements in progress. Contributions and suggestions are welcome!

## Features

- **Admin Dashboard**: 
  - Admins can add candidates for the election.
  - View a list of registered candidates.

- **Voting Page**: 
  - Registered users can vote for their preferred candidate.
  - Users can only vote once.

- **Results Page**: 
  - Displays the real-time vote count for each candidate.
  - Accessible to all users.

## Tech Stack

- **Solidity** for the smart contract on the Ethereum blockchain.
- **Web3.js** for interacting with the Ethereum network.
- **MetaMask** for secure authentication and transaction signing.
- **HTML, CSS, JavaScript** for the front-end interface.

## Setup

### Prerequisites

- **Ganache**: To run a local Ethereum blockchain.
- **MetaMask**: For connecting to the Ethereum network and managing accounts.
- **Node.js and npm**: To manage dependencies and run local development servers.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/Decentralized-Voting-System-Draft.git
   cd Decentralized-Voting-System
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Compile and Deploy the Smart Contract**:
   - Ensure Ganache is running on `http://127.0.0.1:8545`.
   - Compile and deploy the contract using Truffle:
     ```bash
     truffle migrate --reset
     ```

4. **Update Contract Address**:
   - Update the `contractAddress` variable in `web3.js` with the deployed contract address.

5. **Run the Front-End**:
   - Serve the HTML files or open them directly in your browser.
   - Connect MetaMask to your local Ethereum network (Ganache).

### Usage

- **Admin Dashboard** (`admin.html`): Add candidates and view the candidate list.
- **Voting Page** (`voting.html`): Registered users can vote for their preferred candidate.
- **Results Page** (`results.html`): View real-time vote counts.

## Future Enhancements

- Implement user authentication for admins and voters.
- Improve error handling and validation for a smoother user experience.
- Expand UI for better user interaction and feedback.

**Note**: This is a work in progress, and features may change as development continues.

Contributions are welcome! If you find any bugs or have suggestions for new features, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
