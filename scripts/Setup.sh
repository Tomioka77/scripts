#!/bin/bash
sudo apt update && sudo apt upgrade && sudo apt-get install git-core -y && sudo apt-get install android-tools-adb -y && sudo apt-get install android-tools-fastboot -y && sudo apt-get install zram-config && sudo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev -y
sudo apt-get update && sudo apt-get install bc git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk3.0-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline6-dev gcc-multilib maven tmux screen w3m ncftp adb fastboot repo python default-jdk -y && mkdir ~/bin && PATH=~/bin:$PATH && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && mkdir ~/kangos && cd ~/kangos && sudo apt update && sudo apt upgrade && git clone https://github.com/akhilnarang/scripts --depth 1 && cd scripts && bash setup/android_build_env.sh && sudo nano ~/.profile

# add Android SDK platform tools to path
if [ -d "$HOME/platform-tools" ] ; then
    PATH="$HOME/platform-tools:$PATH"
fi

source ~/.profile && git config --global user.email "mezackisilva@gmail.com" && git config --global user.name "Myydata" && sudo nano ~/.bashrc

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache

ccache -M 50G

source build/envsetup.sh

breakfast

make bacon

 | tee log.txt

neofetch

# Dependencies Mojito

git clone https://github.com/Myydata/device_xiaomi_mojito -b 11  device/xiaomi/mojito

git clone https://github.com/Myydata/device_xiaomi_mojito-common  device/xiaomi/mojito-common

git clone https://github.com/Myydata/vendor_xiaomi_mojito vendor/xiaomi/mojito

git clone https://github.com/Myydata/vendor_xiaomi_mojito-common vendor/xiaomi/mojito-common

git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

git clone https://github.com/venom-stark/kernel_xiaomi_mojito.git -b R-gcc kernel/xiaomi/sm6150

# Dependencies Surya
neofetch
git clone https://github.com/Myydata/device_xiaomi_sm6150-common/ -b 11-common device/xiaomi/sm6150-common 

git clone https://github.com/Myydata/vendor_xiaomi_surya/ -b 11-common vendor/xiaomi/surya 

git clone https://github.com/Myydata/vendor_xiaomi_sm6150-common/ -b 11-common vendor/xiaomi/sm6150-common 

git clone https://github.com/ririxichan/vendor_GoogleCamera vendor/GoogleCamera

git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 prebuilts/gcc/linux-x86/aarch64/aarch64-elf

git clone --depth=1 https://github.com/mvaisakh/gcc-arm prebuilts/gcc/linux-x86/arm/arm-eabi

git clone https://github.com/GZR-Kernels/Optimus_Drunk_Surya/ -b 11.0 kernel/xiaomi/surya

# Firmware
git clone https://gitlab.com/Ardjlon/firmware_xiaomi_surya firmware/xiaomi/surya

# Display Hals
git -C hardware/qcom-caf/sm8150/display remote add pixel https://github.com/PixelExperience/hardware_qcom-caf_sm8150_display

git -C hardware/qcom-caf/sm8150/display fetch pixel && git -C hardware/qcom-caf/sm8150/display checkout pixel/eleven

# Google Camera Parrot
git clone https://github.com/ririxichan/vendor_GoogleCamera vendor/GoogleCamera

# EVA GCC

git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 prebuilts/gcc/linux-x86/aarch64/aarch64-elf

git clone --depth=1 https://github.com/mvaisakh/gcc-arm prebuilts/gcc/linux-x86/arm/arm-eabi

lunch colt_surya-userdebug

clear

neofetch

echo * .*.*.*.*.*.*.*.* .*.*.* .*.*.*.* .*.*.*.* .*.*.*.* .*.*.*.Hackeando o seu sistema* .*.*.*.* .*.*.*.* .*.*.*.* .*.*.*.* .*.*.*.* .*.*.*.* .*.*.*. 

lunch colt_surya-userdebug

mka colt -j16

# Commitar

&& git init 

&& git mv old_11 new_c11 

&& git add . 

&& git commit -m "initial commit" 

&& git checkout -b m 

&& git branch -M m 

&& git remote add origin https://github.com/Myydata/build_Myydata.git

&& git push -u origin c11

#Surya dependencies
if
neofetch
git clone https://github.com/Myydata/vendor_xiaomi_surya/ -b c vendor/xiaomi/surya
git clone https://github.com/Myydata/kernel_xiaomi_surya/ -b c kernel/xiaomi/surya
git clone https://gitlab.com/subhajeetmuhuri/proprietary_firmware_xiaomi_surya/ -b lineage-18.1 firmware/xiaomi/surya
else
#git clone https://gitlab.com/subhajeetmuhuri/android_prebuilts_clang_host_linux-x86/ -b lineage18.1 prebuilts/clang/host/linux-x86
#Build init
neofetch
clear
lunch colt_surya-userdebug
clear
lunch colt_surya-userdebug
clear
mka colt -j16

#???Tudo o que uma vez era diretamente vivido tornou-se uma mera representa????o.??? Debord

#A hist??ria ?? conhecida. Mois??s abandona o Egito ap??s os eg??pcios descobrirem que ele matou um eg??pcio.Seu ex??lio f??sico e existencial o leva at?? a terra de Midi?? onde ele ??, ironicamente, reconhecido como um eg??pcio (??xodo 2:19). Ali Mois??s permanece, cria ra??zes, e sem o leitor ser informado quanto tempo passou, Mois??s se encontra s??. O come??o do terceiro cap??tulo do livro de ??xodo introduz uma ??nfase na palavra ???ver??? (ra???ah). At?? o verso 6 o verbo ocorre cinco vezes. Tr??s das cinco vezes a palavra ???ver??? ?? usada diretamente por Mois??s. Mois??s v?? ???uma sar??a queimando com fogo??? (3:3); Mois??s v?? ???uma grande vis??o??? (3:3); DEUS v?? que ???Mois??s se virou para ver??? (3:4). Mois??s v??, v??, v??. Finalmente, quando Mois??s percebe que sua an??lise fenomenol??gica da sar??a ardente n??o era como ele havia presumido, isto ??, a sar??a n??o era apenas uma ???grande vis??o??? ou um espet??culo particular sem significado, o texto diz: ???Mois??s escondeu o rosto, porque temeu olhar para DEUS??? (??xodo 3:6). A palavra ???olhar??? (nabat), ?? diferente da palavra ???ver??? (ra???ah). A palavra ???olhar??? carrega a conota????o de observa????o, de olhar com cuidado, de contemplar (Gen 15:5; 19:17, 26; Ex 33:8; Num 12:8; 21:9; 23:2; etc). Aquele que v??, v??, v????? teme olhar. Mois??s aparentemente teme aquilo a que j?? aludimos em posts anteriores com uma cita????o de Buber. Mois??s teme ???a crucialidade do momento??? em que Revela????o acontece. Para uma sociedade imersa no espet??culo, dependente de ???grandes vis??es,??? de sar??as que queimam sem significado ou revela????o, este texto ?? oportuno. Como Mois??s vendo ???grandes vis??es??? queremos, em nossa solid??o, nos deparar com isto e nada mais. Uma vez que somos confrontados com a simplicidade do Revelador, com o chamado para as sand??lias serem retiradas, travamos. Queremos programa????es, shows, eventos religiosos para que possamos manter o conforto de ver, ver, ver??? sem o desafio de olhar. Pois na hora de olhar, de observar, de ouvir ??quEle que fala atrav??s da pequenez da sar??a, da simplicidade das Escrituras, nos escondemos. Queremos grandes vis??es, n??o Revela????o. O desafio aqui ?? grande, pois se fecharmos as cortinas, se desfizermos o palco e o cen??rio, se abandonarmos nossos personagens no grande teatro da religiosidade superficial, o que ir?? restar?O Mois??s que inicialmente temia olhar??? aprendeu a falar com DEUS ???face a face, como qualquer fala com seu amigo??? (??xodo 33:11). Entre o que era e o que se tornou existe um deserto que, como Mois??s, todos precisamos trilhar; mas primeiramente precisamos tirar as sandalhas diante da simplicidade das Escrituras e desfazer nossa depend??ncia de espet??culos, de ???grandes vis??es,??? e de tudo aquilo que nos mant??m inertes em Midi??. Alguns textos parecem t??o simples e, muitas vezes, s??o t??o simploriamente aplicados, que seu real sentido ???aquilo que ?? importante de fato??? passa desapercebido. Um destes textos ?? Mateus 7:15-27. Ali, no final de um grande serm??o, Jesus passa a tratar de um tema que parece ??bvio: falsos profetas.O conselho ?? claro e plenamente compreens??vel: ???pelos seus frutos os conhecereis??? (Mt. 7:16). O argumento derivado do conselho tamb??m parece l??gico: se um indiv??duo ?? bom, seus frutos ser??o bons. Se um indiv??duo ?? mau, seus frutos ser??o maus. Portanto, para saber se algu??m ?? enviado de DEUS ???um verdadeiro profeta??? basta olhar seus frutos: ???pelos seus frutos os conhecereis??? (Mt. 7:20) repete o Mestre. Ora, o racioc??nio ?? muito b??sico. Muito simples. Entretanto, qualquer manique??sta poderia ser respons??vel por uma frase ou id??ia como esta. A relev??ncia do texto ?? que ele n??o p??ra a??. Jesus, diferentemente de qualquer expositor simpl??rio do texto, n??o se apega ao manique??smo barato  que parece ter se constru??do. ELE continua com: ???nem todo o que me diz: Senhor, Senhor! entrar?? no reino dos c??us, mas aquele que faz a vontade de meu Pai que est?? nos c??us. Muitos, naquele dia, h??o de dizer-me: Senhor, Senhor! Porventura n??o temos n??s profetizado em teu nome, e em teu nome n??o expelimos dem??nios, e em teu nome n??o fizemos muitos milagres? Ent??o, lhes direi explicitamente: nunca vos conheci. Apartai-vos de mim, os que praticais a iniquidade.??? (Mt. 7:21-23)Aqui percebemos o qu??o profundo ?? o discurso do Mestre. Seria um bom fruto o dom de profecia? Claro! Seria um bom fruto o expelir dem??nios? Claro! Seria um bom fruto fazer milagres? Claro! S??o todos, inclusive, frutos que o pr??prio Messias, Jesus, apresenta eem Seu minist??rio (Mt. 24 e 25; Mt. 9:32-34; 8:28-34; 8:1-17; etc). Como, ent??o, podem pessoas apresentar bons frutos e ainda assim serem recha??adas por Cristo no ju??zo? A resposta, como sempre, est?? no pr??prio texto: ???aquele que faz a vontade de meu Pai que est?? nos c??us??? (Mt. 7:21). O segredo do bom fruto, portanto, n??o ?? o fruto em si. O segredo, segundo o Mestre, ?? o bom fruto produzido por fazer a vontade do Pai. A continua????o mostra a diferen??a entre dois homens que constroem casas. Um sobre a rocha e outro sobre a areia (Mt. 7:24-27). Ambos edificaram casas, o que na rela????o com os versos anteriores se aplica aos frutos. Mas um deles construiu sobre a rocha e outro sobre a areia. Um, o que construiu sobre a rocha, simboliza os que ouvem e praticam as palavras de Jesus. Outro, o que construiu sobre a areia, simboliza os que n??o ouvem e nem praticam as palavras de Jesus. A l??gica do Reino subverte a l??gica do reino. Na realidade, o discurso dos frutos e a par??bola dos construtores aponta um fen??meno: muitos apresentam frutos; bons frutos. Mas s?? na tempestade ?? que s??o separados os que fizeram a vontade de DEUS daqueles que fizeram a sua pr??pria vontade. N??o se contente com a esfera das apar??ncias. N??o viva e busque uma religi??o de a????es vis??veis, de manique??smo barato. Fazer o bem e ser bom est?? al??m disso: est?? em fazer a vontade de DEUS. E nem se preocupe com o outro. N??o se preocupe se ele faz o bem ou ?? bom. Isto a tempestade dir?????



