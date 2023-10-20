sudo apt install axel -y
GET=axel -n 5

sudo snap install --classic code

#gcc openocd
sudo add-apt-repository ppa:apt-fast/stable -y
sudo apt update
sudo apt install apt-fast
sudo apt-fast install build-essential git gcc cmake ninja ninja-build openocd vim -y

#cubemx
unzip ./resource/en.stm32cubemx-lin-v6-9-2.zip -d ./cubemx
$GET https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/46/64/3f/1b/cb/ec/4d/10/stm32cubemx-lin-v6-9-2/files/stm32cubemx-lin-v6-9-2.zip/jcr:content/translations/en.stm32cubemx-lin-v6-9-2.zip
sudo chmod -R 777 ./cubemx/Setup*

#jb tool box
$GET -n 5 https://download.jetbrains.com.cn/toolbox/jetbrains-toolbox-2.0.5.17700.tar.gz
tar -zxvf ./jetbrains-toolbox-2.0.5.17700.tar.gz 
./jetbrains-toolbox-2.0.5.17700/jetbrains-toolbox

#arm-gcc
$GET https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
tar -xjf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
mv gcc-arm-none-eabi-10.3-2021.10 ~/
arm-none-eabi-gcc -v
if [$?]; then
    echo "export PATH=\$PATH:/home/`whoami`/gcc-arm-none-eabi-10.3-2021.10/bin" >> ~/.bashrc
fi
export PATH=$PATH:/home/`whoami`/gcc-arm-none-eabi-10.3-2021.10/bin

#microsoft-edge
$GET https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_118.0.2088.57-1_amd64.deb
sudo apt install ./microsoft-edge-stable_118.0.2088.57-1_amd64.deb
sudo apt update
sudo apt upgrade -y