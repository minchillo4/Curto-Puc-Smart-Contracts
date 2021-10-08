// declarar a versão do solidity usada pelo compilador
pragma solidity 0.8.9;
//criar objeto "contract" que é o smart-contract propriamente. O objeto é uma forma de estruturar os dados.

contract CartaoDeVacinacao  {
        string public constant nome  = "Lucas Minchillo";
        string public unidade = "UBS-42";
        uint public CNES = 102334;
        uint public data = 15082021;
        uint   private lote = 19141951;
        string public vacinador = "Roberto da Silva";
        bool  public  imunizado = false;
        address public  wallet = 0x43fB565603bac1802595c9E643c7710216E344B8;
        string private constant fabricante = "Pfizer";
}
