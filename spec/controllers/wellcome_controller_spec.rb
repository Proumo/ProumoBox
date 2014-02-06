require 'spec_helper'

describe WellcomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should_not be_success
    end
  end

end
