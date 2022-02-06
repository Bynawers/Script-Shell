RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
printf "\n${BLUE}#### BYNAWERS: Shell Interface ####${WHITE}\n"

help_cmd() {
    echo -e "${CYAN}--- list of command:${WHITE}\n\n${GREEN}- setup | s :${WHITE}
    python | py
    react | r \n\n${GREEN}- info | i :${WHITE}
    python | py
    github | g
    lex | l
    shell | sh"
}

info_github() {
    echo -e "\n${CYAN}------ Github${WHITE}\n
    - git init
    - git add *
    - git commit -m \"custom message\"
    - git remote add origin (ssh key)
    - git push -u origin main \n\n${RED}fatal:${WHITE} remote origin already exists :
    - git remote rm origin \n\n${YELLOW}error:${WHITE} src refspec main does not match any :
    - git commit -m \"initial commit\"
    - git push origin master\n"
}

info_python() {
    echo -e "python interface"
}

info_lex() {
    echo -e "lex interface"
}

info_shell() {
    echo -e "shell interface"
}

info() {
    if (($# == "1"))
    then
        case "$1" in
            python | py ) info_python;;
            github | g ) info_github;;
            lex | l ) info_lex;;
            shell | sh ) info_shell;;
            * ) echo -e "${RED}--- Unknow option${WHITE}";;
        esac
    fi
}

setup_python() {
    echo -e "setup python"
    cd /home/theo/Desktop/Code/Python
    exec bash;
    pwd;
}

setup_react() {
    echo -e "setup react"
    code -r /home/theo/Desktop/Code/React/Appli-Vin;
    cd /home/theo/Desktop/Code/React/Appli-Vin;
    npm start;
    exec bash;
    pwd;
}

setup_bin() {
    echo -e "setup bin";
    cd /usr/bin;
    exec bash;
    pwd;
}

setup_script() {
    echo -e "setup script";
    code -r /home/theo/Desktop/Code/Script/bynawers.sh
    cd /home/theo/Desktop/Code/Script;
    exec bash;
    pwd;
}

setup() {
    if (($# == "1"))
    then
        case "$1" in
            python | py ) setup_python;;
            react | r ) setup_react;;
            script | s ) setup_script;;
            bin | b ) setup_bin;;
            * ) echo -e "${RED}--- Unknow option${WHITE}";;
        esac
    fi
}

if (($# == "0" || $# == "1"))
then
    help_cmd;
else
    case "$1" in
        setup | s ) setup $2;;
        info | i ) info $2;;
        * ) echo -e "${RED}--- Unknow option${WHITE}";;
    esac
fi

