class SignaturesController < ApplicationController

skip_before_action :verify_authenticity_token, only: [:callbacks]

def callbacks
  render json: 'Hello API Event Received', status: 200
end

def new

end

def embedded_signature

end


def create
embedded_request = create_embedded_request(name: params[:name], email: params[:email])
@sign_url = get_sign_url(embedded_request)
# render :embedded_signature
end

private
def create_embedded_request(opts = {})
HelloSign.create_embedded_signature_request_with_template(
test_mode: 1,
client_id: 'b283237461ddc11a6425aa0fe2cf262d',
template_id:'358837018a0894b3c334c2994f29b0baf967d1b1',
subject: 'My first embedded signature request',
message: 'Awesome, right?',
signers: [
    {  email_address: opts[:email],
       name: opts[:name],
       role: 'Signer'     }    ] )
end

def get_sign_url(embedded_request)
  sign_id = get_first_signature_id(embedded_request)
  HelloSign.get_embedded_sign_url(signature_id: sign_id).sign_url
end

def get_first_signature_id(embedded_request)
  embedded_request.signatures[0].signature_id
end

end
