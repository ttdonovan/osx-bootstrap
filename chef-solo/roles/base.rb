name "base"
description "base role setup"

run_list %w(
  recipe[homebrew]
  recipe[homebrew::packages]
  recipe[homebrew::taps]

  recipe[rvm]
)

default_attributes({
  homebrew: {
    taps: %w(
      homebrew/versions
    ),
    packages: %w(
      git
      mysql
      node010
      postgresql
      sqlite
      tig
    )
  }
})
