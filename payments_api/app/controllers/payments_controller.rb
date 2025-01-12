class PaymentsController < ApplicationController
  attr_reader :seller
  before_action :set_seller

  def index
    customer = Customer.create_with(seller: ).find_or_create_by(customer_params)
    binding.pry
    @payment = Payment.create(customer: , seller: , value: checkout_params[:checkout][:value])
    if customer.persisted?
      render json: {response: "customer criado/encontrado com sucesso!"}, status: :created
    else
      render json: {response: customer.errors}, status: 422
    end
  end

  private

  def set_seller
    @seller = @user.seller
  end

  def customer_params
    params.expect(customer: [:name, :email, :phone, :document])
  end

  def checkout_params
    params.except(checkout: [:value])
  end
end
