class SiteController < ApplicationController
  def home
  end

  def array
    return render json: (10..50).to_a.sort{ rand() - 0.5 }[0..20]
  end

  def json
  end
end
