require "../src/crtype"
require "spec"

describe CrType do
  it "works" do
    types = Array(CrType::AbstractType).new

    types.push CrType::Type(UInt16).new,CrType::Type(UInt32).new,CrType::Type(typeof(0u64)).new

    types.first.inner_type.name.should eq("UInt16")
    types[1].inner_type.name.should eq("UInt32")
    types.last.inner_type.name.should eq("UInt64")

    types.each_with_index{|e,i|
      UInt64.new(e.inner_type.new(0u8) - 1).to_s(16).should eq("ffff"*(2**i))
    }

  end
end
