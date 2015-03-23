name "base"
description "base role setup"

run_list %w(
  recipe[homebrew]
  recipe[homebrew::packages]

  recipe[rvm]
)

default_attributes({
  homebrew: {
    packages: %w(
      git
      tig
    )
  }
})
