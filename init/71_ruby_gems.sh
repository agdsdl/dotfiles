# Exit if rbenv is not installed.
[[ ! "$(type -P rbenv)" ]] && e_error "Gems failed to install." && return 1

# Ruby gems
gems=(
  cocoapods
)

# Install Ruby gems.
gems=($(setdiff "${gems[*]}" "$(gems list 2>/dev/null)"))
if (( ${#gems[@]} > 0 )); then
  e_header "Installing Ruby gems: ${gems[*]}"
  gem install ${gems[*]} -V
  gem cleanup
fi
