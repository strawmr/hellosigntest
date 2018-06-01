client = HelloSign::Client.new :api_key => '4fa79428f9b0384b3712d04f17d4601c30be9f5a2d19cf776465fc83e92e38d2'
client.create_embedded_signature_request_with_template(
    :test_mode => 1,
    :client_id => 'e8bef94dd5a2e23cf4e32bfd9de4fd4a',
    :template_id => 'b0ee832977d76cc3240364e0287ccfd1544bb454',
    :subject => 'Embedded signature request',
    :message => 'Fill this in.',
    :signers => [
        {
            :email_address => 'mstraw@circuitclinical.com',
            :name => 'Mike',
            :role => 'subject'
        }
    ],
    :custom_fields => {
        :organization_name => 'Circuit Clinical',
        :shoot_type => 'Test Subject',
        :location =>'Buffalo, NY'
    }

)
client.get_embedded_sign_url :signature_id => '616629ed37f8588d28600be17ab5d6b7'
