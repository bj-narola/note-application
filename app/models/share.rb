# frozen_string_literal: true

class Share < ApplicationRecord
  #
  ## Associations
  #
  belongs_to :note
  belongs_to :permission
  belongs_to(
    :user,
    foreign_key: :shared_by,
    class_name: :User
  )
end
