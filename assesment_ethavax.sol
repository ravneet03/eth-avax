// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract DecentralizedVoting {
    address public owner;
    uint public proposalCount;

    mapping(uint => string) public proposals;
    mapping(uint => uint) public proposalVotes;
    mapping(address => mapping(uint => bool)) public hasVoted;

    event ProposalCreated(uint proposalId, string description);
    event Voted(uint proposalId, address voter);
    event VotingResult(uint proposalId, string description, uint votes);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    function createProposal(string memory _description) public onlyOwner {
        require(bytes(_description).length > 0, "Proposal description cannot be empty");
        proposalCount++;
        proposals[proposalCount] = _description;
        proposalVotes[proposalCount] = 0;
        emit ProposalCreated(proposalCount, _description);
    }

    function vote(uint _proposalId) public {
        if (_proposalId == 0 || _proposalId > proposalCount) {
            revert("Invalid proposal ID");
        }
        if (hasVoted[msg.sender][_proposalId]) {
            revert("You have already voted for this proposal");
        }

        uint previousVotes = proposalVotes[_proposalId];

        hasVoted[msg.sender][_proposalId] = true;
        proposalVotes[_proposalId]++;

        assert(proposalVotes[_proposalId] == previousVotes + 1);

        emit Voted(_proposalId, msg.sender);
    }

    function tallyVotes(uint _proposalId) public onlyOwner {
        require(_proposalId > 0 && _proposalId <= proposalCount, "Invalid proposal ID");

        string memory description = proposals[_proposalId];
        uint votes = proposalVotes[_proposalId];

        emit VotingResult(_proposalId, description, votes);
    }
}
