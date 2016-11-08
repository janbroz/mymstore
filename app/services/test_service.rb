class TestService

  def initialize()
    @client = Savon.client(wsdl: "http://www.webservicex.net/uszip.asmx?WSDL")
  end
  
  def get_info_by_zip(zip)
    response = @client.call(:get_info_by_zip, message: {"USZip" => "90210"})
  end

end
