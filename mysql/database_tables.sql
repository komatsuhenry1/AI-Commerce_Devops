USE AquaMarineTables;

CREATE TABLE CleaningEvent(
    event_id INT,
    event_date DATE,
    event_description VARCHAR(200),
    report_longitude DECIMAL(10,6),
    report_latitude DECIMAL(10,6),
    report_description VARCHAR(200)
);

INSERT INTO CleaningEvent(event_id, event_date, event_description, report_longitude, report_latitude, report_description)
VALUES (1, '2024-01-06', 'Evento de limpeza no parque', 100.123456, 50.123456, 'Limpeza geral e recolhimento de lixo');

INSERT INTO CleaningEvent(event_id, event_date, event_description, report_longitude, report_latitude, report_description)
VALUES (2, '2024-02-14', 'Mutirão de limpeza na praia', 101.654321, 49.987654, 'Recolhimento de resíduos sólidos e conscientização');

INSERT INTO CleaningEvent(event_id, event_date, event_description, report_longitude, report_latitude, report_description)
VALUES (3, '2024-03-22', 'Limpeza do rio', 102.111111, 48.888888, 'Remoção de entulhos e limpeza das margens do rio');

INSERT INTO CleaningEvent(event_id, event_date, event_description, report_longitude, report_latitude, report_description)
VALUES (4, '2024-04-18', 'Limpeza lago', 103.222222, 47.777777, 'Coleta de materiais recicláveis e oficinas educativas');

INSERT INTO CleaningEvent(event_id, event_date, event_description, report_longitude, report_latitude, report_description)
VALUES (5, '2024-05-30', 'Limpeza praia', 104.333333, 46.666666, 'Limpeza de ruas e coleta de lixo eletrônico');


CREATE TABLE Users(
    user_id INT,
    user_name VARCHAR(60),
    user_email VARCHAR(100),
    user_password VARCHAR(40),
    user_cpf CHAR(11),
    user_type VARCHAR(40),
    user_adress VARCHAR(80)
);

INSERT INTO Users(user_id, user_name, user_email, user_password, user_cpf, user_type, user_adress)
VALUES (1, 'João Silva', 'joao.silva@example.com', 'senha123', '12345678901', 'admin', 'Rua das Flores, 123');

INSERT INTO Users(user_id, user_name, user_email, user_password, user_cpf, user_type, user_adress)
VALUES (2, 'Maria Oliveira', 'maria.oliveira@example.com', 'senha456', '23456789012', 'user', 'Avenida Brasil, 456');

INSERT INTO Users(user_id, user_name, user_email, user_password, user_cpf, user_type, user_adress)
VALUES (3, 'Pedro Souza', 'pedro.souza@example.com', 'senha789', '34567890123', 'user', 'Praça da Liberdade, 789');

INSERT INTO Users(user_id, user_name, user_email, user_password, user_cpf, user_type, user_adress)
VALUES (4, 'Ana Costa', 'ana.costa@example.com', 'senha321', '45678901234', 'moderator', 'Rua do Sol, 321');

INSERT INTO Users(user_id, user_name, user_email, user_password, user_cpf, user_type, user_adress)
VALUES (5, 'Carlos Lima', 'carlos.lima@example.com', 'senha654', '56789012345', 'user', 'Avenida Central, 654');


CREATE TABLE Report(
    report_id INT,
    report_date DATE,
    report_description VARCHAR(200),
    report_status VARCHAR(20),
    report_severity VARCHAR(20),
    report_latitude DECIMAL(10,6),
    report_longitude DECIMAL(10,6)
);

INSERT INTO Report(report_id, report_date, report_description, report_status, report_severity, report_latitude, report_longitude)
VALUES (1, '2024-01-01', 'descricao 1', 'pendente', 'alta', -23.550520, -46.633308);

INSERT INTO Report(report_id, report_date, report_description, report_status, report_severity, report_latitude, report_longitude)
VALUES (2, '2024-02-15', 'descricao 2', 'resolvido', 'baixa', -22.906847, -43.172896);

INSERT INTO Report(report_id, report_date, report_description, report_status, report_severity, report_latitude, report_longitude)
VALUES (3, '2024-03-20', 'descricao 3', 'em andamento', 'média', -19.916681, -43.934493);

INSERT INTO Report(report_id, report_date, report_description, report_status, report_severity, report_latitude, report_longitude)
VALUES (4, '2024-04-10', 'descricao 4', 'pendente', 'alta', -12.971399, -38.501632);

INSERT INTO Report(report_id, report_date, report_description, report_status, report_severity, report_latitude, report_longitude)
VALUES (5, '2024-05-25', 'descricao 5', 'resolvido', 'alta', -8.047562, -34.877);

