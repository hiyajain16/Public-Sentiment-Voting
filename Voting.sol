pragma solidity ^0.8.0;

contract SentimentVoting {
    // Mapping to store votes for each candidate
    mapping(string => uint256) public votes;
    
    // Predefined list of candidates
    string[3] public candidates = ["Alice", "Bob", "Charlie"];
    
    // Variable to store sentiment score
    uint256 public sentimentScore;

    // Function to update the sentiment score based on an external input
    function updateSentiment(uint256 score) public {
        sentimentScore = score % candidates.length; // Ensures score is within candidate index range
    }

    // Function to cast a vote based on the current sentiment score
    function castVote() public {
        votes[candidates[sentimentScore]]++; // Increases vote count for selected candidate
    }
    
    // Function to retrieve the vote count of a specific candidate
    function getVotes(string memory candidate) public view returns (uint256) {
        return votes[candidate];
    }
}

