// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MonitoramentoAgricola {
    struct DadosSensor {
        uint256 timestamp;
        uint256 temperatura;
        uint256 umidade;
        uint256 nutrientes;
    }
    
    mapping(address => DadosSensor[]) public leiturasSensores;
    
    event DadoSensorRegistrado(address indexed sensor, uint256 timestamp, uint256 temperatura, uint256 umidade, uint256 nutrientes);

    function registrarDadoSensor(uint256 _temperatura, uint256 _umidade, uint256 _nutrientes) public {
        DadosSensor memory novoDado = DadosSensor({
            timestamp: block.timestamp,
            temperatura: _temperatura,
            umidade: _umidade,
            nutrientes: _nutrientes
        });
        
        leiturasSensores[msg.sender].push(novoDado);
        emit DadoSensorRegistrado(msg.sender, block.timestamp, _temperatura, _umidade, _nutrientes);
    }
    
    function obterDadosSensor(address _sensor) public view returns (DadosSensor[] memory) {
        return leiturasSensores[_sensor];
    }
}