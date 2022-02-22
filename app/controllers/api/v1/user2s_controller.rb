class Api::V1::User2sController < Api::V1::GraphitiController
  def index
    user2s = User2Resource.all(params)
    respond_with(user2s)
  end

  def show
    user2 = User2Resource.find(params)
    respond_with(user2)
  end

  def create
    user2 = User2Resource.build(params)

    if user2.save
      render jsonapi: user2, status: 201
    else
      render jsonapi_errors: user2
    end
  end

  def update
    user2 = User2Resource.find(params)

    if user2.update_attributes
      render jsonapi: user2
    else
      render jsonapi_errors: user2
    end
  end

  def destroy
    user2 = User2Resource.find(params)

    if user2.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: user2
    end
  end
end
