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
    array_of_filenames_that_include_companies = Dir["db/migrate/*companies*.rb"]
    first_migration = array_of_filenames_that_include_companies.first
    expect(File.exists?(first_migration)).to be(true)
  end
end

describe "Company" do
  it "is a table that exists", points: 2 do
    expect { Company }.to_not raise_error(NameError)
  end
end

describe "Company" do
  it "inherits from ApplicationRecord", points: 1 do
    expect(Company).to be < ApplicationRecord
  end
end

describe "Company" do
  it "has attr_accessor instance methods", points: 1 do
    new_company = Company.new
    expect { new_company.name }.to_not raise_error(NoMethodError)
  end
end
