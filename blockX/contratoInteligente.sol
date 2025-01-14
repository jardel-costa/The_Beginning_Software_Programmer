
from web3 import Web3

    
import pandas as pd

    
from sklearn.ensemble import RandomForestRegressor

    

    
# Conexão com a blockchain local (Ganache)

    
ganache_url = "http://127.0.0.1:8545"

    
web3 = Web3(Web3.HTTPProvider(ganache_url))

    

    
# Verifica se está conectado à blockchain

    
if web3.isConnected():

    
    print("Conectado à blockchain")

    
else:

    
    print("Erro ao conectar à blockchain")

    

    
# Endereço do contrato inteligente implantado

    
contract_address = "ENDERECO_DO_CONTRATO"

    

    
# ABI do contrato inteligente

    
contract_abi = [

    
    {

    
        "inputs": [

    
            {"internalType": "uint256", "name": "_temperatura", "type": "uint256"},

    
            {"internalType": "uint256", "name": "_umidade", "type": "uint256"},

    
            {"internalType": "uint256", "name": "_nutrientes", "type": "uint256"}

    
        ],

    
        "name": "registrarDadoSensor",

    
        "outputs": [],

    
        "stateMutability": "nonpayable",

    
        "type": "function"

    
    },

    
    {

    
        "inputs": [

    
            {"internalType": "address", "name": "_sensor", "type": "address"}

    
        ],

    
        "name": "obterDadosSensor",

    
        "outputs": [

    
            {

    
                "components": [

    
                    {"internalType": "uint256", "name": "timestamp", "type": "uint256"},

    
                    {"internalType": "uint256", "name": "temperatura", "type": "uint256"},

    
                    {"internalType": "uint256", "name": "umidade", "type": "uint256"},

    
                    {"internalType": "uint256", "name": "nutrientes", "type": "uint256"}

    
                ],

    
                "internalType": "struct MonitoramentoAgricola.DadosSensor[]",

    
                "name": "",

    
                "type": "tuple[]"

    
            }

    
        ],

    
        "stateMutability": "view",

    
        "type": "function"

    
    }

    
]

    

    
# Conectar-se ao contrato inteligente