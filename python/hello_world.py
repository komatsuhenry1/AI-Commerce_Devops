import mysql.connector

connection = mysql.connector.connect(
    user='root', password='root', host='mysql', port="3306", database='AquaMarineTables'
)
print("DB conectado!")

cursor = connection.cursor()

# Inserção de dados na tabela Users
insert_users_query = '''
INSERT INTO Users(user_id, user_name, user_email, user_password, user_cpf, user_type, user_adress)
VALUES (%s, %s, %s, %s, %s, %s, %s)
'''
user_values = [
    (6, 'Lucas Martins', 'lucas.martins@example.com', 'senha987', '67890123456', 'user', 'Rua Nova, 789'),
    (7, 'Fernanda Alves', 'fernanda.alves@example.com', 'senha654', '78901234567', 'user', 'Avenida Velha, 456')
]
for values in user_values:
    cursor.execute(insert_users_query, values)
print("Dados inseridos na tabelas Users com sucesso!")

# Inserção de dados na tabela Report
insert_report_query = '''
INSERT INTO Report(report_id, report_date, report_description, report_status, report_severity, report_latitude, report_longitude)
VALUES (%s, %s, %s, %s, %s, %s, %s)
'''
report_values = [
    (6, '2024-06-01', 'descricao 6', 'pendente', 'média', -25.427, -49.273),
    (7, '2024-07-15', 'descricao 7', 'resolvido', 'alta', -3.717, -38.543)
]
for values in report_values:
    cursor.execute(insert_report_query, values)
print("Dados inseridos na tabelas Report com sucesso!")

# Inserção de dados na tabela CleaningEvent
insert_cleaning_event_query = '''
INSERT INTO CleaningEvent(event_id, event_date, event_description, report_longitude, report_latitude, report_description)
VALUES (%s, %s, %s, %s, %s, %s)
'''
cleaning_event_values = [
    (6, '2024-06-15', 'Mutirão de limpeza no parque', 105.123456, 45.123456, 'Recolhimento de resíduos e limpeza geral'),
    (7, '2024-07-20', 'Limpeza do lago', 106.654321, 44.987654, 'Coleta de materiais recicláveis e conscientização ambiental')
]
for values in cleaning_event_values:
    cursor.execute(insert_cleaning_event_query, values)
print("Dados inseridos na tabelas CleaningEvent com sucesso!")

connection.commit()

# Select * from Users
cursor.execute('SELECT * FROM Users')
users = cursor.fetchall()
print("Users:", users)

# Select * from Report
cursor.execute('SELECT * FROM Report')
reports = cursor.fetchall()
print("Reports:", reports)

# Select * from CleaningEvent
cursor.execute('SELECT * FROM CleaningEvent')
cleaning_events = cursor.fetchall()
print("CleaningEvents:", cleaning_events)

connection.close()
