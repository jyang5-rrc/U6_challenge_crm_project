class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  # retrieve customer data and order by full_name
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ''])
  end

end
