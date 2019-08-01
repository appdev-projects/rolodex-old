require "rails_helper"

describe "Contact" do
  it "has a migration file" do
    array_of_filenames_that_include_contact = Dir["db/migrate/*contact*.rb"]
    first_migration = array_of_filenames_that_include_contact.first
    expect(File.exists?(first_migration)).to_not raise_error
  end
end

describe "Contact" do
  it "is a table that exists" do
    expect(Contact).to_not raise_error(NameError)
  end
end

describe "Contact" do
  it "inherits from ApplicationRecord" do
    expect(Contact).to be < ApplicationRecord
  end
end

describe "Contact" do
  it "has attr_accessor instance methods" do
    new_contact = Contact.new
    expect(new_contact.first_name).to_not raise_error(NoMethodError)
  end
end
