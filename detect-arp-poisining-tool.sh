#!/usr/bin/env bash
RED='\033[0;31m'
NC='\033[0m' # No Color
index=0
missing_packages=("")
necessary_packages=("route" "awk" "notify-send")

# Functions Section
function check_package {
  # $1 is package name
  if ! which $1 > /dev/null 2>&1; then
    # Package is not exists.
    missing_packages[$index]="$1"
    index=$index+1
  fi
}

function checking_necessary_packages {
  for package in "${necessary_packages[@]}"
  do
    check_package $package
  done

  if [ -z "$missing_packages" ]; then
    echo "Everything is okey."
  else
    echo -e "You should install this packages: ${RED} ${missing_packages[*]} ${NC}" 
	exit 1
  fi
}

# Gateway ogrenilir.
function LearnGateway {
  route -n | awk '$1=="0.0.0.0" { print $2}'
}

function Method1 {
    # Suanlik gateway bulunur.
    local CurrentGateway=$(LearnGateway)
    local NextGateway=""
    while true; do
        # Sonsuza kadar gateway ogrenilir, eger degisiklik var ise dongu kirilir.
        NextGateway=$(LearnGateway)
        echo "CurrentGateway: $CurrentGateway ; NextGateway: $NextGateway"
        if [ "$NextGateway" != "$CurrentGateway" ]; then
            notify-send 'Arp poisining kurbanisin!'
            break
        else
            echo "Ayni, devam!"
        fi
    done
}

function main {
	# Checking necessary commands
	checking_necessary_packages

	Method1
}

main "$@"
exit 0