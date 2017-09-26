# nth

Indexing arrays is a touchy subject. Some morons think it should be done based on offset like in C. Some enlightened people understand that it should really be based on ordinal numbers. This library adds the capability to use ordinal numbers for extra readability. Don't worry, 0-indexers, you can keep believing the earth is flat, this library won't force you to use ordinal numbers.

Check out the following examples of the increase in readability!

```crystal
my_array = [:first, :second, :third]
my_array[1]
```
The above example read aloud says "the second element of `my_array`", _but_ it's using the numeral `1`.
```crystal
my_array = [:first, :second, :third]
my_array[2.nd]
```
The above example read aloud says "the second element of `my_array`, _and_ it's using the numberal `2`.
This way is clearly better.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  nth:
    github: willamin/nth
```

## Usage

```crystal
require "nth"
```

Integers get a few new methods added: `.st`, `.nd`, `.rd`, `.th`. Exceptions are raised when the methods are used on the wrong numbers, because I'm a bit of stickler Meeseeks.

## Development

Make a failing test that shows the feature you'd like the library to have.
Fix the test.

## Contributing

1. Fork it ( https://github.com/willamin/nth/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- willamin (https://github.com/willamin) Will Lewis - creator, maintainer
