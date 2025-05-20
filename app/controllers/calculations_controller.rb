class CalculationsController < ApplicationController
  def square_form
    render({ :template => "calculation_templates/square_form" })
  end

  def square_results
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2
    render({ :template => "calculation_templates/square_results" })
  end
end
