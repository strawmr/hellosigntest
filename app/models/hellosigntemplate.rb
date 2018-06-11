client = HelloSign::Client.new :api_key => '4fa79428f9b0384b3712d04f17d4601c30be9f5a2d19cf776465fc83e92e38d2'
client.get_embedded_sign_url :signature_id => '50e3542f738adfa7ddd4cbd4c00d2a8ab6e4194b'
client.create_embedded_signature_request_with_template(
    :test_mode => 1,
    :client_id => 'b283237461ddc11a6425aa0fe2cf262d',
    :template_id => '358837018a0894b3c334c2994f29b0baf967d1b1',
    :subject => 'My First embedded signature request with a reusable form',
    :message => 'Awesome, right?',
    :signers => [
        {
            :email_address => 'mstrawjr@gmail.com',
            :name => 'Mike',
            :role => 'Signer'
        }
    ]
)

