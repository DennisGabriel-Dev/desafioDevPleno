class UsersController < ApplicationController
  skip_before_action :authorized, only: %i[create]

  # POST /users
  def create
    user = User.new(user_params)
    if user.save
      # user.add_role(UserRoles::SHOPKEEPER)
      Shopkeeper.create(user: )
      token = encode_token(user_id: user.id)
      render json: {user: { token: token }}, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.expect(user: [ :email, :password ])
    end
end
