class PaymentsController < ApplicationController
  def index
    @customer = Customer.new(customer_params)
    @customer.shopkeeper_id = @user.shopkeeper.id
    if @customer.save
      render json: {response: "customer criado com sucesso!"}, status: :created
    else
      render json: {response: @customer.errors}, status: 422
    end
  end


  def customer_params
    params.expect(customer: [:name, :email, :phone])
  end
end
