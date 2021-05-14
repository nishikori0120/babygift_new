class CardsController < ApplicationController
  def new
  end

  def create
    Stripe.api_key = ENV["STRIPE_TEST_SECRET_KEY"]
    customer = Stripe::Customer.create(
    description: 'test',
    card: params[:card_token]
    )

     card = Card.new( # トークン化されたカード情報を保存する
      card_token: params[:card_token], # カードトークン
      customer_token: customer.id, # 顧客トークン
      user_id: current_user.id # ログインしているユーザー
    )
    if card.save
     redirect_to root_path
   else
     render :'new' # カード登録画面
   end
  end

end
