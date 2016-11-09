class HomeController < ApplicationController
  def index
    test = TestService.new()
    @data = test.get_info_by_zip(90210)
  end
end
