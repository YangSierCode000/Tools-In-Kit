#!/mnt/c/WINDOWS/system32/bash
#this is a simple startup script

#prepare
sleep 0.01

#initialise commend
general (){
    echo -e "Starting Net Ease Cloud Music(网易云音乐)"
    start "" "C:\Program Files (x86)\Netease\CloudMusic\cloudmusic.exe"
    
    echo -e "Starting weChat(微信)"
    start "" "C:\Program Files\WindowsApps\TencentWeChatLimited.forWindows10_2.6.3.0_x86__sdtnhv12zgd7a\WeChatStore\WeChatStore.exe"
    
    echo -e "Starting QQ(QQ)"
    start "" "C:\Program Files (x86)\QQ\Bin\QQScLauncher.exe"
}

work (){
    echo -e "Starting weChat for Biz(企业微信)"
    start "" "C:\Program Files (x86)\WXWork\WXWork.exe"
    
    
    echo -e "Starting Zoom(zoom 会议室)"
    start "" "C:\Users\22759\AppData\Roaming\Zoom\bin\Zoom.exe"
    
    
    echo -e "Starting Bilibili Live(哔哩哔哩直播间)"
    start "" "C:\Program Files (x86)\bililive\livehime\livehime.exe"
    
}

break (){
    echo -e "Starting Steam(Steam 游戏社区)"
    start "" "C:\Program Files (x86)\Steam\Steam.exe"
    
    
    echo -e "Starting 360 Game Booster(360游戏加速器)"
    start "" "C:\Program Files (x86)\360\Total Security\GameBooster.exe"
}

#ask for input
echo -e "What type of startup? WORK(\033[7m W \033[0m)/BREAK(\033[7m B \033[0m)/ALL(\033[7m A \033[0m)"
if read -n1 -t5 OPTION
then
    echo
    echo -e "System is starting up. with option \033[7m$OPTION\033[0m."
else
    echo
    echo "Sorry,too slow. Use default value \"W\"."
    OPTION="W"
fi

#switch to different path
case $OPTION in
    W|w)
        echo
        echo "-----Build working environment:---------"
        work
    ;;
    B|b)
        echo
        echo "-----Build entertaining environment:----"
        break
    ;;
    A|a)
        echo
        echo "-----Building general environment:---------"
        work
        break
    ;;
    *)
        echo
        echo "WRONG INPUT, PRESS ANY KEY OT EXIT"
        read -n1
        exit 1
    ;;
esac

#general startup
general

#give finish message
echo
echo "FINISH"
sleep 10s