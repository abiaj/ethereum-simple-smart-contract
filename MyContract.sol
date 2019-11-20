pragma solidity ^0.4.0;

contract MyContract{
    uint myVariable;
    address owner;
    modifier onlyowner(){
        if(owner == msg.sender){
        _;
        }else{
            throw;
        }
    }
    function MyContract() payable{
        myVariable = 5;
        owner = msg.sender;
    }
    function setMyVariable(uint newVariable) onlyowner{
            myVariable = newVariable;
    }
    function getMyVariable() constant returns(uint){
         return myVariable;
    }
    function getMyContractBalance() constant returns (uint){
        return this.balance;
    }
    function kill() onlyowner{
            suicide(owner);
    }
    function () payable{
    }
}