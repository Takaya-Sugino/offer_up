class User2sController < ApplicationController
  before_action :set_user2, only: %i[show edit update destroy]

  def index
    @q = User2.ransack(params[:q])
    @user2s = @q.result(distinct: true).includes(:transactions,
                                                 :sellers).page(params[:page]).per(10)
  end

  def show
    @transaction = Transaction.new
  end

  def new
    @user2 = User2.new
  end

  def edit; end

  def create
    @user2 = User2.new(user2_params)

    if @user2.save
      redirect_to @user2, notice: "User2 was successfully created."
    else
      render :new
    end
  end

  def update
    if @user2.update(user2_params)
      redirect_to @user2, notice: "User2 was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @user2.destroy
    redirect_to user2s_url, notice: "User2 was successfully destroyed."
  end

  private

  def set_user2
    @user2 = User2.find(params[:id])
  end

  def user2_params
    params.require(:user2).permit(:name)
  end
end
