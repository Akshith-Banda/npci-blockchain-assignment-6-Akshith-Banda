#!/bin/bash

export PATH=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/config/
export CORE_PEER_TLS_ENABLED=true

export CORE_PEER_LOCALMSPID=JioMSP
export CORE_PEER_TLS_ROOTCERT_FILE=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/test-network/organizations/peerOrganizations/Jio.example.com/tlsca/tlsca.Jio.example.com-cert.pem
export CORE_PEER_MSPCONFIGPATH=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/test-network/organizations/peerOrganizations/Jio.example.com/users/Admin@Jio.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051