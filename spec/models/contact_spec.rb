require "rails_helper"

describe "Contact" do
  it "has a migration file", points: 1 do
    contact_migration_exists = false
    
    if ActiveRecord::Base.connection.table_exists? "contacts"
      contact_migration_exists = true
    end
    expect(contact_migration_exists).to be(true)
  end
end

describe "Contact" do
  it "is a table that exists", points: 2 do
    expect { Contact }.to_not raise_error(NameError)
  end
end

describe "Contact" do
  it "inherits from ApplicationRecord", points: 1 do
    expect(Contact).to be < ApplicationRecord
  end
end

describe "Contact" do
  it "has an attribute called first_name", points: 1 do
    new_contact = Contact.new
    expect(new_contact.attributes).to include("first_name")
  end
end
