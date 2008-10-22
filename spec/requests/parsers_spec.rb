require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a parser exists" do
  request(resource(:parsers), :method => "POST", 
    :params => { :parser => {  }})
end

describe "resource(:parsers)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:parsers))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of speakers" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a parser exists" do
    before(:each) do
      @response = request(resource(:parsers))
    end
    
    it "has a list of parsers" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:parsers), :method => "POST", 
        :params => { :parser => {  }})
    end
    
    it "redirects to resource(:parsers)" do
    end
    
  end
end

