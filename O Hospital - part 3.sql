Create database hospital;
use hospital;


CREATE TABLE `especialidade` (
  `id_especialidade` int(11) primary key auto_increment,
  `nome_especialidade` varchar(510)
);


INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (1 , 'Clinico Geral');
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (2 , 'Dermatologista');
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (3 , 'Pediatra');
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (4 , 'Ginecologista');
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (5 , 'Ortopedista');
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (6 , 'Gastrenterologia');
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES (7 , 'Oncologista');


CREATE TABLE `convenio` (
  `id_convenio` int(11) primary key auto_increment,
  `nome_convenio` varchar(510),
  `CNPJ_convenio` bigint(14),
  `tempo_carencia` varchar(100)
);

INSERT INTO convenio(id_convenio, nome_convenio, cnpj_convenio, tempo_carencia) VALUES (1, 'Ana', '9852143614751', '30 dias');
INSERT INTO convenio(id_convenio, nome_convenio, cnpj_convenio, tempo_carencia) VALUES (2, 'Bem-estar', '47810596327845', '24 horas');
INSERT INTO convenio(id_convenio, nome_convenio, cnpj_convenio, tempo_carencia) VALUES (3, 'Cuide-se', '36149520784195', '24 das');
INSERT INTO convenio(id_convenio, nome_convenio, cnpj_convenio, tempo_carencia) VALUES (4, 'Saude', '29814536710254', '180 dias');


CREATE TABLE `telefone` (
  `id_telefone` int(11) primary key auto_increment,
  `ddd` int(2),
  `numero` bigint(11)
);

ALTER TABLE telefone ADD medico_id int(11);
ALTER TABLE telefone ADD paciente_id int(11);

INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (1, 11, 987654321, 1, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (2, 11, 876543210, 2, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (3, 11, 765432109, 3, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (4, 11, 654321098, 4, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (5, 11, 543210987, 5, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (6, 11, 432109876, 6, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (7, 11, 321098765, 7, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (8, 11, 210987654, 8, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (9, 11, 109876543, 9, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (10, 11, 109876534, 10, null);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (11, 11, 1234567890, null, 1);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (12, 11, 9876543210, null, 2);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (13, 11, 6543210987, null, 3);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (14, 11, 8901234567, null, 4);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (15, 11, 5678901234, null, 5);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (16, 11, 9012345678, null, 6);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (17, 11, 1234567890, null, 1);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (18, 11, 3456789012, null, 7);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (19, 11, 5678901234, null, 8);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (20, 11, 7890123456, null, 9);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (21, 11, 9012345678, null, 10);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (22, 11, 2345678901, null, 11);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (23, 11, 4567890123, null, 12);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (24, 11, 6789012345, null, 13);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (25, 11, 8901234567, null, 14);
INSERT INTO telefone (id_telefone, ddd, numero, medico_id, paciente_id) VALUES (26, 11, 9876541234, null, 15);

CREATE TABLE `endereco` (
  `id_endereco` int(11) primary key auto_increment,
  `CEP` int(8),
  `estado` varchar(100),
  `cidade` varchar(100),
  `bairro` varchar(100),
  `rua` varchar(100),
  `numero` int(11),
  `complemento` varchar(255)
);

INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (1, 01001000, 'São Paulo', 'São Paulo', 'Sé', 'Praça da Sé', 1, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (2, 01501001, 'São Paulo', 'São Paulo', 'Bela Vista', 'Avenida Paulista', 1000, 'Conjunto 1501');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (3, 02001000, 'São Paulo', 'São Paulo', 'Vila Guilherme', 'Rua São Paulo', 200, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (4, 02501002, 'São Paulo', 'São Paulo', 'Bom Retiro', 'Rua José Paulino', 300, 'Loja 302');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (5, 03001000, 'São Paulo', 'São Paulo', 'Brás', 'Avenida Rangel Pestana', 400, 'Sala 401');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (6, 03501003, 'São Paulo', 'São Paulo', 'Penha', 'Rua Dr. João Ribeiro', 500, 'Apt. 502');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (7, 04001000, 'São Paulo', 'São Paulo', 'Moema', 'Avenida Ibirapuera', 600, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (8, 04501004, 'São Paulo', 'São Paulo', 'Itaim Bibi', 'Rua Joaquim Floriano', 700, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (9, 05001000, 'São Paulo', 'São Paulo', 'Perdizes', 'Rua Cardoso de Almeida', 800, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (10, 05501005, 'São Paulo', 'São Paulo', 'Lapa', 'Avenida Ermano Marchetti', 900, 'Conjunto 902');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (11, 06001000, 'São Paulo', 'São Paulo', 'Pinheiros', 'Rua dos Pinheiros', 1000, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (12, 06501006, 'São Paulo', 'São Paulo', 'Alphaville', 'Alameda Rio Negro', 1100, 'Conjunto 1101');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (13, 07001000, 'São Paulo', 'São Paulo', 'Liberdade', 'Rua Galvão Bueno', 1200, '');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (14, 07501007, 'São Paulo', 'São Paulo', 'Tatuapé', 'Rua Serra de Japi', 1300, 'Apt. 1301');
INSERT INTO endereco (id_endereco, CEP, estado, cidade, bairro, rua, numero, complemento) VALUES (15, 08001000, 'São Paulo', 'São Paulo', 'Brás', 'Avenida Celso Garcia', 1400, 'Loja 1401');


CREATE TABLE `medico` (
  `id_medico` int(11) primary key auto_increment,
  `nome_medico` varchar(510),
  `CPF_medico` bigint(11),
  `email_medico` varchar(510),
  `especialidade_id` int(11),
  `CRM` varchar(13),
  `cargo_medico` varchar(50),
  `telefone_id` int(11)
);

ALTER TABLE `medico` ADD FOREIGN KEY (`telefone_id`) REFERENCES `telefone` (`id_telefone`);
ALTER TABLE `medico` ADD FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`id_especialidade`);

INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (1, 'João Silva', '12345678901', 'joao.silva@example.com', '1', '12345', 'Cardiologia', '1');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (2, 'Maria Santos', '23456789012', 'maria.santos@example.com', '2', '23456', 'Dermatologia', '2');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (3, 'Pedro Almeida', '34567890123', 'pedro.almeida@example.com', '3', '34567', 'Pediatria', '3');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (4, 'Ana Oliveira', '45678901234', 'ana.oliveira@example.com', '4', '45678', 'Ginecologia', '4');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (5, 'Carlos Rodrigues', '56789012345', 'carlos.rodrigues@example.com', '5', '56789', 'Ortopedia', '5');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (6, 'Mariana Costa', '67890123456', 'mariana.costa@example.com',  '4', '67890', 'Oftalmologia', '6');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (7, 'Ricardo Pereira', '78901234567', 'ricardo.pereira@example.com', '2', '78901', 'Urologia', '7');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (8, 'Luisa Santos', '89012345678', 'luisa.santos@example.com', '6', '89012', 'Psiquiatria', '8');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (9, 'Felipe Oliveira', '90123456789', 'felipe.oliveira@example.com', '7', '90123', 'Oncologia', '9');
INSERT INTO medico (id_medico, nome_medico, CPF_medico, email_medico, especialidade_id, CRM, cargo_medico, telefone_id) VALUES (10, 'Isabela Fernandes', '98765432109', 'isabela.fernandes@example.com', '1', '98765', 'Neurologia', '10');


CREATE TABLE `paciente` (
  `id_paciente` int(11) primary key auto_increment,
  `nome_paciente` varchar(510),
  `dt_nasc_paciente` date,
  `endereco_id` int(11),
  `RG_paciente` bigint(7),
  `CPF_paciente` bigint(11),
  `telefone_id` int(10),
  `email` varchar(510),
  `convenio_id` int(11)
  );
  
  
ALTER TABLE `paciente` ADD FOREIGN KEY (`telefone_id`) REFERENCES `telefone` (`id_telefone`);
ALTER TABLE `paciente` ADD FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id_endereco`);
ALTER TABLE `paciente` ADD FOREIGN KEY (`convenio_id`) REFERENCES `convenio` (`id_convenio`);


INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (1, 'João Silva', '1990-01-01', 1, 1234567, 12345678901, 11, 'joao.silva@example.com', 1);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (2, 'Maria Santos', '1985-05-10', 2, 7654321, 98765432109, 12, 'maria.santos@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (3, 'Pedro Souza', '1992-12-15', 3, 9876543, 65432109876, 13, 'pedro.souza@example.com', 2);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (4, 'Ana Oliveira', '1988-08-20', 4, 3456789, 89012345678, 14, 'ana.oliveira@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (5, 'Fernanda Costa', '1995-04-25', 5, 5678901, 56789012345, 15, 'fernanda.costa@example.com', 3);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (6, 'Lucas Almeida', '1991-03-12', 6, 7890123, 90123456789, 16, 'lucas.almeida@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (7, 'Mariana Rocha', '1994-11-05', 7, 9012345, 12345678901, 17, 'mariana.rocha@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (8, 'Rafaela Cardoso', '1987-06-08', 8, 2345678, 34567890123, 18, 'rafaela.cardoso@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (9, 'Gustavo Fernandes', '1993-09-17', 9, 4567890, 56789012345, 19, 'gustavo.fernandes@example.com', 4);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (10, 'Carolina Santos', '1998-07-29', 10, 6789012, 78901234567, 20, 'carolina.santos@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (11, 'Daniel Costa', '1996-02-03', 11, 8901234, 90123456789, 21, 'daniel.costa@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (12, 'Larissa Pereira', '1990-10-18', 12, 1234567, 23456789012, 22, 'larissa.pereira@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (13, 'Ricardo Alves', '1989-09-21', 13, 7654321, 45678901234, 23, 'ricardo.alves@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (14, 'Amanda Lima', '1997-06-04', 14, 9876543, 67890123456, 24, 'amanda.lima@example.com', null);
INSERT INTO paciente (id_paciente, nome_paciente, dt_nasc_paciente, endereco_id, RG_paciente, CPF_paciente, telefone_id, email, convenio_id) VALUES (15, 'Rodrigo Gonçalves', '1991-01-15', 15, 3456789, 89012345678, 25, 'rodrigo.goncalves@example.com', 4);


CREATE TABLE `consulta` (
  `id_consulta` int(11) primary key auto_increment,
  `horario_consulta` time,
  `data_consulta` date,
  `medico_id` int(11),
  `paciente_id` int(11),
  `especialidade_id` int(11),
  `valor_consulta` int(30),
  `convenio_id` int(11)
);

ALTER TABLE `consulta` ADD FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id_paciente`);
ALTER TABLE `consulta` ADD FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id_medico`);
ALTER TABLE `consulta` ADD FOREIGN KEY (`convenio_id`) REFERENCES `convenio` (`id_convenio`);
ALTER TABLE `consulta` ADD FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`id_especialidade`);

INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (1, '09:00:00', '2015-02-05', 10, 1, 1, 100, 1);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (2, '14:30:00', '2015-03-12', 4, 2, 4, 80, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (3, '10:45:00', '2015-05-20', 5, 3, 5, 60, 2);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (4, '11:15:00', '2015-07-02', 1, 4, 1, 120, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (5, '16:00:00', '2015-09-08', 9, 5, 7, 90, 3);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (6, '13:30:00', '2016-01-15', 1, 6, 1, 70, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (7, '08:45:00', '2016-04-21', 3, 7, 3, 110, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (8, '15:20:00', '2016-07-10', 4, 8, 4, 100, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (9, '10:30:00', '2016-09-27', 7, 9, 2, 80, 4);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (10, '14:00:00', '2017-03-05', 6, 10, 4, 70, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (11, '09:30:00', '2017-06-11', 7, 11, 2, 120, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (12, '13:45:00', '2017-09-17', 6, 12, 4, 90, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (13, '15:10:00', '2018-02-25', 2, 13, 2, 80, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (14, '11:40:00', '2018-06-03', 8, 14, 6, 110, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (15, '10:00:00', '2018-08-19', 10, 15, 1, 100, 4);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (16, '16:30:00', '2019-01-07', 9, 3, 7, 70, 2);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (17, '08:50:00', '2019-05-15', 3, 7, 3, 130, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (18, '14:15:00', '2020-02-20', 2, 9, 2, 90, 4);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (19, '11:20:00', '2021-07-01', 8, 12, 6, 80, null);
INSERT INTO consulta (id_consulta, horario_consulta, data_consulta, medico_id, paciente_id, especialidade_id, valor_consulta, convenio_id) VALUES (20, '15:50:00', '2021-12-12', 5, 15, 5, 70, 4);


CREATE TABLE `receita` (
  `id_receita` int(11) primary key auto_increment,
  `medicamento` varchar(100),
  `quantidade` int(20),
  `orientacao` varchar(510),
  `consulta_id` int(11)
);

ALTER TABLE `receita` ADD FOREIGN KEY (`consulta_id`) REFERENCES `consulta` (`id_consulta`);

INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (1, 'Paracetamol', 2, 'Tomar 1 comprimido a cada 6 horas', 1);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (2, 'Ibuprofeno', 1, 'Tomar 1 comprimido a cada 8 horas', 3);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (3, 'Amoxicilina', 3, 'Tomar 1 comprimido a cada 12 horas', 2);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (4, 'Omeprazol', 1, 'Tomar 1 comprimido antes do café da manhã', 4);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (5, 'Dipirona', 2, 'Tomar 1 comprimido a cada 6 horas, se necessário', 5);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (6, 'Ranitidina', 1, 'Tomar 1 comprimido antes do jantar', 6);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (7, 'Cloridrato de Ciprofloxacino', 1, 'Tomar 1 comprimido a cada 12 horas', 7);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (8, 'Dexametasona', 2, 'Tomar 1 comprimido pela manhã e 1 à noite', 8);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (9, 'Sulfametoxazol + Trimetoprima', 1, 'Tomar 1 comprimido a cada 24 horas', 9);
INSERT INTO receita (id_receita, medicamento, quantidade, orientacao, consulta_id) VALUES (10, 'Metformina', 1, 'Tomar 1 comprimido após as refeições', 10);



CREATE TABLE `enfermeiro` (
  `id_enfermeiro` int(11) primary key auto_increment,
  `nome_enfermeiro` varchar(510),
  `CPF_enfermeiro` bigint(11),
  `CRE` int(10)
);

INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (1, 'Ana Silva', 12345678901, '12345');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (2, 'Carlos Santos', 23456789012, '23456');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (3, 'Mariana Almeida', 34567890123, '34567');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (4, 'Pedro Oliveira', 45678901234, '45678');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (5, 'Camila Rodrigues', 56789012345, '56789');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (6, 'Lucas Costa', 67890123456, '67890');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (7, 'Juliana Pereira', 78901234567, '78901');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (8, 'Rafael Santos', 89012345678, '89012');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (9, 'Isabela Oliveira', 90123456789, '90123');
INSERT INTO enfermeiro (id_enfermeiro, nome_enfermeiro, CPF_enfermeiro, CRE) VALUES (10, 'Gustavo Fernandes', 98765432109, '98765');


CREATE TABLE `tipo_quarto` (
  `id_tipo` int(11) primary key auto_increment,
  `descricao` varchar(100),
  `valor_diario` int(5)
);

INSERT INTO tipo_quarto (id_tipo, descricao, valor_diario) VALUES (1, 'Enfermaria', 100.00);
INSERT INTO tipo_quarto (id_tipo, descricao, valor_diario) VALUES (2, 'Apartamento', 500.00);
INSERT INTO tipo_quarto (id_tipo, descricao, valor_diario) VALUES (3, 'Quarto duplo', 200.00);


CREATE TABLE `quarto` (
  `id_quarto` int(11) primary key auto_increment,
  `numeracao` int(3),
  `tipo_quarto_id` int(11)
);

ALTER TABLE `quarto` ADD FOREIGN KEY (`tipo_quarto_id`) REFERENCES `tipo_quarto` (`id_tipo`);

INSERT INTO quarto (id_quarto, numeracao, tipo_quarto_id) VALUES (1, '101', 3);
INSERT INTO quarto (id_quarto, numeracao, tipo_quarto_id) VALUES (2, '201', 1);
INSERT INTO quarto (id_quarto, numeracao, tipo_quarto_id) VALUES (3, '301', 2);
INSERT INTO quarto (id_quarto, numeracao, tipo_quarto_id) VALUES (4, '102', 3);


CREATE TABLE `internacoes` (
  `id_internacao` int(11) primary key auto_increment,
  `data_entrada` int(8),
  `prevista_alta` int(8),
  `efetiva_alta` int(8),
  `medico_id` int(11),
  `paciente_id` int(11),
  `enfermeiro_id` int(11),
  `quarto_id` int(11)
);

ALTER TABLE `internacoes` ADD FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id_medico`);
ALTER TABLE `internacoes` ADD FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id_paciente`);
ALTER TABLE `internacoes` ADD FOREIGN KEY (`enfermeiro_id`) REFERENCES `enfermeiro` (`id_enfermeiro`);
ALTER TABLE `internacoes` ADD FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id_quarto`);

INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (1, 2016-01-01, 2016-01-10, 2016-01-09, 1, 1, 1, 1);
INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (2, 2017-05-15, 2017-05-25, 2017-05-24, 3, 1, 2, 2);
INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (3, 2018-04-02, 2018-04-10, 2018-04-11, 2, 2, 3, 3);
INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (4, 2019-05-20, 2019-05-30, 2019-05-29, 4, 2, 4, 1);
INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (5, 2015-07-10, 2015-07-20, 2015-07-19, 5, 3, 5, 2);
INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (6, 2019-08-15, 2019-08-25, 2019-08-24, 6, 4, 6, 3);
INSERT INTO internacoes (id_internacao, data_entrada, prevista_alta, efetiva_alta, medico_id, paciente_id, enfermeiro_id, quarto_id) VALUES (7, 2020-10-05, 2020-10-15, 2020-10-14, 7, 5, 7, 1);

