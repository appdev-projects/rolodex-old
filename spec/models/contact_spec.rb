# == Schema Information
#
# Table name: contacts
#
#  id            :integer          not null, primary key
#  date_of_birth :date
#  first_name    :string
#  last_name     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

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
    expect { Contact }.to_not raise_error
  end
end

describe "Contact" do
  it "inherits from ApplicationRecord", points: 1 do
    expect(Contact).to be < ApplicationRecord
  end
end

describe "Contact" do
  it "has attr_accessor instance methods", points: 1 do
    new_contact = Contact.new
    new_contact.save
    expect { new_contact.first_name }.to_not raise_error
  end
end
