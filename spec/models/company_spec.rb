require 'spec_helper'

describe Company do
  let(:company) { Company.new(name: "Nike") }

  it 'is valid with valid attributes' do
    expect(company).to be_valid
  end

  it 'is not valid without name' do
    company.name = nil
    expect(company).to_not be_valid
  end
end
