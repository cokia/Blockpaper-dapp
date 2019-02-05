pragma solidity ^0.4.2;
contract blockpaper1 {
    string ContractType;
    uint256 TimeStamp;
    uint256 PaperId;
    string GapSign;
    string EulSign;
    string FileHash;
    
    function set_all(uint256 newPaperId, string newContractType, uint256 newTimeStamp, string newFileHash, string newGapSign, string newEulSign) public returns(uint256, string, uint256, string, string, string) {
    PaperId = newPaperId;
    ContractType = newContractType;
    TimeStamp = newTimeStamp;
    FileHash = newFileHash;
    GapSign = newGapSign;
    EulSign = newEulSign;
    return (PaperId, ContractType, TimeStamp, FileHash, GapSign, EulSign);
    }
    
    function get_all() constant public returns(uint256, string, uint256, string, string, string) {
    return (PaperId, ContractType, TimeStamp, FileHash, GapSign, EulSign);
    }
}
    // ------- disassemble function ---------------------------------------------------------------------------
    /*
    function getContractType() public constant returns (string) {
        return ContractType;
    }
     function getTimeStamp() public constant returns (uint256) {
        return TimeStamp;
    }
     function getPaperId() public constant returns (uint256) {
        return PaperId;
    }
     function getGapSign() public constant returns (string) {
        return GapSign;
    }
     function getEulSign() public constant returns (string) {
        return EulSign;
    }
     function getFileHash() public constant returns (string) {
        return FileHash;
    }
// ---------------------------------------------------------------------------
    function setContractType(string newContractType) public returns (string) {
        ContractType = newContractType;
        return ContractType;
    }
     function setTimeStamp(uint256 newTimeStamp) public returns (uint256) {
        TimeStamp = newTimeStamp;
        return TimeStamp;
    }
     function setPaperId(uint256 newPaperId) public returns (uint256) {
        PaperId = newPaperId;
        return PaperId;
    }
     function setGapSign(string newGapSign) public returns (string) {
        GapSign = newGapSign;
        return GapSign;
    }
     function setEulSign(string newEulSign) public returns (string) {
        EulSign = newEulSign;
        return EulSign;
    }
    function getFileHash(string newFileHash) public returns (string) {
        FileHash = newFileHash;
        return FileHash;
    }
    
}
*/
