module AccessorInitializable
  def initialize(attrs)
    attrs.each do |method,value|
      public_send("#{method}=",value) if respond_to? "#{method}="
    end
  end
end