class HomeController < ApplicationController
  def index

    test = TestService.new()
    
    # client = Savon.client(wsdl: "http://www.webservicex.net/uszip.asmx?WSDL")
 
    # response = client.call(:get_info_by_zip, message: {"USZip" => "90210"})
    @data = test.get_info_by_zip(90210)
    
  end
end
