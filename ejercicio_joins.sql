create view v_clients_accounts as select clients.id, clients.first_name,
    clients.last_name, clients.email, accounts.account_no, accounts.balance
    from clients left join accounts on clients.id = accounts.client_id;

create view v_accounts_type as select accounts.account_no, accounts.client_id, account_types.name 
    from account_types left join accounts on accounts."type" = account_types.id ;

create view v_transactions_detail as select transactions.id, transactions.amount, 
    transactions_types."name"     
    from transactions_types right join transactions on transactions_types.id = transactions.transaction_type;

create view v_transations_types_detail as select transactions.id, transactions.amount, 
    transactions_types."name" 
    from transactions right join transactions_types on transactions.transaction_type = transactions_types.id;
