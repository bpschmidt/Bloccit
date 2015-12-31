class Api::V1::CommentsController < Api::V1::BaseController
  before_filter :authenticate_user
  before_filter :authorize_user

  def show

  end

  def index

  end
end
