#!/bin/bash
echo "      _   _                                    "
echo "  ___| |_| |__   ___ _ __ ___ _   _ _ __ ___   "
echo " / _ \ __| '_ \ / _ \ '__/ _ \ | | | '_ \` _ \ "
echo "|  __/ |_| | | |  __/ | |  __/ |_| | | | | | | "
echo " \___|\__|_| |_|\___|_|  \___|\__,_|_| |_| |_| "
echo ""


echo "Bash version ${BASH_VERSION}..."
nodenum=1
while getopts "n:" arg #选项后面的冒号表示该选项需要参数
do
    case $arg in
        n)  
            echo "Creating the :$OPTARG Node..." #参数存在$OPTARG中
            nodenum=$OPTARG
            ;;
        ?)  #当有不认识的选项的时候arg为?
            echo "unkonw argument"
            echo "nodenum is defualt 1"
            $nodenum=1
            ;;
    esac
done
# 开始创建节点
datep=`date '+%Y/%m/%d'`
echo "Now date is $datep"
echo ""

if [ $nodenum == 1 ]
then
   	echo "Crete the First Node.."
	logpath="$HOME/Workspace/chainblock/ethereum/log/"${datep}"/"${nodenum}
	datapath="$HOME/Workspace/chainblock/ethereum/data/"${datep}"/"${nodenum}
	# echo "The log direction path is: "${logpath}
	# echo "The data direction path is: "${datapath}
	echo ""
	if [ ! -d $logpath ]
	then
	        echo "directory " $logpath " does not exist.";
	        mkdir -p $logpath
	fi
	if [ ! -d $datapath ]
	then
	        echo "directory " $datapath " does not exist.";
	         mkdir -p $datapath
	fi
	geth --datadir="$datapath" -verbosity 6 --ipcdisable --port 30301 --rpc --rpcport 8101 console 2>> ${logpath}"/"${nodenum}".log"
elif [ $nodenum == 2 ]
then
    echo "Crete the Second Node.."
	logpath="$HOME/Workspace/chainblock/ethereum/log/"${datep}"/"${nodenum}
	datapath="$HOME/Workspace/chainblock/ethereum/data/"${datep}"/"${nodenum}
	# echo "The log direction path is: "${logpath}
	# echo "The data direction path is: "${datapath}
	echo ""
	if [ ! -d $logpath ]
	then
	        echo "directory " $logpath " does not exist.";
	        mkdir -p $logpath
	fi
	if [ ! -d $datapath ]
	then
	        echo "directory " $datapath " does not exist.";
	         mkdir -p $datapath
	fi
	geth --datadir="$datapath" --verbosity 6 --ipcdisable --port 30302 --rpc --rpcport 8102 console 2>> ${logpath}"/"${nodenum}".log"
elif [ $nodenum == 3 ]
then
	echo "Crete the Third Node.."
	logpath="$HOME/Workspace/chainblock/ethereum/log/"${datep}"/"${nodenum}
	datapath="$HOME/Workspace/chainblock/ethereum/data/"${datep}"/"${nodenum}
	# echo "The log direction path is: "${logpath}
	# echo "The data direction path is: "${datapath}
	echo ""
	if [ ! -d $logpath ]
	then
	        echo "directory " $logpath " does not exist.";
	        mkdir -p $logpath
	fi
	if [ ! -d $datapath ]
	then
	        echo "directory " $datapath " does not exist.";
	         mkdir -p $datapath
	fi
	geth --datadir="$datapath" --verbosity 6 --ipcdisable --port 30303 --rpc --rpcport 8103 console 2>> ${logpath}"/"${nodenum}".log"
else
   echo "None of the condition met"
fi

#geth --datadir="/tmp/eth/60/01" -verbosity 6 --ipcdisable --port 30301 --rpcport 8101 console 2>> /tmp/eth/60/01.log
