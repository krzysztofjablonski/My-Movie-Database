# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  require 'active_record'  
  require 'oci8'
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :database_access

  private

  def database_access 
    begin
      if session['connected']
        ActiveRecord::Base.establish_connection(:adapter  => "oracle_enhanced", :username => session['login'], :password => session['pass'], :database => session['database'])
        ActiveRecord::Base.connection
        return true
      end

      conn = OCI8.new(params[:login],params[:pass], params[:database])
      conn.logoff

      ActiveRecord::Base.establish_connection(
        :adapter  => "oracle_enhanced",
        :username => params[:login],
        :password => params[:pass],
        :database => params[:database]
      )
      ActiveRecord::Base.connection

      session['login'] = params[:login]
      session['pass'] = params[:pass]
      session['database'] = params[:database]

      session['connected'] = true
    rescue
      render "login/login"
    end
  end

end
