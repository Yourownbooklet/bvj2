class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def get_book_templates
    @booktemplates = Booktemplate.all
  end

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:
        [
          :first_name, :last_name, :company_name,
          :streetname_and_number, :postalcode, :city,
          :phonenumber, :addressee,
          :streetname_and_number2, :postalcode2, :city2,
          :afleveradreshetzelfde, :company_name2,
          :country2
        ]
      )
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :streetname, :streetnumber, :number_extension, :postalcode, :city, :phonenumber, :geaddresseerde, :streetname2, :streetnumber2, :number2_extension, :postalcode2, :city2, :afleveradreshetzelfde])
  end

  def after_sign_in_path_for(resource)
    if params[:bookid]
      @book=Book.find(params[:bookid])
      # create order and add user to book in orderscontroller:
      new_order_path(:book_id => @book)
    else
      #show user profile page
      user_path(current_user.id)
    end
  end
end
