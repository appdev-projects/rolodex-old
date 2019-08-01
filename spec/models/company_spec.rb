require "rails_helper"

describe "Company" do
  it "has a migration file", points: 1 do
    all_migration_files = Dir["db/migrate/*.rb"]
    company_migrations_exists = false
    
    all_migration_files.each do |file|
      file_content = open(file).read
      file_content_words = file_content.split
      if file_content.count(":companies") > 0
        company_migrations_exists = true
      end
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
    new_company.name = "Butamax"
    expect(new_company).to have_attributes({ :name => "Butamax" })
  end
end
