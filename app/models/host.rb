class Host < ActiveRecord::Base
  attr_accessible :name, :ssh_port
end
