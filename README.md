# Installation
  - `bundle install`

# Usage
  - `bundle exec ruby lib.rb` OR `./lib.rb`
  - ```
    pry(main)> $value
    pry(main) > Example.dig_paths($value,  paths: [[:a, :c], :g], default: "value 5")
    pry(main) > Example.dig_paths($value,  paths: [:a, :b], default: "value 5")
    pry(main) > Example.dig_paths($value,  paths: [[:f]], default: "value 5")
    pry(main) > Example.dig_paths($value,  paths: [:f], default: "value 5")
    pry(main) > Example.dig_paths($value,  paths: [:b], default: "value 5")
  ```


