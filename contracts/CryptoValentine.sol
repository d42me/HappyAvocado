pragma solidity ^0.4.18;

contract CryptoValentine {
    uint public mostSent = 0;
    bytes32 public currentText = bytes32("Write down your message!");
    address public owner = msg.sender;
    uint private maxLength = 32;
    
    struct LoveLock {
        // Array of strings not possible in Soldity 
        // need other option because bytes32 is just to short
        // cut them in multiple bytes32 is possible but bad solution... 
        bytes32 message;
    }

    LoveLock[] loveLocks;

    function setText(bytes32 newText) public payable returns (bool) {
        if (msg.value > mostSent && newText.length < maxLength) {
            currentText = newText;
            mostSent = msg.value;
            LoveLock memory newLoveLock;
            newLoveLock.message = newText;
            loveLocks.push(newLoveLock);
            return true;
        } else {
            msg.sender.transfer(msg.value);
            return false;
        }
    }

    function getNumberOfLoveLocks() public constant returns (uint) {
        return (loveLocks.length);
    }

    function getLoveLocks() public constant returns (bytes32[]) {
        uint length = loveLocks.length;
        bytes32[] memory messages = new bytes32[](length);

        for (uint i = 0; i < loveLocks.length; i++) {

            LoveLock memory currentLoveLock;
            currentLoveLock = loveLocks[i];

            messages[i] = currentLoveLock.message;
        }
        return (messages);
    }

    function withdrawEther() external {
        require(msg.sender == owner);
        owner.transfer(this.balance);
    }

    function () public payable {
        setText("Default text!");
    }
}
