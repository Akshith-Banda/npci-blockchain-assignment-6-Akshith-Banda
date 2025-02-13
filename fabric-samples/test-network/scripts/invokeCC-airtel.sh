#!/bin/bash
export PATH=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/config/
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID=AirtelMSP
export CORE_PEER_TLS_ROOTCERT_FILE=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/test-network/organizations/peerOrganizations/Airtel.example.com/tlsca/tlsca.Airtel.example.com-cert.pem
export CORE_PEER_MSPCONFIGPATH=/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/test-network/organizations/peerOrganizations/Airtel.example.com/users/Admin@Airtel.example.com/msp
export CORE_PEER_ADDRESS=localhost:9051

 peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C consent-channel -n asset --peerAddresses localhost:7051 --tlsRootCertFiles "/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/test-network/organizations/peerOrganizations/Jio.example.com/peers/peer0.Jio.example.com/tls/ca.crt" --peerAddresses localhost:9051 --tlsRootCertFiles "/workspaces/npci-blockchain-assignment-6-Akshith-Banda/fabric-samples/test-network/organizations/peerOrganizations/Airtel.example.com/peers/peer0.Airtel.example.com/tls/ca.crt" -c '{"function":"CreateAsset","Args":["asset7", "Black", "21", "Akshith", "1000"]}'

 peer chaincode query -C consent-channel -n asset -c '{"Args":["ReadAsset", "asset7"]}'