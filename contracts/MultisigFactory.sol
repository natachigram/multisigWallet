// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.19;

import './Multisig.sol';

contract MultisigFactory {

    MultiSig[] public multisigArray;
    function createMultisig(address[] memory _admins) external {
        // return multisig = new MultiSig();
        MultiSig multisig = new MultiSig(_admins);

        multisigArray.push(multisig);
    }
}