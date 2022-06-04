#!/bin/sh

# All work consists of 3 steps: 
# step1 download
# step2 check
# step3 overwrite

# step1 download
wget -O /root/subconverter/zyrulesdownload/ProxyDIY.list https://raw.githubusercontent.com/Wrandz/myrule/main/ProxyDIY.list
wget -O /root/subconverter/zyrulesdownload/DirectDIY.list https://raw.githubusercontent.com/Wrandz/myrule/main/DirectDIY.list
wget -O /root/subconverter/zyrulesdownload/Onedrive.list https://raw.githubusercontent.com/Wrandz/myrule/main/Onedrive.list
wget -O /root/subconverter/zyrulesdownload/Scholar.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Scholar.list
wget -O /root/subconverter/zyrulesdownload/LocalAreaNetwork.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list
wget -O /root/subconverter/zyrulesdownload/UnBan.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/UnBan.list
wget -O /root/subconverter/zyrulesdownload/GoogleFCM.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/GoogleFCM.list
wget -O /root/subconverter/zyrulesdownload/GoogleCN.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list
wget -O /root/subconverter/zyrulesdownload/OneDrive.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/OneDrive.list
wget -O /root/subconverter/zyrulesdownload/Microsoft.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Microsoft.list
wget -O /root/subconverter/zyrulesdownload/Apple.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Apple.list
wget -O /root/subconverter/zyrulesdownload/Telegram.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list
wget -O /root/subconverter/zyrulesdownload/YouTube.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/YouTube.list
wget -O /root/subconverter/zyrulesdownload/BilibiliHMT.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/BilibiliHMT.list
wget -O /root/subconverter/zyrulesdownload/Bilibili.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Bilibili.list
wget -O /root/subconverter/zyrulesdownload/ChinaMedia.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaMedia.list
wget -O /root/subconverter/zyrulesdownload/ProxyMedia.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list
wget -O /root/subconverter/zyrulesdownload/ProxyGFWlist.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyGFWlist.list
wget -O /root/subconverter/zyrulesdownload/Download.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Download.list
wget -O /root/subconverter/zyrulesdownload/ChinaDomain.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list
wget -O /root/subconverter/zyrulesdownload/ChinaCompanyIp.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list
wget -O /root/subconverter/zyrulesdownload/Netflix.list https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Netflix.list

# step2 check

# step2.1 check the number of files downloaded
filesnum1=$(ls -l /root/subconverter/zyrules/ | grep "^-" | wc -l)
filesnum2=$(ls -l /root/subconverter/zyrulesdownload/ | grep "^-" | wc -l)

if [ ${filesnum2} != ${filesnum1} ];then
	read -r -p "Check the numbers of files downloaded! ${filesnum1} -> ${filesnum2} Continue? [Y/n] " input
	case $input in
		[yY][eE][sS]|[yY])
			echo "Continue files checking..."
			;;
		[nN][oO]|[nN])
			echo -e "\033[31m Downloading work completed with checking and overwriting stopped. \033[0m"
			exit 1
			;;
		*)
			echo -e "\033[31m Invalid input! Downloading work completed with checking and overwriting stopped. \033[0m"
			exit 1
			;;
	esac
fi

# step2.2 check the lines of the files downloaded
lines1=$(cat /root/subconverter/zyrules/ProxyDIY.list | wc -l)
lines2=$(cat /root/subconverter/zyrules/Onedrive.list | wc -l)
lines3=$(cat /root/subconverter/zyrules/Scholar.list | wc -l)
lines4=$(cat /root/subconverter/zyrules/LocalAreaNetwork.list | wc -l)
lines5=$(cat /root/subconverter/zyrules/UnBan.list | wc -l)
lines6=$(cat /root/subconverter/zyrules/GoogleFCM.list | wc -l)
lines7=$(cat /root/subconverter/zyrules/GoogleCN.list | wc -l)
lines8=$(cat /root/subconverter/zyrules/OneDrive.list | wc -l)
lines9=$(cat /root/subconverter/zyrules/Microsoft.list | wc -l)
lines10=$(cat /root/subconverter/zyrules/Apple.list | wc -l)
lines11=$(cat /root/subconverter/zyrules/Telegram.list | wc -l)
lines12=$(cat /root/subconverter/zyrules/YouTube.list | wc -l)
lines13=$(cat /root/subconverter/zyrules/BilibiliHMT.list | wc -l)
lines14=$(cat /root/subconverter/zyrules/Bilibili.list | wc -l)
lines15=$(cat /root/subconverter/zyrules/ChinaMedia.list | wc -l)
lines16=$(cat /root/subconverter/zyrules/ProxyMedia.list | wc -l)
lines17=$(cat /root/subconverter/zyrules/ProxyGFWlist.list | wc -l)
lines18=$(cat /root/subconverter/zyrules/Download.list | wc -l)
lines19=$(cat /root/subconverter/zyrules/ChinaDomain.list | wc -l)
lines20=$(cat /root/subconverter/zyrules/ChinaCompanyIp.list | wc -l)
lines21=$(cat /root/subconverter/zyrules/Netflix.list | wc -l)
lines22=$(cat /root/subconverter/zyrules/DirectDIY.list | wc -l)

vslines1=$(cat /root/subconverter/zyrulesdownload/ProxyDIY.list | wc -l)
vslines2=$(cat /root/subconverter/zyrulesdownload/Onedrive.list | wc -l)
vslines3=$(cat /root/subconverter/zyrulesdownload/Scholar.list | wc -l)
vslines4=$(cat /root/subconverter/zyrulesdownload/LocalAreaNetwork.list | wc -l)
vslines5=$(cat /root/subconverter/zyrulesdownload/UnBan.list | wc -l)
vslines6=$(cat /root/subconverter/zyrulesdownload/GoogleFCM.list | wc -l)
vslines7=$(cat /root/subconverter/zyrulesdownload/GoogleCN.list | wc -l)
vslines8=$(cat /root/subconverter/zyrulesdownload/OneDrive.list | wc -l)
vslines9=$(cat /root/subconverter/zyrulesdownload/Microsoft.list | wc -l)
vslines10=$(cat /root/subconverter/zyrulesdownload/Apple.list | wc -l)
vslines11=$(cat /root/subconverter/zyrulesdownload/Telegram.list | wc -l)
vslines12=$(cat /root/subconverter/zyrulesdownload/YouTube.list | wc -l)
vslines13=$(cat /root/subconverter/zyrulesdownload/BilibiliHMT.list | wc -l)
vslines14=$(cat /root/subconverter/zyrulesdownload/Bilibili.list | wc -l)
vslines15=$(cat /root/subconverter/zyrulesdownload/ChinaMedia.list | wc -l)
vslines16=$(cat /root/subconverter/zyrulesdownload/ProxyMedia.list | wc -l)
vslines17=$(cat /root/subconverter/zyrulesdownload/ProxyGFWlist.list | wc -l)
vslines18=$(cat /root/subconverter/zyrulesdownload/Download.list | wc -l)
vslines19=$(cat /root/subconverter/zyrulesdownload/ChinaDomain.list | wc -l)
vslines20=$(cat /root/subconverter/zyrulesdownload/ChinaCompanyIp.list | wc -l)
vslines21=$(cat /root/subconverter/zyrulesdownload/Netflix.list | wc -l)
vslines22=$(cat /root/subconverter/zyrulesdownload/DirectDIY.list | wc -l)

if [ ${lines1} != ${vslines1} ]; then
	echo -e "\033[31m ProxyDIY.list ${lines1} -> ${vslines1} \033[0m"
else
	echo "ProxyDIY.list ${lines1} -> ${vslines1}"
fi

if [ ${lines2} != ${vslines2} ]; then
	echo -e "\033[31m Onedrive.list ${lines2} -> ${vslines2} \033[0m"
else
	echo "Onedrive.list ${lines2} -> ${vslines2}"
fi

if [ ${lines3} != ${vslines3} ]; then
	echo -e "\033[31m Scholar.list ${lines3} -> ${vslines3} \033[0m"
else
	echo "Scholar.list ${lines3} -> ${vslines3}"
fi

if [ ${lines4} != ${vslines4} ]; then
	echo -e "\033[31m LocalAreaNetwork.list ${lines4} -> ${vslines4} \033[0m"
else
	echo "LocalAreaNetwork.list ${lines4} -> ${vslines4}"
fi

if [ ${lines5} != ${vslines5} ]; then
	echo -e "\033[31m UnBan.list ${lines5} -> ${vslines5} \033[0m"
else
	echo "UnBan.list ${lines5} -> ${vslines5}"
fi

if [ ${lines6} != ${vslines6} ]; then
	echo -e "\033[31m GoogleFCM.list ${lines6} -> ${vslines6} \033[0m"
else
	echo "GoogleFCM.list ${lines6} -> ${vslines6}"
fi

if [ ${lines7} != ${vslines7} ]; then
	echo -e "\033[31m GoogleCN.list ${lines7} -> ${vslines7} \033[0m"
else
	echo "GoogleCN.list ${lines7} -> ${vslines7}"
fi

if [ ${lines8} != ${vslines8} ]; then
	echo -e "\033[31m OneDrive.list ${lines8} -> ${vslines8} \033[0m"
else
	echo "OneDrive.list ${lines8} -> ${vslines8}"
fi

if [ ${lines9} != ${vslines9} ]; then
	echo -e "\033[31m Microsoft.list ${lines9} -> ${vslines9} \033[0m"
else
	echo "Microsoft.list ${lines9} -> ${vslines9}"
fi

if [ ${lines10} != ${vslines10} ]; then
	echo -e "\033[31m Apple.list ${lines10} -> ${vslines10} \033[0m"
else
	echo "Apple.list ${lines10} -> ${vslines10}"
fi

if [ ${lines11} != ${vslines11} ]; then
	echo -e "\033[31m Telegram.list ${lines11} -> ${vslines11} \033[0m"
else
	echo "Telegram.list ${lines11} -> ${vslines11}"
fi

if [ ${lines12} != ${vslines12} ]; then
	echo -e "\033[31m YouTube.list ${lines12} -> ${vslines12} \033[0m"
else
	echo "YouTube.list ${lines12} -> ${vslines12}"
fi

if [ ${lines13} != ${vslines13} ]; then
	echo -e "\033[31m BilibiliHMT.list ${lines13} -> ${vslines13} \033[0m"
else
	echo "BilibiliHMT.list ${lines13} -> ${vslines13}"
fi

if [ ${lines14} != ${vslines14} ]; then
	echo -e "\033[31m Bilibili.list ${lines14} -> ${vslines14} \033[0m"
else
	echo "Bilibili.list ${lines14} -> ${vslines14}"
fi

if [ ${lines15} != ${vslines15} ]; then
	echo -e "\033[31m ChinaMedia.list ${lines15} -> ${vslines15} \033[0m"
else
	echo "ChinaMedia.list ${lines15} -> ${vslines15}"
fi

if [ ${lines16} != ${vslines16} ]; then
	echo -e "\033[31m ProxyMedia.list ${lines16} -> ${vslines16} \033[0m"
else
	echo "ProxyMedia.list ${lines16} -> ${vslines16}"
fi

if [ ${lines17} != ${vslines17} ]; then
	echo -e "\033[31m ProxyGFWlist.list ${lines17} -> ${vslines17} \033[0m"
else
	echo "ProxyGFWlist.list ${lines17} -> ${vslines17}"
fi

if [ ${lines18} != ${vslines18} ]; then
	echo -e "\033[31m Download.list ${lines18} -> ${vslines18} \033[0m"
else
	echo "Download.list ${lines18} -> ${vslines18}"
fi

if [ ${lines19} != ${vslines19} ]; then
	echo -e "\033[31m ChinaDomain.list ${lines19} -> ${vslines19} \033[0m"
else
	echo "ChinaDomain.list ${lines19} -> ${vslines19}"
fi

if [ ${lines20} != ${vslines20} ]; then
	echo -e "\033[31m ChinaCompanyIp.list ${lines20} -> ${vslines20} \033[0m"
else
	echo "ChinaCompanyIp.list ${lines20} -> ${vslines20}"
fi

if [ ${lines21} != ${vslines21} ]; then
	echo -e "\033[31m Netflix.list ${lines21} -> ${vslines21} \033[0m"
else
	echo "Netflix.list ${lines21} -> ${vslines21}"
fi

if [ ${lines22} != ${vslines22} ]; then
	echo -e "\033[31m DirectDIY.list ${lines22} -> ${vslines22} \033[0m"
else
	echo "DirectDIY.list ${lines21} -> ${vslines21}"
fi

# step3 overwrite
read -r -p "Downloading and checking completed! Overwrite original files? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
		mv -f /root/subconverter/zyrulesdownload/* /root/subconverter/zyrules/
		echo "All work done. Enjoy!"
		;;
    [nN][oO]|[nN])
		echo -e "\033[31m Downloading and checking work completed with overwriting stopped! ${filesnum1} -> ${filesnum2} \033[0m"
		exit 1
       		;;
    *)
		echo -e "\033[31m Invalid input! Downloading and checking work completed with overwriting stopped! ${filesnum1} -> ${filesnum2} \033[0m"
		exit 1
		;;
esac
