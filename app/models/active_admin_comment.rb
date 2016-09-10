class ActiveAdminComment < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
  belongs_to :author, polymorphic: true
end
