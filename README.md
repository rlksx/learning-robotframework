# Robot Framework
O Robot Framework é uma biblioteca de testes automatizados  do Python, que preza pela capacidade de suportar testes de aceitação de executáveis(ATTD - Acceptance Test Driven Development) e o desenvolvimento orientado por comportamento(BDD - Behavior Driven Development). Isso permite que as partes interessadas nos testes, como os desenvolvedores, gerentes de projetos e os clientes, possam contribuir para a criação e execução dos testes de forma colaborativa. Além disso o Robot Framework também possui arquitetura modular, o que significa que é possível adicionar bibliotecas externas para estender sua funcionalidade..

Em resumo, o Robot Framework é uma ferramenta de automação de testes versátil e poderosa, que facilita a criação e execução de testes automatizados em uma ampla gama de domínio.

## Ambiente de desenvolvimento
Para executar testes automatizados em Robot Framework, é necessário preparar o ambiente. Aqui estão algumas etapas importantes para configurar o ambiente de desenvolvimento:

1. Instale o Python, Certifique-se de ter o [Python](https://www.python.org/downloads/) instalado em sua máquina site oficial
3. Instale o Robot Framework com o gerenciador de pacotes do Python: `pip install robotframework`
4. Faça download do driver do seu navegador(chromewebdriver para Chrome e gecko para Firefox) e cole o arquivo na pasta de scripts do Python.
5. Instale o Seleium com o comando `pip install SeleniumLibrary` e verifique que é compativel coma versão do navegador e do driver.
6. Por último prepare sua IDE com as extenções compativeis com o robotframework.

## Estrutura do Codigo
Dentro de um codigo em Robot Framework, você vai notar que contém algumas seções que sempre aparecem, são elas:
- **`Settings`**: Esta seção é usada para definir as configurações gerais do teste, como documentação, bibliotecas utilizadas, arquivos de recursos e variáveis.
- **`Variables`**: Esta seção é usada para definir variáveis que podem ser usadas em todo o código.
- **`Keywords`**: Esta seção é usada para definir palavras-chave reutilizáveis que são usadas nos casos de teste. As palavras-chave podem ter argumentos e executar uma série de passos.
- **`Test Cases`**: Nesta seção, você define seus casos de teste, descrevendo a documentação, tags, configuração prévia (se necessário) e as palavras-chave (keywords) que formam o teste em si.

## Comando para execução do teste

`robot .src\exemplo.robot`: executar um teste.

`robot -d results .src/exemplo`: separar os arquivos resultados para outra pasta.

`robot -d results -t "Nome do teste" .src/exemplo.robot`: executar apenas um cenario expecifico.

`robot -d results .src/`: executar todos os arquivos robot de uma pasta.

`robot -d results -i nomedatag .src/`: executar teste especificos de diferentes arquivos (usando tags)