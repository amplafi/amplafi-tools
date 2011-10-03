source ~/bin/git-completion.bash
    	
export PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
#
#       The argument to __git_ps1 will be displayed only if you
#       are currently in a git repository.  The %s token will be
#       the name of the current branch.

export GIT_PS1_SHOWDIRTYSTATE=true
#
#       In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty
#       value, unstaged (*) and staged (+) changes will be shown next
#       to the branch name.  You can configure this per-repository
#       with the bash.showDirtyState variable, which defaults to true
#       once GIT_PS1_SHOWDIRTYSTATE is enabled.
#
export GIT_PS1_SHOWSTASHSTATE=true
#       You can also see if currently something is stashed, by setting
#       GIT_PS1_SHOWSTASHSTATE to a nonempty value. If something is stashed,
#       then a '$' will be shown next to the branch name.
#
export GIT_PS1_SHOWUNTRACKEDFILES=true
#       If you would like to see if there're untracked files, then you can
#       set GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there're
#       untracked files, then a '%' will be shown next to the branch name.
#
export GIT_PS1_SHOWUPSTREAM="auto"
#       If you would like to see the difference between HEAD and its
#       upstream, set GIT_PS1_SHOWUPSTREAM="auto".  A "<" indicates
#       you are behind, ">" indicates you are ahead, and "<>"
#       indicates you have diverged.  You can further control
#       behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated
#       list of values:
#           verbose       show number of commits ahead/behind (+/-) upstream
#           legacy        don't use the '--count' option available in recent
#                         versions of git-rev-list
#           git           always compare HEAD to @{upstream}
#           svn           always compare HEAD to your SVN upstream
#       By default, __git_ps1 will compare HEAD to your SVN upstream
#       if it can find one, or @{upstream} otherwise.  Once you have
#       set GIT_PS1_SHOWUPSTREAM, you can override it on a
#       per-repository basis by setting the bash.showUpstream config
#       variable.

