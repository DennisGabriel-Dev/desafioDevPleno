class PagSegro::Credit < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    "teste mercado pago com services"
  end
end
