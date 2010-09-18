class Admin::BaseController < ApplicationController
  before_filter :authorize, :except => [ :login ]
  layout 'admin'
end