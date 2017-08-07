class PagesController < ApplicationController
  # skip_before_action :authenticate_user!

  def home
    @today = Date.today
    @current_time = Time.now
  end

  def team
    @members = ["Abrar Saad", "Amira Buz Khallouf", "Genki Takahashi", "Mohamad Alzoubi", "Finn Pedersen"]
  end

  def join_us
    render plain: "Send us a mail"
  end
end
