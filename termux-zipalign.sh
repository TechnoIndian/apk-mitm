pkg i gnupg wget -y
[ ! -d $PREFIX/etc/apt/sources.list.d ] && mkdir $PREFIX/etc/apt/sources.list.d
# Write the needed source file
if [ ! -f "$PREFIX/etc/apt/sources.list.d/rendiix.list" ]; then
	echo -e "deb https://rendiix.github.io android-tools termux" > $PREFIX/etc/apt/sources.list.d/rendiix.list
	wget -qP $PREFIX/etc/apt/trusted.gpg.d https://rendiix.github.io/rendiix.gpg
	apt update
	
	pkg install zipalign
else 
	echo "repo already installed"
fi