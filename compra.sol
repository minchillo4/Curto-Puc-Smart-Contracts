pragma solidity 0.8.9;
    

contract compraEVenda {
    
    
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string dataDeVencimento;
    
    bool quitado = false;
    
    uint public valorTotal;
    uint public valorEntrada;
    uint public valorEmAberto;
    uint public valorDaParcela;
    uint quantidadeDeParcelas;
    uint porcentagemMulta;
    
    constructor(
        uint _valorTotal,
        uint _valorEntrada,
        uint _quantidadeDeParcelas,
        string memory _matricula,
        string memory _cartorio
        ) 
    {
        valorEntrada = _valorEntrada;    
        valorTotal = _valorTotal;
        quantidadeDeParcelas = _quantidadeDeParcelas;
        matricula =  _matricula;
        cartorio =  _cartorio;
        valorDaParcela = valorParcela();
        
    }
    
    
    
    
    function pagarEntrada(uint _valorPagamento) public returns(string memory, uint) {
        valorEntrada = _valorPagamento;
        valorEmAberto = valorTotal - _valorPagamento;
        return ("Valor em Aberto: ", valorEmAberto);
    }
    
    function pagarParcela(uint _valorDaParcela) public returns (uint, string memory)  {
        valorEmAberto -= _valorDaParcela;
        return(valorEmAberto, "valor em aberto: ");
    }
    
    function valorParcela() public view returns (uint) {
        uint calculoValorParcela = (valorTotal - valorEntrada) / quantidadeDeParcelas;
        return(calculoValorParcela);
    }

    function valorMulta (uint _percentualMulta) public view returns (uint, string memory) {
        uint multa = (_percentualMulta/100) * valorTotal;
        return(multa, "sua multa");
    }

}



