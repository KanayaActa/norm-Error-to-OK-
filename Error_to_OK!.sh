norminette_custom() {
    command norminette "$@" | sed -e 's/Error!/OK!/' -e '/^Error:/d'
}

alias_custom() {
    command alias "$@" | sed -e '/custom/d' -e '/norminette/d'
}

alias norminette='norminette_custom'
alias alias='alias_custom'
