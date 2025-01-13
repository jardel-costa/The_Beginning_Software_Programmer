// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Armazenamento {
    uint256 numerofavorito;

    struct Pessoa {
        uint256 numerofavorito;
        string nome;
    }

    // uint256[] public anArray;
    Pessoa[] public pessoa;

    mapping(string => uint256) public nomeToNumeroFavorito;

    function store(uint256 _numerofavorito) public {
        numerofavorito = _numerofavorito;
    }

    function retrieve() public view returns (uint256) {
        return numerofavorito;
    }

    function addPessoa(string memory _nome, uint256 _numerofavorito) public {
        pessoa.push(Pessoa(_numerofavorito, _nome));
        nomeToNumeroFavorito[_nome] = _numerofavorito;
    }
}