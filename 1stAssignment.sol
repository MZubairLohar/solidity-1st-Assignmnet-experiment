pragma solidity ^0.5.0;

contract homeWork{
    enum regType{
         getBalance
    }
    
    
    modifier onlyOnBalance(regType _amnt){                   //experimental 1 check
       require(balance > address  , "not enough either");    // experimental 2
        _;                                                   // experimental 3
    }                                                        // experimental 4  
     
    address payable public myAddress = address (0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);
    function setAddress(address payable _add) public{
        (myAddress = _add);
    }
    function getBalance()public view returns(uint){
        myAddress.balance;
    }
    function getAddress()public view returns(address){
        return myAddress ;
        
    }
    function pay() payable public{
        myAddress.transfer(msg.value);
    }
    
     struct Student{
        string name;
        uint rollNo;
        uint age;
    }
    
    
    
        mapping ( uint => Student )public students;
            uint public studentCount;
            function addStudent(string memory _name,uint _rollNo, uint _age)public{
            studentCount = studentCount+1;
             
            students[ _rollNo]= Student( _name , _rollNo, _age);
         
            } 
        
    }
    
