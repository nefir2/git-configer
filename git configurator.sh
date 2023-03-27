#user config
echo "\n\n$0\n\n";
export name="";
export email="";
function getName() {
	echo -n "write your name: ";
	read name -n 'no';
	echo -n "write your email: ";
        read email -n 'name';
}
if [ $# -eq 1 ]; then
	if [[ $1 == 'n' ]]; then
	name="nefir2";
	email="vadim.ahtamov@gmail.com";
	elif [[ ! $1 == 'nn' ]]; then
		getName;		
	fi
elif [ $# -eq 2 ]; then
	name=$1;
	email=$2;
elif [ $# -eq 0 ]; then
	getName;
else
	echo "and what of this is name and email?\n"
	for i in $@; do
		echo $i;
	done;
fi

git config --global user.name $name;
git config --global user.email $email;

#windows things (\n\r)
git config --global core.autocrlf true;
git config --global core.safecrlf warn;
git config --global core.quotepath off;

#aliases
##githowto
git config --global alias.co checkout;
git config --global alias.ci commit;
git config --global alias.st status;
git config --global alias.br branch;
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short";
git config --global alias.type 'cat-file -t';
git config --global alias.dump 'cat-file -p';
##my own
git config --global alias.hsm "push saved main -v";
git config --global alias.lsm "pull saved main -v";

cat $HOME/.gitconfig; #вывод содержимого файла, в который записывается конфигурация.

bash ./mover.sh;
