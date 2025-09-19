CREATE DATABASE locadora; 
CREATE TABLE Veiculo (
    Placa VARCHAR(7) not null PRIMARY KEY,
    Nome VARCHAR(50) not null,
    Modelo VARCHAR(50) not null,
    Ano INT not null,
    Fabricante VARCHAR(50) not null,
    NumPassageiros INT not null,
    CapacidadePortaMalas DECIMAL(10,2) not null,
    ValorLocacaoDia DECIMAL(10,2) not null,
    ValorLocacaoSemana DECIMAL(10,2) not null,
    ValorLocacaoMes DECIMAL(10,2) not null,
    Categoria ENUM('A', 'B', 'C', 'D', 'E') not null
);
CREATE TABLE Cliente (
    CPF VARCHAR(11) PRIMARY KEY not null,
    Nome VARCHAR(100) not null,
    CategoriaCNH ENUM('A', 'B', 'C', 'D', 'E') not null,
    DataNascimento DATE not null,
    Rua VARCHAR(100) not null,
    Numero INT not null,
    Cidade VARCHAR(100) not null,
    Estado VARCHAR(50) not null,
    CEP VARCHAR(9) not null
);
CREATE TABLE Manutencao (
    IDManutencao INT AUTO_INCREMENT PRIMARY KEY not null,
    PlacaVeiculo VARCHAR(7) not null,
    DataInicio DATE not null,
    DataTermino DATE not null,
    Custos DECIMAL(10,2) not null,
    FOREIGN KEY (PlacaVeiculo) REFERENCES Veiculo(Placa)
);
CREATE TABLE AtividadeManutencao (
    IDAtividade INT AUTO_INCREMENT PRIMARY KEY not null,
    IDManutencao INT not null,
    DescricaoAtividade TEXT not null,
    Data DATE not null,
    Hora TIME not null,
    FOREIGN KEY (IDManutencao) REFERENCES Manutencao(IDManutencao)
);
CREATE TABLE Locacao (
    CPFCliente VARCHAR(11) not null,
    PlacaVeiculo VARCHAR(10) not null,
    DataInicial DATE not null,
    DataFinal DATE not null,
    ValorPago DECIMAL(10,2) not null,
    PRIMARY KEY (CPFCliente, PlacaVeiculo),
    FOREIGN KEY (CPFCliente) REFERENCES Cliente(CPF),
    FOREIGN KEY (PlacaVeiculo) REFERENCES Veiculo(Placa)
);

 