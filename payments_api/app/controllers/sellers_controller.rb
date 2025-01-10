class SellersController < UsersController
  before_action :set_shopkeeper
  attr_reader :shopkeeper
  def create_seller
    unless shopkeeper.present?
      render json: { error: "Shopkeeper not found" }, status: :unprocessable_entity
      return
    end

    user = User.new(email: user_params[:email], password: user_params[:password])
    if user.save
      seller = shopkeeper.sellers.build(user: user, commission: user_params[:seller][:commission])
      if seller.save
        token = encode_token(user_id: user.id)
        render json: { user: { token: token } }, status: :created
      else
        user.destroy
        render json: seller.errors, status: :unprocessable_entity
      end
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def set_shopkeeper
    @shopkeeper = @user.shopkeeper
  end


  def user_params
    params.expect(user: [ :email, :password, seller: [:commission]])
  end
end
