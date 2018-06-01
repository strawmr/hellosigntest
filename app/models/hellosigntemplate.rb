client = HelloSign::Client.new :api_key => '4fa79428f9b0384b3712d04f17d4601c30be9f5a2d19cf776465fc83e92e38d2'
client.create_embedded_signature_request_with_template(
    :test_mode => 1,
    :client_id => 'b283237461ddc11a6425aa0fe2cf262d',
    :template_id => 'b0ee832977d76cc3240364e0287ccfd1544bb454',
    :subject => 'My First embedded signature request with a reusable form',
    :message => 'Awesome, right?',
    :signers => [
        {
            :email_address => 'jack@example.com',
            :name => 'Jack',
            :role => 'Manager'
        },
        {
            :email_address => 'jill@example.com',
            :name => 'Jill',
            :role => 'Employee'
        }
    ]
)
