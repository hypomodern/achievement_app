class PropUpdater

  def self.update prop, attributes
    prop.found = attributes[:found]
    prop.save
  end

end