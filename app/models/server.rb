class Server < ActiveRecord::Base
  attr_accessible :u_size

  validates :u_size, numericality: {only_integer: true}
end
