require "rails_helper"

describe "Company" do
  it "has a underlying table", points: 1 do
    company_migrations_exists = false
    
    if ActiveRecord::Base.connection.table_exists? "companies"
      company_migrations_exists = true
    end
    expect(company_migrations_exists).to be(true)
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
  it "has an attribute called name", points: 1 do
    new_company = Company.new
    expect(new_company.attributes).to include("name")
  end
end
