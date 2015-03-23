name "base"
description "base role setup"

run_list %w(
  recipe[homebrew]

  recipe[rvm]
)
