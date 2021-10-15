pragma solidity 0.8.9;
    

contract compraEVenda {
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string dataDeVencimento;
    bool quitado = false;
    uint valorTotal;
    uint valorDaParcela;
    uint valorEntrada;
    uint valorEmAberto;
    uint quantidadeDeParcelas;
    uint porcentagemMulta;
    
    function pagarEntrada(uint _valorPagamento) public returns(string memory, uint) {
            valorEntrada = _valorPagamento;
            valorEmAberto = valorTotal - _valorPagamento;
            return ("Valor em Aberto: ", valorEmAberto);
    }
    
    
    
    
    
}
