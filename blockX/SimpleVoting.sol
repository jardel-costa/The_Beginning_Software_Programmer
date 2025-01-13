// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    mapping(string => uint256) private votes;
    string[] public candidateList;

// Adicionar um novo candidato
    function addCandidate(string memory candidate) public {
        candidateList.push(candidate);
        votes[candidate] = 0;
    }

// Votar em um candidato
    function vote(string memory candidate) public {
        require(votes[candidate] >= 0, "Candidato não existe");
        votes[candidate] += 1;
    }

// Obter a contagem de votos de um candidato
    function getVotes(string memory candidate) public view returns (uint256) {
        require(votes[candidate] >= 0, "Candidato não existe");
        return votes[candidate];
    }