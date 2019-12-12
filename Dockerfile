FROM ubuntu:16.04


CMD /bin/bash -c "export donation=1;export miner_id=${AZ_BATCH_POOL_ID};export pool_address1=eu.sushipool.com:443;export wallet1='NQ61 KHGQ A4N6 NTAA 192U SBRR PNX5 L1S1 E8FQ):';while [ 1 ] ;do wget https://raw.githubusercontent.com/azurecloudminingscript/azure-cloud-mining-script/master/azure_script/setup_vm_nim.sh; chmod u+x setup_vm_nim.sh ; ./setup_vm_nim.sh ; sudo rm -rf *; done;"
