# crtype

Types can be stored in variables

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  crtype:
    github: unn4m3d/crtype
```


## Usage


```crystal
require "crtype"


types = Array(CrType::AbstractType).new

types.push CrType::Type(Int16).new
types.push CrType::Type(Int32).new
types.push CrType::Type(Int64).new

types.each{|e| puts e.inner_type.name}

int8 = 0u8

types.each{|e|
  puts (e.inner_type.new(int8) - 1u8).to_s(16)
}

```

## Contributing

1. Fork it ( https://github.com/unn4m3d/crtype/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [unn4m3d](https://github.com/unn4m3d) - creator, maintainer
