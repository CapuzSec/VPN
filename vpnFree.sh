#! /bin/bash
# DESENVOLVIDO POR CAPUZ
# TWITTER: https://twitter.com/CapuzSec


clear
echo ''' ...Criado por Capuz..
+---------------------------------------+
|	  SERVIDOR VPN FREE		|
|					|
| 0 - Instalar Dependências 		|
| 1 - Novas Credenciais   		|
| 2 - Usar				|
+---------------------------------------+
'''
read -p 'Escolha um numero: ' numero;

if [ $numero -eq 0 ];
then

	clear
	echo "Instalando Dependências Aguarde..."
	echo ""
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7;
	clear

	echo "Instalando Dependências Aguarde..."
	echo ""
	echo 'deb https://repo.windscribe.com/ubuntu bionic main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list;
	clear
	
	echo "Instalando Dependências Aguarde..."
	echo ""
	sudo apt-get update -y;
	clear
	
	echo "Instalando Dependências Aguarde..."
	echo ""
	sudo apt-get install windscribe-cli -y;
	clear
	
	clear
	echo "Criando o Usuario e Senha..."
	acessos=$(cat /dev/urandom | tr -dc 'a-z-0-9' | fold -w 15 | head -n 1)
	uAgent=$(cat /dev/urandom | tr -dc '0-9' | fold -w 2 | head -n 1)
	curl -A 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:54.0) Gecko/20100101 Firefox/'${uAgent}'.0' -d signup='1' -d username="${acessos}" -d password="${acessos}" -d password2="${acessos}" -d email='' -d voucher_code='' -d captcha='True' -d unlimited_plan='0' https://prt.windscribe.com/signup
	clear
 
	echo "Login -> "$acessos
	echo "Senha -> "$acessos
	echo ""

	echo "Instalando Dependências Aguarde..."
	echo ""
	echo "Coloque o usuario e senha"
	windscribe login; 
	
	echo "Ativando Vpn Aguarde..."
	echo ""
	 
 

fi


if [ $numero -eq 1 ];
then


	clear
	echo "Criando o Usuario e Senha..."
	acessos=$(cat /dev/urandom | tr -dc 'a-z-0-9' | fold -w 15 | head -n 1)
	uAgent=$(cat /dev/urandom | tr -dc '0-9' | fold -w 2 | head -n 1)
	curl -A 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:54.0) Gecko/20100101 Firefox/'${uAgent}'.0' -d signup='1' -d username="${acessos}" -d password="${acessos}" -d password2="${acessos}" -d email='' -d voucher_code='' -d captcha='True' -d unlimited_plan='0' https://prt.windscribe.com/signup
	clear
 
	echo "Login -> "$acessos
	echo "Senha -> "$acessos
	echo ""


fi


if [ $numero -eq 2 ];
then 
	while :
	do
		windscribe connect
		sleep 15
	done
fi
