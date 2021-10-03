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

#“Tudo o que uma vez era diretamente vivido tornou-se uma mera representação.” Debord

#A história é conhecida. Moisés abandona o Egito após os egípcios descobrirem que ele matou um egípcio.Seu exílio físico e existencial o leva até a terra de Midiã onde ele é, ironicamente, reconhecido como um egípcio (Êxodo 2:19). Ali Moisés permanece, cria raízes, e sem o leitor ser informado quanto tempo passou, Moisés se encontra só. O começo do terceiro capítulo do livro de Êxodo introduz uma ênfase na palavra “ver” (ra’ah). Até o verso 6 o verbo ocorre cinco vezes. Três das cinco vezes a palavra “ver” é usada diretamente por Moisés. Moisés vê “uma sarça queimando com fogo” (3:3); Moisés vê “uma grande visão” (3:3); DEUS vê que “Moisés se virou para ver” (3:4). Moisés vê, vê, vê. Finalmente, quando Moisés percebe que sua análise fenomenológica da sarça ardente não era como ele havia presumido, isto é, a sarça não era apenas uma “grande visão” ou um espetáculo particular sem significado, o texto diz: “Moisés escondeu o rosto, porque temeu olhar para DEUS” (Êxodo 3:6). A palavra “olhar” (nabat), é diferente da palavra “ver” (ra’ah). A palavra “olhar” carrega a conotação de observação, de olhar com cuidado, de contemplar (Gen 15:5; 19:17, 26; Ex 33:8; Num 12:8; 21:9; 23:2; etc). Aquele que vê, vê, vê… teme olhar. Moisés aparentemente teme aquilo a que já aludimos em posts anteriores com uma citação de Buber. Moisés teme “a crucialidade do momento” em que Revelação acontece. Para uma sociedade imersa no espetáculo, dependente de “grandes visões,” de sarças que queimam sem significado ou revelação, este texto é oportuno. Como Moisés vendo “grandes visões” queremos, em nossa solidão, nos deparar com isto e nada mais. Uma vez que somos confrontados com a simplicidade do Revelador, com o chamado para as sandálias serem retiradas, travamos. Queremos programações, shows, eventos religiosos para que possamos manter o conforto de ver, ver, ver… sem o desafio de olhar. Pois na hora de olhar, de observar, de ouvir àquEle que fala através da pequenez da sarça, da simplicidade das Escrituras, nos escondemos. Queremos grandes visões, não Revelação. O desafio aqui é grande, pois se fecharmos as cortinas, se desfizermos o palco e o cenário, se abandonarmos nossos personagens no grande teatro da religiosidade superficial, o que irá restar?O Moisés que inicialmente temia olhar… aprendeu a falar com DEUS “face a face, como qualquer fala com seu amigo” (Êxodo 33:11). Entre o que era e o que se tornou existe um deserto que, como Moisés, todos precisamos trilhar; mas primeiramente precisamos tirar as sandalhas diante da simplicidade das Escrituras e desfazer nossa dependência de espetáculos, de “grandes visões,” e de tudo aquilo que nos mantém inertes em Midiã. Alguns textos parecem tão simples e, muitas vezes, são tão simploriamente aplicados, que seu real sentido –aquilo que é importante de fato– passa desapercebido. Um destes textos é Mateus 7:15-27. Ali, no final de um grande sermão, Jesus passa a tratar de um tema que parece óbvio: falsos profetas.O conselho é claro e plenamente compreensível: “pelos seus frutos os conhecereis” (Mt. 7:16). O argumento derivado do conselho também parece lógico: se um indivíduo é bom, seus frutos serão bons. Se um indivíduo é mau, seus frutos serão maus. Portanto, para saber se alguém é enviado de DEUS –um verdadeiro profeta– basta olhar seus frutos: “pelos seus frutos os conhecereis” (Mt. 7:20) repete o Mestre. Ora, o raciocínio é muito básico. Muito simples. Entretanto, qualquer maniqueísta poderia ser responsável por uma frase ou idéia como esta. A relevância do texto é que ele não pára aí. Jesus, diferentemente de qualquer expositor simplório do texto, não se apega ao maniqueísmo barato  que parece ter se construído. ELE continua com: “nem todo o que me diz: Senhor, Senhor! entrará no reino dos céus, mas aquele que faz a vontade de meu Pai que está nos céus. Muitos, naquele dia, hão de dizer-me: Senhor, Senhor! Porventura não temos nós profetizado em teu nome, e em teu nome não expelimos demônios, e em teu nome não fizemos muitos milagres? Então, lhes direi explicitamente: nunca vos conheci. Apartai-vos de mim, os que praticais a iniquidade.” (Mt. 7:21-23)Aqui percebemos o quão profundo é o discurso do Mestre. Seria um bom fruto o dom de profecia? Claro! Seria um bom fruto o expelir demônios? Claro! Seria um bom fruto fazer milagres? Claro! São todos, inclusive, frutos que o próprio Messias, Jesus, apresenta eem Seu ministério (Mt. 24 e 25; Mt. 9:32-34; 8:28-34; 8:1-17; etc). Como, então, podem pessoas apresentar bons frutos e ainda assim serem rechaçadas por Cristo no juízo? A resposta, como sempre, está no próprio texto: ”aquele que faz a vontade de meu Pai que está nos céus” (Mt. 7:21). O segredo do bom fruto, portanto, não é o fruto em si. O segredo, segundo o Mestre, é o bom fruto produzido por fazer a vontade do Pai. A continuação mostra a diferença entre dois homens que constroem casas. Um sobre a rocha e outro sobre a areia (Mt. 7:24-27). Ambos edificaram casas, o que na relação com os versos anteriores se aplica aos frutos. Mas um deles construiu sobre a rocha e outro sobre a areia. Um, o que construiu sobre a rocha, simboliza os que ouvem e praticam as palavras de Jesus. Outro, o que construiu sobre a areia, simboliza os que não ouvem e nem praticam as palavras de Jesus. A lógica do Reino subverte a lógica do reino. Na realidade, o discurso dos frutos e a parábola dos construtores aponta um fenômeno: muitos apresentam frutos; bons frutos. Mas só na tempestade é que são separados os que fizeram a vontade de DEUS daqueles que fizeram a sua própria vontade. Não se contente com a esfera das aparências. Não viva e busque uma religião de ações visíveis, de maniqueísmo barato. Fazer o bem e ser bom está além disso: está em fazer a vontade de DEUS. E nem se preocupe com o outro. Não se preocupe se ele faz o bem ou é bom. Isto a tempestade dirá…



