pragma solidity ^0.4.17;

contract ReportCard{
    string public RollNo;
    string public Name;
    string public batch;
    uint public maths_marks;
    uint public science_marks;
    uint public computerscience_marks;
    uint public social_marks;
    
    function StudentReportCard(string newRollNo,string newName,string newbatch,uint newmaths_marks,uint newscience_marks,uint newcomputerscience_marks,uint newsocial_marks)public{
       RollNo=newRollNo;
       Name=newName;
       batch=newbatch;
       maths_marks=newmaths_marks;
       science_marks=newscience_marks;
       computerscience_marks=newcomputerscience_marks;
       social_marks=newsocial_marks;
       
    }
    
    function getStudentReportDetails()public view returns(string,string,string,uint,uint,uint,uint){
        return(RollNo,Name,batch,maths_marks,science_marks,computerscience_marks,social_marks);
    }
    
    function Result_Status()public view returns(string){
        if (maths_marks>45 && science_marks>45 && computerscience_marks>45 && social_marks>45)
        {
            return "Pass";
            
        }
        else
        {
            return "Fail";
        }
    }
}
