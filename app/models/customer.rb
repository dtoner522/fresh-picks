class Customer < ApplicationRecord
  validates :email, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                    :message => '| Invalid e-mail! Please provide a valid e-mail address'},
                    :on => :create
  
  validates :phone, length: { minimum: 10, message: '| Please check your phone number' }
  
end
