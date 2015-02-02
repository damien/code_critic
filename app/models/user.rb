# The User class represents a real, individual person within this application.
class User < ActiveRecord::Base
  include ::DeviseIntegration
end
