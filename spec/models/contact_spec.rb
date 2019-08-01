require "rails_helper"

describe "Contact" do
  it "has a migration file", points: 1 do
    array_of_filenames_that_include_contact = Dir["db/migrate/*contact*.rb"]
    first_migration = array_of_filenames_that_include_contact.first
    expect(File.exists?(first_migration)).to be(true)
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
    new_contact.first_name = "Hashim"
    expect(new_contact).to have_attributes({ :first_name => "Hashim" })
    expect { new_contact.first_name }.to_not raise_error(NoMethodError)
  end
end
