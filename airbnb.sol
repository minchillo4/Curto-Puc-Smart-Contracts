pragma solidity 0.8.9;

contract airbnb {
    
    address proprietario;
    address inquilino;
    uint    precoProp;       // preco por dia da propriedade (R$)
    string  endProp;
    bool    propDisponivel;
    bool permFumar;
    bool permCachorro;
    
    constructor (uint _precoProp) {
        proprietario = msg.sender;
        propDisponivel = true;
        precoProp = _precoProp;
    }
    
    
    
    function alugarPropriedade(uint _diasAluguel) public {
        require (_diasAluguel > 0);
        require (_diasAluguel < 21);
        inquilino = msg.sender;
        propDisponivel = false;
    }
        
    function modificarDisponibilidade () public {
        require (msg.sender == proprietario);
        if (propDisponivel == true) { propDisponivel = false;}
        else {propDisponivel = false;}
    }
        
        
    }
    
    
    
    
    
    
    
    
