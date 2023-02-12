class ApplicationController < ActionController::Base
  before_action :i18n_setup

  protected

  def i18n_setup
    I18n.locale = 'es'
  end
end