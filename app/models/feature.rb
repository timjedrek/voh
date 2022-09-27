class Feature < ApplicationRecord

  validate :only_one

  private

  def only_one
    if Feature.count <= 1
    else
      errors.add :base, 'There can only be one featured video' 
    end
  end

end
