# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  founded_on        :date
#  industry          :string
#  last_year_revenue :integer
#  name              :string
#  structure         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require "rails_helper"

describe "Company" do
  it "has a migration file", points: 1 do
    all_migration_files = Dir["db/migrate/*.rb"]
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
    p new_company.attributes
    expect(new_company.attributes).to include("name")
  end
end
