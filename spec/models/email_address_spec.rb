require 'spec_helper'

describe EmailAddress do
  let(:valid_attributes) { {address: 'bob@example.com', person_id: 1} }
  let(:email_address) { EmailAddress.new(valid_attributes) }

  it 'is valid with correct attributes' do
    expect(email_address).to be_valid
  end

  it 'should have an address' do
    email_address.address = nil
    expect(email_address).to_not be_valid
  end

  it 'should have a person' do
    email_address.person_id = nil
    expect(email_address).to_not be_valid
  end

end
