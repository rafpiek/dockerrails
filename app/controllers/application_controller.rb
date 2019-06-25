class ApplicationController < ActionController::API

  def index
    render json: { message: 'This is docker on rails' }
  end

  def sample
    kotarba = 'Kotarba maćmmmmmmmm'
    
    render json: { message: 'This is sample message on route lalala ' + kotarba  }
  end

  def cars
    cars = Car.all
    response = {
      carsCount: cars.size,
      cars: cars
    }
    render json: response, status: :ok
  end
end
