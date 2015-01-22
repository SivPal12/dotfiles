DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Start"
echo "Config files location: "$DIR

if ! grep -q "path = "$DIR"/.gitconfig" ~/.gitconfig; then
	printf "\n### Include file:\n[include]\n\tpath = "$DIR"/.gitconfig\n" >> ~/.gitconfig
	echo "Added include in gitconfig"
else
	echo "Gitconfig looks good"
fi

if ! grep -q ". "$DIR"/.bashrc" ~/.bashrc; then
        printf ". "$DIR"/.bashrc\n" >> ~/.bashrc
        echo "Added .bashcr to ~/.bashrc"
else
        echo "~/.bashrc has link to .bashrc"
fi

if ! grep -q ". "$DIR"/.bash-git" ~/.bashrc; then
        printf ". "$DIR"/.bash-git\n" >> ~/.bashrc
        echo "Added .bash-git to ~/.bashrc"
else
        echo "~/.bashrc has link to .bash-git"
fi

if ! grep -q ". "$DIR"/.bash-maven" ~/.bashrc; then
        printf ". "$DIR"/.bash-maven\n" >> ~/.bashrc
        echo "Added .bash-maven to ~/.bashrc"
else
        echo "~/.bashrc has link to .bash-maven"
fi

if ! grep -q "cp "$DIR"/.nanorc ~/" ~/.bashrc; then
        printf "cp "$DIR"/.nanorc ~/\n" >> ~/.bashrc
        echo "Added nanorc copy to ~/.bashcr"
else
        echo "~/.bashrc has copy nanorc command"
fi

echo "Finish"
