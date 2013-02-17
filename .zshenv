export EDITOR=vim
export PSQL_EDITOR='vim +"set syntax=sql" '

export PAGER=less
export LESS='-RM'   # -R: print ANSI color escapes directly to the screen
                    # -M: use very verbose prompt, with pos/%

# CPAN stuff
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:${HOME}/.perl5";
export PERL_MB_OPT="--install_base ${HOME}/.perl5";
export PERL_MM_OPT="INSTALL_BASE=${HOME}/.perl5";
export PERL5LIB="${HOME}/.perl5/lib/perl5/x86_64-linux:${HOME}/.perl5/lib/perl5:$PERL5LIB";
export PATH="$PATH";
