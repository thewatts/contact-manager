require 'spec_helper'

describe EmailAddress do
  let(:valid_attributes) { {address: 'bob@example.com', contact_id: 1,
                            contact_type: 'Person'} }
  let(:email_address) { EmailAddress.new(valid_attributes) }

  it 'is valid with correct attributes' do
    expect(email_address).to be_valid
  end

  it 'should have an address' do
    email_address.address = nil
    expect(email_address).to_not be_valid
  end

  it 'must be linked to a contact' do
    email_address.contact_id = nil
    expect(email_address).to_not be_valid
  end

end
