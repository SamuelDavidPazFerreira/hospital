# O_Hospital
Atividade de Banco de dados

Um pequeno hospital local busca desenvolver um novo sistema que atenda melhor às suas necessidades. Atualmente, parte da operação ainda se apoia em planilhas e arquivos antigos, mas espera-se que esses dados sejam transferidos para o novo sistema assim que ele estiver funcional. Neste momento, é necessário analisar com cuidado as necessidades desse cliente e sugerir uma estrutura de banco de dados adequada por meio de um Diagrama Entidade-Relacionamento.

## Parte 1 - Diagrama_1 

Analise a seguinte descrição e extraia dela os requisitos para o banco de dados:
O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Os médicos podem ser generalistas, especialistas ou residentes e têm seus dados pessoais cadastrados em planilhas digitais. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia. Alguns registros antigos ainda estão em formulário de papel, mas será necessário incluir esses dados no novo sistema.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.

![O hospital drawio](https://user-images.githubusercontent.com/105953740/235316805-5c706557-6cf6-430d-bfb8-3829b025d0ab.png)

## Continuação

O próximo  diagrama é uma versão mais detalhada de cada entidade do diagrama anterior

![O Hospital part 2 drawio](https://user-images.githubusercontent.com/105953740/235320141-129b9473-31d9-4673-a885-614b79d9b43d.png)

## Parte 2 - Diagrama_2 

No hospital, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos. 

Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados. 

As internações precisam ser vinculadas a quartos, com a numeração e o tipo. 

Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).

Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).

A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.

![O Hospital part 2](https://user-images.githubusercontent.com/105953740/235325879-9165d2c1-e287-43c3-ad53-fcd468625e3b.png)

## Parte 3 - Alimentando o Banco de Dados

Com o banco de dados para o sistema hospitalar completamente montado, é necessário incluir dados para realizar os devidos testes e validar sua viabilidade quanto ao sistema. Nesta etapa, também é importante realizar a separação de alguns scripts iniciais para o banco, com os dados que serão necessários a um povoamento inicial do sistema.

### Jogando nas regras que você criou:

Crie scripts de povoamento das tabelas desenvolvidas na atividade anterior
Observe as seguintes atividades: 

- Inclua ao menos dez médicos de diferentes especialidades.

- Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).

- Inclua ao menos 15 pacientes.

- Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.

- Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.

- Criar entidade de relacionamento entre médico e especialidade. 

- Criar Entidade de Relacionamento entre internação e enfermeiro. 

- Arrumar a chave estrangeira do relacionamento entre convênio e médico.

- Criar entidade entre internação e enfermeiro.

- Colocar chaves estrangeira dentro da internação (Chaves Médico e Paciente).

- Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.

- Considerando que “a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria”, inclua ao menos esses três tipos com valores diferentes.

- Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.

- Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.

## Parte 4 - Alterando o banco de dados


Não... Não acabou... 

Um banco de dados pode sofrer alterações ao longo da sua concepção e do seu desenvolvimento. Nesse momento devemos nos preparar para atualizar nossas estratégias.

### Mãos a Obra. 

Pensando no banco que já foi criado para o Projeto do Hospital, realize algumas alterações nas tabelas e nos dados usando comandos de atualização e exclusão:

Crie um script que adicione uma coluna `“em_atividade”` para os médicos, indicando se ele ainda está atuando no hospital ou não. 

Crie um script para atualizar ao menos dois médicos como inativos e os demais em atividade.


ALTER TABLE medico ADD em_atividade varchar(100);

UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 1;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 2;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 3;
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 4;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 5;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 6;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 7;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 8;
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 9;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 10;


## Parte 5 - Consultas

Uma vez que o banco estiver bem estruturado e desenhado, é possível realizar testes, simulando relatórios ou telas que o sistema possa necessitar. A tarefa consiste em criar consultas que levem aos resultados esperados.

### Mãos a obra

Crie um script e nele inclua consultas que retornem:

1. Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.


select *, AVG(valor_consulta) from consulta group by year(data_consulta) = 2020 having convenio_id;


2. Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.


select * from internacoes where prevista_alta > efetiva_alta;


3. Receituário completo da primeira consulta registrada com receituário associado.


select * from consulta inner join receita on consulta.id_consulta = receita.consulta_id inner join paciente on paciente.id_paciente = consulta.paciente_id order by receita.id_receita limit 1;


4. Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).


select *, MAX(valor_consulta), MIN(valor_consulta) from consulta group by convenio_id is null;


5. Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.


select *, DATEDIFF(efetiva_alta, data_entrada) dias_internado, tipo_quarto.valor_diario, DATEDIFF(efetiva_alta, data_entrada) * tipo_quarto.valor_diario valor_total from internacoes inner join quarto on internacoes.quarto_id = quarto.id_quarto inner join tipo_quarto on quarto.tipo_quarto_id = tipo_quarto.id_tipo;


6. Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.


select i.id_internacao, i.data_entrada, q.numeracao from internacoes i inner join quarto q on q.id_quarto = i.quarto_id where q.tipo_quarto_id = 2; 


7. Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.


select p.nome_paciente, c.data_consulta, e.nome_especialidade from consulta c inner join paciente p on p.id_paciente = c.paciente_id inner join especialidade e on e.id_especialidade = c.especialidade_id where c.especialidade_id <> 1 and year(c.data_consulta) - year(p.dt_nasc_paciente) < 19 and year(c.data_consulta) - year(p.dt_nasc_paciente) > 0 
order by c.data_consulta ;


8.Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.


select p.nome_paciente, m.nome_medico, i.data_entrada, q.id_quarto from internacoes i inner join medico m on m.id_medico = i.medico_id inner join paciente p on p.id_paciente = i.paciente_id inner join quarto q on q.id_quarto = i.quarto_id where q.tipo_quarto_id = 1 and m.especialidade_id = 6;


9. Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.


select m.nome_medico, m.crm, count(c.medico_id) as 'Qntd de consultas' from medico m inner join consulta c on c.medico_id = m.id_medico group by c.medico_id;


10. Todos os médicos que tenham "Gabriel" no nome.


select * from medico where nome_medico like '%Gabriel%';


11. Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.


select enf.nome_enfermeiro, enf.cre, COUNT(p.enfermeiro_id) as Participacao from enfermeiro enf inner join internacoes p on p.enfermeiro_id = enf.id_enfermeiro group by enf.id_enfermeiro having Participacao > 1;
