pragma solidity ^0.4.17;

contract LandRecord{
    string public owner;
    uint public value;
    string public location;
    string public area;
    string public legalId;
    
    
    function LandRecord(string newowner,uint newvalue,string newlocation,string newarea,string newlegalId)public{
        owner=newowner;
        value=newvalue;
        location=newlocation;
        area=newarea;
        legalId=newlegalId;
    
    }
    function setLandRecordDetails(string newowner,uint newvalue)public{
        owner=newowner;
        value=newvalue;
    }
    function getLandRecordDetails()public view returns(string,uint,string,string,string){
        return(owner,value,location,area,legalId);
    }
}
