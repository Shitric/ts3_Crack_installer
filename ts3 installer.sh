#-------------------------------------------------------------------------
# Functions :

function khder {
  echo -e "\\033[32;1m${@}\033[0m"
}

function rose {
  echo -e "\\033[35;1m${@}\033[0m"
}

function chibi {
  echo -e "\\033[36;1m${@}\033[0m"
}

function hmer {
  echo -e "\\033[31;1m${@}\033[0m"
}

function sfer {
  echo -e "\\033[33;1m${@}\033[0m"
}

function errorContinue {
  hmer "Invalid option."
  return
}
#-------------------------------------------------------------------------
# RooT verification :

if [ "$(id -u)" != "0" ]; then
  hmer "Change to root account required"
fi

su root

if [ "$(id -u)" != "0" ]; then
  hmer "Still not root, aborting"
fi

#--------------------------------------------------------------------------
# Decor a tubbi
chibi "███████╗██╗     ██╗  ██╗██╗  ██╗ █████╗ ██╗   ██╗██████╗ ███████╗██████╗ ";
chibi "██╔════╝██║     ██║ ██╔╝██║  ██║██╔══██╗╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗";
chibi "█████╗  ██║     █████╔╝ ███████║███████║ ╚████╔╝ ██║  ██║█████╗  ██████╔╝";
chibi "██╔══╝  ██║     ██╔═██╗ ██╔══██║██╔══██║  ╚██╔╝  ██║  ██║██╔══╝  ██╔══██╗";
chibi "███████╗███████╗██║  ██╗██║  ██║██║  ██║   ██║   ██████╔╝███████╗██║  ██║";
chibi "╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝";
chibi "                                                                         ";
# A77 , Lkhedma bdat !!

OPTIONS=("Install Teamspeak server" "Install Only crack" "Quit")
  select OPTION in "${OPTIONS[@]}"; do
    case "$REPLY" in
      1|2 ) break;;
      5 ) errorQuit;;
      *) errorContinue;;
    esac
  done
  
  if [ "$OPTION" == "Install Teamspeak server" ]; then
    INSTALL="Inst"
    elif [ "$OPTION" == "Install Only crack" ]; then
    INSTALL="Inst1"
  fi
  if [[ $INSTALL == "Inst" ]]; then
    sfer "You really want install Teamspeak 3 server ??" 
    
    OPTIONS=("Yes" "No")
    select OPTION in "${OPTIONS[@]}"; do
      case "$REPLY" in
        1 ) break;;
        2 ) errorQuit;;
        *) errorContinue;;
      esac
    done
    if [ "$Option" == "Yes"]; then
      location=/opt/ts3_server
      file1=teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
      cd $location
      wget https://unitedsquad.cf/crack/ts3/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
      tar -xjf $file1
      rm $file1
      chmod 777 -R *.*
      hmer "Please Copy the QueryLogin and the Owner key"
      sleep 2
      Khder "It's will never Displayed again  !!"
      sleep 2
      ./ts3server_startscript.sh start
      rose "Come On !! Copy it !! Harry !!"
      sleep 5
      ./ts3server_startscript.sh stop
      rm ts3server
      wget https://unitedsquad.cf/crack/ts3/3.0.13.8/ts3server
      chmod 777 ts3server
      ./ts3server_startscript.sh start
      khder "Enjoy Your Server !!"
      sleep 5
      sfer "The Crack is undetectable"
      sleep 1
      sfer "Slots and servers are unlimited"
      sleep 1
      sfer "The Server Can't be crached"
      hmer ";) :) :)"
    fi
  fi
  if [[ $INSTALL == "Inst1" ]]; then
    sfer "The Crack it's only for 3.0.13.8 version !! Do you have This Version ??"
    
    OPTIONS=("Yes" "No")
    select OPTION in "${OPTIONS[@]}"; do
      case "$REPLY" in
        1 ) break;;
        2 ) errorQuit;;
        *) errorContinue;;
      esac
    done
    if [ "$Option" == "Yes" ]; then
      read -p "Teamspeak server installation Dir : " location
      cd $location
      hmer "The TS3 server will get stopped For crack installation !!"
      ./ts3server_startscript.sh stop
      rm ts3server
      wget https://unitedsquad.cf/crack/ts3/3.0.13.8/ts3server
      chmod 777 ts3server
      ./ts3server_startscript.sh start
      khder "Enjoy Your Server !!"
      sleep 5
      sfer "The Crack is undetectable"
      sleep 1
      sfer "Slots and servers are unlimited"
      sleep 1
      sfer "The Server Can't be crached"
      hmer ";) :) :)"
    fi
    if [ "$Option" == "No" ]; then
      hmer "You can't install crack"
      sfer "BuT you can install the 3.0.13.8 version"
      hmer ":)"
    fi
  fi
 return
return




