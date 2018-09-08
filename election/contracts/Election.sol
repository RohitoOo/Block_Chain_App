// Declare Verions of Solidity 

pragma solidity ^0.4.11 ; 

// Declare Contract 

//And Smoke test 

contract Election {
    // Read Candidate 
    string public candidate;
    // Store Candidate
    // Constructor 

    function Election () public {
        candidate = "Candidate 1";
    }
}