require "rails_helper"

describe "Contact" do
  it "is a table that exists" do
    expect { Contact }.to_not raise_error(NameError)
  end
end
