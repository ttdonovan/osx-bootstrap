name "tanner"
description "role for tanner setup"

run_list %w(
  role[base]

  recipe[git_config]
)

default_attributes({
  git_config: {
    user_name: 'Tanner Donovan',
    email: 'ttdonovan@gmail.com'
  }
})
