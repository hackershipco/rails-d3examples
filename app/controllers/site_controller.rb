class SiteController < ApplicationController
  def home
  end

  def array
    return render json: (10..50).to_a.shuffle.take(15)
  end

  def json
  end
end
