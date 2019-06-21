class ApplicationController < ActionController::API

  def index
    render json: { message: 'This is docker on rails' }
  end

  def sample
    kotarba = 'rulez'
    render json: { message: 'This is sample message on route lalala ' + kotarba  }
  end
end
