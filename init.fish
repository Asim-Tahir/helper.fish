# Oh My Fish initialization
# $path is only defined for oh-my-fish. home-manager activates this plugin by
# adding the full path of functions/ to fish_function_path, and then sourcing
# init.fish, so let's skip sourcing _helper.init.fish before calling _helper.init.
set -l _helper_init_path "$path/functions/_helper.init.fish"
if [ -f "$_helper_init_path" ];
    source "$_helper_init_path"
end

# Initialize the helper functions
_helper.init