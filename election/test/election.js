var Election = artifacts.require("./Election.sol");

contract("Election", function(accounts){

    var electionInstance; 

// Check to see if there are TWO candidates 

    it("initializes with two candidates" , function(){
        return Election.deployed().then(function (instance) {
            return instance.candidatesCount();
        }).then(function(count){
            assert.equal(count, 2);
        });
    });

// Check to see if the name, ID and Vote Count is correct 


    it("it initializes the candidates with the correct Values" , function(){
        return Election.deployed().then(function(instance){
            electionInstance = instance;
            return electionInstance.candidates(1); 
        }).then(function(candidate){
            assert.equal(candidate[0] , 1 , "Containes the correct id"  );
            assert.equal(candidate[1] , "Candidate1" , "Containes the correct Candidate's Name"  );
            assert.equal(candidate[2] , 0 , "Containes the correct Count of Votes"  );
            return electionInstance.candidates(2);  
        }).then(function(candidate){
            assert.equal(candidate[0] , 2 , "Containes the correct id"  );
            assert.equal(candidate[1] , "Candidate2" , "Containes the correct Candidate's Name"  );
            assert.equal(candidate[2] , 0 , "Containes the correct Count of Votes"  );
        })
    })

});