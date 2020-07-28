pragma solidity >=0.4.17 < 0.6.12;

contract ReportCard{
    string public name;
    uint public rollno;         //int type values
    string public batch;
    uint public math;
    uint public chem;
    uint public phy;
    uint public comp;
    uint public result;
    string public status;
    
    function ReportCard(string newName,uint newRollno,string newBatch,uint Math,uint Chem,uint Phy,uint Comp) public {
        name=newName;
        rollno=newRollno;
        batch=newBatch;
        math=Math;
        chem=Chem;
        phy=Phy;
        comp=Comp;
        result=math+chem+phy+comp;
        if (result>=150)
        status="PASS";
        else if (result<150)
        status="FAIL";
    }
    
        function getReportDetail() public view returns(string,uint,string,uint,uint,uint,uint,uint,string){
            return(name,rollno,batch,math,chem,phy,comp,result,status);
        }
}