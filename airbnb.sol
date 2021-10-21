pragma solidity 0.8.9;

contract airbnb {
    
    
    struct  imoveis {
        
        string enderecoPropriedade;
        uint numeroMaxHospedes;
        uint precoHospedagem;
        string descricaoProprieade;
        string nomeProprietario;
        
    }
    
     address enderecoHospede;
     uint dataCriacao;
     imoveis[] public propriedades;
     bool propriedadeDisponivel;
    
    constructor (
      address _enderecoHospede
    )
    {
      enderecoHospede = _enderecoHospede;
    }
    
    
    function criarAnuncio (
        string memory _enderecoPropriedade,
        uint _numeroMaxHospedes, 
        uint _precoHospedagem,
        string memory _descricaoProprieade, 
        string memory _nomeProprietario
        )
            public
        {
        propriedades.push(imoveis(_enderecoPropriedade, _numeroMaxHospedes, _precoHospedagem, _descricaoProprieade, _nomeProprietario));
        }
    
    function aumentoPercentualFeriado (uint _percentualAumento, uint _numProp)  public {
        propriedades[_numProp].precoHospedagem += (propriedades[_numProp].precoHospedagem * _percentualAumento)/100;
        }
        
    function anuncioCriado (uint _numPro) public view returns (string memory, string memory, string memory, string memory, string memory, uint, string memory, uint) {
        return ("Parabens,  ",propriedades[_numPro].nomeProprietario, 
            "seu anuncio foi criado com as seguintes informacoes.... Endereco da propriedade: ",
            propriedades[_numPro].enderecoPropriedade,
            "Numero maximo de hospedes: ",
            propriedades[_numPro].numeroMaxHospedes,
            "Preco da Hospedagem: ",
            propriedades[_numPro].precoHospedagem
            );
        
                
        
        
    }
        

        
}
        
    
