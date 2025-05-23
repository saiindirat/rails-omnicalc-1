class CalculationsController < ApplicationController
  def square_form
    render({ :template => "calculator_templates/square_form" })
  end

  def square
    @num = params.fetch("number").to_f
    @result = @num ** 2
    render({ :template => "calculator_templates/square_results" })
  end

  def square_root_form
    render({ :template => "calculator_templates/square_root_form" })
  end

  def square_root
    @num = params.fetch("number").to_f
    @result = Math.sqrt(@num)
    render({ :template => "calculator_templates/square_root_results" })
  end

  def payment_form
    render({ :template => "calculator_templates/payment_form" })
  end

  def payment
    apr = params.fetch("apr").to_f
    years = params.fetch("years").to_i
    principal = params.fetch("principal").to_f

    r = apr / 100 / 12
    n = years * 12
    @monthly_payment = (r * principal) / (1 - (1 + r) ** -n)

    @apr = apr
    @years = years
    @principal = principal

    render({ :template => "calculator_templates/payment_results" })
  end

  def random_form
    render({ :template => "calculator_templates/random_form" })
  end

  def random
    min = params.fetch("min").to_i
    max = params.fetch("max").to_i
    @random_number = rand(min..max)
    render({ :template => "calculator_templates/random_results" })
  end
end
