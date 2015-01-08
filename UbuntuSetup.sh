DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Start"
echo "Config files location: "$DIR

if ! grep -q "path = "$DIR"/.gitconfig" ~/.gitconfig; then
	printf "\n### Include file:\n[include]\n\tpath = "$DIR"/.gitconfig\n" >> ~/.gitconfig
	echo "Added include in gitconfig"
else
	echo "Gitconfig looks good"
fi
echo "Finish"
