echo "Hello World"

echo "Set up ssh"
mkdir -p ~/.ssh
echo $1 > ~/.ssh/id_rsa
echo "File created"
cat ~/.ssh/id_rsa
echo "Permission Changed"
chmod 400 ~/.ssh/id_rsa