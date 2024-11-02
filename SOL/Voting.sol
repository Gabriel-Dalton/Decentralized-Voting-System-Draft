// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    address public admin;
    mapping(address => Voter) public voters;
    mapping(string => uint256) public votesReceived;
    mapping(string => bool) public candidateExists;
    
    string[] public candidates;

    struct Voter {
        bool hasVoted;
        bool isRegistered;
        string vote;
    }
    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can execute this.");
        _;
    }

    modifier onlyRegistered() {
        require(voters[msg.sender].isRegistered, "You must be registered to vote.");
        _;
    }
    
    constructor() {
        admin = msg.sender;
    }
    
    function addCandidate(string memory candidateName) public onlyAdmin {
        require(!candidateExists[candidateName], "Candidate already exists.");
        candidates.push(candidateName);
        candidateExists[candidateName] = true;
    }
    
    function registerVoter(address voter) public onlyAdmin {
        require(!voters[voter].isRegistered, "Voter is already registered.");
        voters[voter].isRegistered = true;
    }
    
    function vote(string memory candidate) public onlyRegistered {
        require(!voters[msg.sender].hasVoted, "You have already voted.");
        require(candidateExists[candidate], "Candidate does not exist.");
        
        voters[msg.sender].hasVoted = true;
        voters[msg.sender].vote = candidate;
        votesReceived[candidate]++;
    }
    
    function getVotes(string memory candidate) public view returns (uint256) {
        require(candidateExists[candidate], "Candidate does not exist.");
        return votesReceived[candidate];
    }

    function getCandidates() public view returns (string[] memory) {
        return candidates;
    }
}
