// Declare Verions of Solidity 

pragma solidity ^0.4.2 ; 

// Declare Contract 

//And Smoke test 

// contract Election {
//     // Read Candidate 
//     string public candidate;
//     // Store Candidate
//     // Constructor 

//     function Election () public {
//         candidate = "Candidate 1";
//     }
// }

contract Election {
// Model Candidate ( Description of Candidate Name, votes etc..)
    //   uint == unassigned Integer 
  struct Candidate {
      uint id ; 
      string name ;
      uint voteCount ;
  }
  // Store Candidate 
  // Fetch Candidate 
  mapping(uint => Candidate ) public candidates; 
  // Store Candidates Count ( No. Of Candidate In Elections )

    uint public candidatesCount ; 

    function Election () public {
       addCandidate("Candidate1");
       addCandidate("Candidate2");
    }

    function addCandidate ( string _name) private {
        candidatesCount ++ ; 
        candidates[candidatesCount] = Candidate(candidatesCount, _name,  0 );
    }

}