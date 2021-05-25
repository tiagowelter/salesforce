//Estrutura de uma classe
public with sharing class ClasseDemonstraEstrutura 
{

    //detro da classe temos os 
    //private ou public
    //static ou nada
    //Tipo de variavel de retorno ou void para não retornar nada
    //nome do metodo
    //dentro do metodo vai um ou mais parâmetros ou nada
    public static Boolean nomeDoMetodo(Integer parametroVariavel, Boolean parametroVariavel2)
    {

        //Declaro variaveis pertencem ao corpo do metodo
        String textoVariavel    = 'exemplo';
        Integer inteiroVariavel = 0;
        Decimal decimalComCasasVariavel = 50.00;
        Boolean verdadeiroOuFalsoVariavel = true;
        Double dobroDeCasasDecimaisVariavel = 50.665545;

        //lista de inteiros declarada em branco e com inteiros adicionados após isso
        List<Integer> listaDeValoresVariavel = new List<Integer>();
        listaDeValoresVariavel.add(1);
        listaDeValoresVariavel.add(2);
        listaDeValoresVariavel.add(4);
        listaDeValoresVariavel.add(20);
        system.debug('listaDeValoresVariavel '+listaDeValoresVariavel);

        //lista de strings declarada em branco e com strings adicionados após isso
        List<String> listaDeStringVariavel = new List<String>();
        listaDeStringVariavel.add('Joana');
        listaDeStringVariavel.add('Letícia');
        listaDeStringVariavel.add('Mariana');
        listaDeStringVariavel.add('Brenda');
        system.debug('listaDeStringVariavel '+listaDeStringVariavel);

        //lista de strings montadas já com valores incluídos
        List<String> listaDeString2Variavel = new List<String>{'Joana','Letícia','Mariana','Brenda','Gil'};
        system.debug('listaDeString2Variavel '+listaDeString2Variavel);

        //lista de oportunidades montada com base em um select
        List<Opportunity> listOportunidadesVariavel = new List<Opportunity>([Select Name, Id, OwnerId, GrossTotal__c From Opportunity]);
        system.debug('listOportunidadesVariavel '+listOportunidadesVariavel);

        Decimal valorTotalVariavel = 0;
        
        //Para cada linha desta coleção, você vai executar a lógica que está aqui dentro
        for(Opportunity nomeVariavelFor  : listOportunidadesVariavel){

            system.debug('Nomeda oportunidade:' + nomeVariavelFor.Name + nomeVariavelFor.Id);

            valorTotalVariavel += nomeVariavelFor.GrossTotal__c;

        }
        system.debug('Valor Total das oportunidades é ' + valorTotalVariavel);

        for(String variavelDoFor : listaDeString2Variavel){

            system.debug('Nome da Pessoa é ' + variavelDoFor);

        }

        /*[
            1,
            2,
            4,
            20
        ]
        ////////////////////////////////////////////////////////////////
        [
            'Joana',
            'Letícia',
            'Mariana',
            'Brenda'
        ]
        */


        //controle de decisão
        if(parametroVariavel2 == true)
        {
            //se o parametroVariavel2 for verdadeiro eu executo o que está aqui dentro
            //corpo que fica dentro do if
        }else if(parametroVariavel2 == null){
        
        }else{

        }

        //retorno tem que ser igual ao que foi declarado na construção do método
        //se for void é sem retorno
        return true;

    }

    //exemplo de multiplicação
    public static Integer exemploMultiplicacaoMetodo(Integer pValorParametro1, Integer pValorParametro2)
    {

        Integer valorFixoVariavel = 5; //defini um valor fixo na variável
        Integer resuntadoVariavel = (pValorParametro1 * pValorParametro2) + valorFixoVariavel;

        system.debug(resuntadoVariavel);

        return resuntadoVariavel; //retorna um inteiro no método

    }

    //desafio soma numeros com controle de decisão
    public static Integer desafioSomaComCOntroleDeDecisao(Integer pValorParametro1, Integer pValorParametro2){

        Integer resultadoVariavel = pValorParametro1 + pValorParametro2;//primeiro somamos os valores dos parâmetros

        //verificamos se o parâmetro 1 é maior do que 5
        if(pValorParametro1 > 5){
            //se for maior do que 5, soma mais dois
            resultadoVariavel = resultadoVariavel + 2;
        }

        return resultadoVariavel; //resultado retornado
    }

    //exemplo controle de decisão com várias comparações
    public static Integer exemploManipulandoCondicoes(Integer pValorParametro1, Integer pValorParametro2, Boolean pSempreSoma2){

        Integer resultadoVariavel = pValorParametro1 + pValorParametro2;//primeiro somamos os valores dos parâmetros

        //verificamos se o parâmetro 1 é maior do que 5 e menor do que 10
        if( ((pValorParametro1 > 5 && pValorParametro1 < 10) || pValorParametro1 == 20) && pSempreSoma2 == true){
            //se for maior do que 5 e menor do que 10, soma mais dois
            resultadoVariavel = resultadoVariavel + 2;
        }

        //if de uma linha - lógica
        //resultado = (condicao) ? verdadeiro : falso;

        system.debug('resultadoVariavel '+ resultadoVariavel);

        return resultadoVariavel; //resultado retornado
    }

    //exemplo controle de decisão com várias comparações em uma linha
    public static Integer exemploManipulandoCondicoesUmaLinha(Integer pValorParametro1, Integer pValorParametro2, Boolean pSempreSoma2){

        return pValorParametro1 + pValorParametro2 + ( (((pValorParametro1 > 5 && pValorParametro1 < 10) || pValorParametro1 == 20) && pSempreSoma2 == true) ? 2 : 0 ) ; //resultado retornado
    }

    public static Integer desafio1MultiplicaValores(Integer pValorParametro1, Integer pValorParametro2, Boolean pFazMultiplicacao)
    {

        Integer retornoVariavel = 0;

        if(pFazMultiplicacao == true){
            retornoVariavel = pValorParametro1 * pValorParametro2;
        }

        system.debug('retornoVariavel '+retornoVariavel);

        return retornoVariavel;

    }

    public static Decimal retornaValorTotalOportunidadesMetodo()
    {

        Decimal valorOportunidadesVariavel = 0;

        List<Opportunity> listaOportunidadeVariavel = new List<Opportunity>();

        listaOportunidadeVariavel = [Select GrossTotal__c From Opportunity];

        for(Opportunity variavelDoFor : listaOportunidadeVariavel){

            valorOportunidadesVariavel += variavelDoFor.GrossTotal__c;

        }

        system.debug('valorOportunidadesVariavel '+valorOportunidadesVariavel);

        return valorOportunidadesVariavel;

    }

    public static Decimal retornaValorTotalOportunidadesPorUsuariosMetodo(String idUsuario){

        List<Opportunity> listaOportunidadeVariavel = new List<Opportunity>();

        Decimal valorTotalVariavel = 0;

        if( String.isBlank(idUsuario) ){

            listaOportunidadeVariavel = [Select GrossTotal__c From Opportunity];

        }else{

            listaOportunidadeVariavel = [Select GrossTotal__c From Opportunity WHERE OwnerId = :idUsuario];

        }

        for(Opportunity variavelDoFor : listaOportunidadeVariavel){

            valorTotalVariavel += variavelDoFor.GrossTotal__c;

        }

        system.debug('O valor total é: '+ valorTotalVariavel);

        return valorTotalVariavel;

    }

}
