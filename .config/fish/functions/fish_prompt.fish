# # You can override some default options with config.fish:
# #
# #  set -g theme_short_path yes

# function fish_prompt
#     set -l last_command_status $status
#     set -l cwd

#     if test "$theme_short_path" = 'yes'
#         set cwd (basename (prompt_pwd))
#     else
#         set cwd (prompt_pwd)
#     end

#     set -l fish "⋊>"
#     set -l ahead "↑"
#     set -l behind "↓"
#     set -l diverged "⥄ "
#     set -l dirty "⨯"
#     set -l none "◦"

#     set -l normal_color (set_color normal)
#     set -l success_color (set_color $fish_pager_color_progress 2> /dev/null; or set_color cyan)
#     set -l error_color (set_color $fish_color_error 2> /dev/null; or set_color red --bold)
#     set -l directory_color (set_color $fish_color_quote 2> /dev/null; or set_color brown)
#     set -l repository_color (set_color $fish_color_cwd 2> /dev/null; or set_color green)

#     if test $last_command_status -eq 0
#         echo -n -s $success_color $fish $normal_color
#     else
#         echo -n -s $error_color $fish $normal_color
#     end

#     if git_is_repo
#         if test "$theme_short_path" = 'yes'
#             set root_folder (command git rev-parse --show-toplevel 2> /dev/null)
#             set parent_root_folder (dirname $root_folder)
#             set cwd (echo $PWD | sed -e "s|$parent_root_folder/||")
#         end

#         echo -n -s " " $directory_color $cwd $normal_color
#         echo -n -s " on " $repository_color (git_branch_name) $normal_color " "

#         if git_is_touched
#             echo -n -s $dirty
#         else
#             echo -n -s (git_ahead $ahead $behind $diverged $none)
#         end
#     else
#         echo -n -s " " $directory_color $cwd $normal_color
#     end

#     echo -n -s " "
# end
# ^^Old fish prompt

# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_cleanstate ' 👍  '
set __fish_git_prompt_char_conflictedstate ' ⚠️  '
set __fish_git_prompt_char_dirtystate ' 😑 '
set __fish_git_prompt_char_invalidstate ' 🤮  '
set __fish_git_prompt_char_stagedstate ' 🚥  '
set __fish_git_prompt_char_stashstate ' 📦  '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' 🔍  '
set __fish_git_prompt_char_upstream_ahead ' ☝️  '
set __fish_git_prompt_char_upstream_behind ' 👇  '
set __fish_git_prompt_char_upstream_diverged ' 🚧  '
set __fish_git_prompt_char_upstream_equal ' 💯 ' 


function fish_prompt
    set -l last_command_status $status
    set -l cwd

    if test "$theme_short_path" = 'yes'
        set cwd (basename (prompt_pwd))
    else
        set cwd (prompt_pwd)
    end

    set -l fish "⋊> "
    set -l ahead "↑"
    set -l behind "↓"
    set -l diverged "⥄ "
    set -l dirty "⨯"
    set -l none "◦"

    set -l normal_color (set_color normal)
    set -l success_color (set_color $fish_pager_color_progress 2> /dev/null; or set_color cyan)
    set -l error_color (set_color $fish_color_error 2> /dev/null; or set_color red --bold)
    set -l directory_color (set_color $fish_color_quote 2> /dev/null; or set_color brown)
    set -l repository_color (set_color $fish_color_cwd 2> /dev/null; or set_color green)

    if test $last_command_status -eq 0
        echo -n -s $success_color $fish $normal_color " "
    else
        echo -n -s $error_color $fish $normal_color " "
    end

    set last_status $status

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal

    printf '%s ' (__fish_git_prompt)
    echo -n "🐠  "
    set_color normal
end