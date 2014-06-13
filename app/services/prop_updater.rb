class PropUpdater

  def self.update prop, attributes
    prop.found_by       = attributes[:found_by]
    prop.found          = !prop.found_by.blank?
    prop.current_owner  = attributes[:current_owner]
    prop.save
  end

end