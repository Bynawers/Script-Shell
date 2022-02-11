RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
printf "\n${BLUE}#### BYNAWERS: Shell Interface ####${WHITE}\n"

help_cmd() {
    echo -e "${CYAN}--- list of command:${WHITE}\n\n${GREEN}setup${WHITE}
    python | py
    react | r 
    script | s
    bin | b\n\n${GREEN}info${WHITE}
    python | py
    github | g
    lex | l
    shell | sh\n\n${GREEN}uvsq${WHITE}
    bdd
    os
    compilation\n\n${GREEN}asmr${WHITE}\n"
}

asmr() {
	echo -e "asmr setup..."
	google-chrome https://www.youtube.com/watch?v=InhHyyH20Vw
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
    echo -e "python help"
}

info_lex() {
    echo -e "lex help interface:
    .       Tout autre caractère qu’une fin de ligne
    ˆ       Le début d’une ligne
    $       La fin de ligne
    \α      Le caractère α quand α est un caractère spécialisé
    [\\\t]    Ignore les blancs et tabulations
    
    e*      Un nombre quelconque de fois e, éventuellement zéro
    e+      Au moins une fois e
    e?      Zéro ou une fois e
    [s]     Un des caractères de la chaîne s
    [α-β]   N’importe quel caractère dont le code ascii est entre
            le code du caractère α et celui de β
    [ˆs]    Un caractère qui n’est pas dans la chaîne s
    
exemple de constante:
[ \\\t\\\n]                                         sep
{sep}+                                          blanc
[A-Za-z]                                        lettre 
[0-9]                                           chiffre
{chiffre}+                                      chiffres
{lettre}({lettre}|{chiffre})*                   id
{chiffres}(\.{chiffres})?(E[+-]?{chiffres})?    nbre"
    

}

info_shell() {
    echo -e "\ncommand terminal\n
• cat :     Concaténation et affichage de fichiers
• cd :      Changement de répertoire courant
• cp :      Copie de fichier/répertoire
• diff :    Comparaison de fichiers
• echo :    Affichage
• ls :      Listing d’un répertoire
• make :    Appel d’un makefile
• man :     Consultation du manuel
• mkdir :   Création de répertoire
• mv :      Déplacement/renommage de fichiers
• rm :      Suppression de fichiers
• rmdir :   Suppresion de répertoires
• sudo :    Exécution de commandes en tant qu’autre utilisateur
• tar :     Manipulation d’archives
• time :    Indication de l’utilisation des ressources systèmes durant l’exécution
            D’un programme
• touch :   Modification de la date de création/dernier accès d’un fichier
            (création si le fichier n’existe pas)
• vi :      Editeur de texte"
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
    echo -e "setup python..."
    cd /home/theo/Desktop/Code/Python
    exec bash;
    pwd;
}

setup_react() {
    echo -e "setup react..."
    code -r /home/theo/Desktop/Code/React/Appli-Vin;
    cd /home/theo/Desktop/Code/React/Appli-Vin;
    npm start;
    exec bash;
    pwd;
}

setup_bin() {
    echo -e "setup bin...";
    cd /usr/bin;
    exec bash;
    pwd;
}

setup_script() {
    echo -e "setup script...";
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

bdd() {
    echo -e "bdd";
    google-chrome https://moodle.uvsq.fr/moodle2022/course/view.php?id=1644;
    nautilus /home/theo/Documents/uvsq/intro-aux-bdd;
}

os() {
    echo -e "os";
    google-chrome https://moodle.uvsq.fr/moodle2022/course/view.php?id=1644;
    nautilus /home/theo/Documents/uvsq/système-exploitation;
}

compilation() {
    echo -e "compilation";
    google-chrome https://moodle.uvsq.fr/moodle2022&/course/view.php?id=1067;
    nautilus /home/theo/Documents/uvsq/compilation;
}

uvsq() {
    if (($# == "1"))
    then
        case "$1" in
            bdd ) bdd;;
            os ) os;;
            compilation ) compilation;;
            * ) echo -e "${RED}--- Unknow option${WHITE}";;
        esac
    else
        echo -e "help"
    fi
}

if (($# == "0" || $# == "1"))
then
	if (($1 == "asmr"))
	then
	asmr;
	fi
    help_cmd;
else
    case "$1" in
        setup) setup $2;;
        info) info $2;;
        uvsq) uvsq $2;;
        asmr) asmr;;
        * ) echo -e "${RED}--- Unknow option${WHITE}";;
    esac
fi

