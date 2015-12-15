set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
    set curdir (pwd)

    set siteWithDir   (echo (pwd) | egrep -m 1 -o "\w+?\.dev\.fishvision.+")
    set sitelength    (echo $siteWithDir | wc -c)

    if [ $sitelength != "1" ]
        set siteName      (echo (pwd) | egrep -m 1 -o "\w+?\.dev\.fishvision\.net\.au")
        set siteShort     (echo (pwd) | egrep -m 1 -o "\w+?\.dev")
        set siteReplaced  (echo $siteWithDir | sed "s/$siteName/$siteShort/")
        set curdir        "../"$siteReplaced
    end

    set -l textcol  white
    set -l bgcol    blue

    set_color $textcol -b $bgcol
    echo -n " "(whoami)": $curdir "
    set_color normal
    printf '%s ' (__fish_git_prompt)
end
