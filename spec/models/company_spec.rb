require "rails_helper"

describe "Company" do
  it "has a migration file", points: 1 do
    array_of_filenames_that_include_company = Dir["db/migrate/*company*.rb"]
    first_migration = array_of_filenames_that_include_company.first
    expect(File.exists?(first_migration)).to be(true)
  end
end

describe "Company" do
  it "is a table that exists", points: 2 do
    expect{ Company }.to_not raise_error(NameError)
  end
end

describe "Company" do
  it "inherits from ApplicationRecord", points: 1 do
    expect(Company).to be < ApplicationRecord
  end
end

describe "Company" do
  it "has an attribute called `name`", points: 1 do
    new_company = Company.new
    new_company.name = "Butamax"
    expect(new_company).to have_attributes({ :name => "Butamax" })
  end
end
