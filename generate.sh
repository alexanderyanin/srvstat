echo "<!DOCTYPE html>" > index.html
echo "<html>" >> index.html
echo "<head>" >> index.html
echo "<title>SrvStat</title>" >> index.html
echo "<link rel="stylesheet" href="style.css">" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html
echo "<h1>" >> index.html
uname -n >> index.html
echo "</h1>" >> index.html
echo "<p>Версия ядра: " >> index.html
uname -r >> index.html
echo "</p>" >> index.html
echo "<p>" >> index.html
uptime -p >> index.html
echo "</p>" >> index.html
echo "<p>Доступная память: " >> index.html
free -h | grep Mem | awk '{print $2}' >> index.html
echo "<br>Свободная память: " >> index.html
free -h | grep Mem | awk '{print $4}' >> index.html
echo "</p>" >> index.html
echo "<h3>Хранилище</h3><p>/: " >> index.html
df -h | awk '$NF=="/"{printf "%s\t\t", $4}' >> index.html
echo "<br>/mnt/one: " >> index.html
df -h | awk '$NF=="/mnt/one"{printf "%s\t\t", $4}' >> index.html
echo "<br>/mnt/two: " >> index.html
df -h | awk '$NF=="/mnt/two"{printf "%s\t\t", $4}' >> index.html
echo "</p>" >> index.html

echo "</body>" >> index.html
echo "</html>" >> index.html
