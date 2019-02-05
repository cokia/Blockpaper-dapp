from web3 import Web3, HTTPProvider 
import json
rpc_url = "http://178.128.91.211:8545" # Server (DigitalOcean)
w3 = Web3(HTTPProvider(rpc_url))
w3.personal.unlockAccount(w3.eth.accounts[0], "Goldentime!", 0)
contract = w3.eth.contract(address='0x5644cd8cED82c6d292b09204e51222d9E0b274ec', abi=abi)

# notice : You need abi.json on your execute dir 
with open("abi.json") as f:
    info_json = json.load(f)
abi = info_json # set abi

def setvalue(PaperId,ContractType,TimeStamp,FileHash,GapSign,EulSign):
    #요구사항 : 1, "0", 201902061141,"updated!!!", "gap2", "eul2"
    # 타입관련 문제이니 필히 위 형식 따를것!!
    tx_hash = contract.transact({"from": w3.eth.accounts[0],}).set_all(PaperId, ContractType, TimeStamp, FileHash, GapSign, EulSign)
    w3.eth.waitForTransactionReceipt(tx_hash) #여기서 지연시간 꽤 생김. 트렌젝션이 생길때 까지 대기하는부분.
    return(tx_hash)
    # print('updated value: {}'.format(contract.call().get_all())) 
    # is call latest value

def readvalue(txhash): 
    #값을 불러오고싶은 트렌젝션의 txhash
    txdata = w3.eth.getTransaction(txhash)
    input = txdata['input']
    return(contract.decode_function_input(input))
    #(<Function set_all(uint256,string,uint256,string,string,string)>, {'newPaperId': 1, 'newContractType': '0', 'newTimeStamp': 201902061141, 'newFileHash': 'updated!!!', 'newGapSign': 'gap2', 'newEulSign': 'eul2'})
    #앞부분 (<Function 부터 )>, 까지 짜르고싶다..젠장 겁나 거슬리네