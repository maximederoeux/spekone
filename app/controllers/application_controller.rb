class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :get_account

private

  def get_account

    accounts = Account.where(subdomain: request.subdomain)

    if accounts.count > 0
      @account = accounts.first
    elsif request.subdomain != 'www'
    	redirect_to root_url(subdomain: '')
    end
  end

end
