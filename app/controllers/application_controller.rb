class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:latestbook, :first_name, :last_name, :streetname, :streetnumber, :number_extension, :postalcode, :city, :phonenumber, :geaddresseerde, :streetname2, :streetnumber2, :number2_extension, :postalcode2, :city2])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :streetname, :streetnumber, :number_extension, :postalcode, :city, :phonenumber, :geaddresseerde, :streetname2, :streetnumber2, :number2_extension, :postalcode2, :city2])
  end

  def after_sign_in_path_for(resource)
    @book=Book.find(params[:bookid])
    # update book?
    # create order and add user to book in orderscontroller:
    new_order_path(:book_id => @book)
  end
end
