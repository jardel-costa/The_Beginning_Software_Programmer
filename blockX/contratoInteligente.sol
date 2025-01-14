
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

contract = web3.eth.contract(address=contract_address, abi=contract_abi)

    

    
# Endereço do sensor (pode ser o endereço de uma conta de teste do Ganache)

    
sensor_address = "ENDERECO_DO_SENSOR"

    

    
# Função para obter dados do sensor

    
def obter_dados_sensor():

    
    dados = contract.functions.obterDadosSensor(sensor_address).call()

    
    df = pd.DataFrame(dados, columns=["timestamp", "temperatura", "umidade", "nutrientes"])

    
    return df

    

    
# Obter dados do sensor

    
df = obter_dados_sensor()

    
print("Dados coletados da blockchain:")

    
print(df)

    

    
# Modelo de Machine Learning

    
X = df[['temperatura', 'umidade']]

    
y = df['nutrientes']

    
modelo = RandomForestRegressor()

    
modelo.fit(X, y)

    

    
# Previsão de necessidades de nutrientes

    
novos_dados = {'temperatura': 21, 'umidade': 33}

    
previsao = modelo.predict([list(novos_dados.values())])

    
print(f"Previsão de nutrientes necessários: {previsao[0]}")