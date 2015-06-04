require_relative '../lib/accessor_initializable'

class DumbModel
  include AccessorInitializable
  attr_accessor :foo

end

describe AccessorInitializable do
  it "sets instance variables for accessor attributes" do
    model = DumbModel.new({foo: 'bar'})
    expect(model.foo).to eq 'bar'
  end

  it "ignores attributes that cannot be set" do
    model = DumbModel.new({baz: 'quux'})
    expect(model.foo).to eq nil
    expect{model.baz}.to raise_error
  end
end
