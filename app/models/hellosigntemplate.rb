client = HelloSign::Client.new :api_key => '4fa79428f9b0384b3712d04f17d4601c30be9f5a2d19cf776465fc83e92e38d2'
client.create_embedded_signature_request_with_template(
    :test_mode => 1,
    :client_id => 'b283237461ddc11a6425aa0fe2cf262d',
    :template_id => 'a2c3a965a6145dbca91854b04057017b3ea53314',
    :subject => 'My First embedded signature request with a reusable form',
    :message => 'Awesome, right?',
    :signers => [
        {
            :email_address => 'mike@example.com',
            :name => 'Mike',
            :role => 'Signer'
        }
    ]
)

client.get_embedded_sign_url :signature_id => '78caf2a1d01cd39cea2bc1cbb340dac3'
