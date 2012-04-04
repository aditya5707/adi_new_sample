module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    current_user = user
    logger.info "sign_in ========== #{current_user.inspect}"
  end

  def signed_in?
    logger.info "signed_in? #######################"
    logger.info current_user.present?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= user_from_remember_token
  end

  def sign_out
    cookies.delete(:remember_token)
    logger.info "sign_out######## #{current_user.inspect}"
    current_user = nil
    logger.info "sign_out####### #{current_user.inspect}"
  end

  private

  def user_from_remember_token
    remember_token = cookies[:remember_token]
    User.find_by_remember_token(remember_token) unless remember_token.nil?
  end

end
