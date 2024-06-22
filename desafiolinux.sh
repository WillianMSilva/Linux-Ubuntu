#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_SEC
groupadd GRP_ADM
groupadd GRP_VEN


useradd carlos -c "Carlos" -m -G GRP_ADM -p $(openssl passwd Senha123) -s /bin/bash
useradd maria  -c  "Maria" -m -G GRP_ADM -p $(openssl passwd Senha123) -s /bin/bash
useradd joao   -c  "Joao"  -m -G GRP_ADM -p $(openssl passwd Senha123) -s /bin/bash

useradd debora -c "Debora" -m -G GRP_VEN -p $(openssl passwd Senha123) -s /bin/bash
useradd sebastiana -c "Sebastiana" -m -G GRP_VEN -p $(openssl passwd Senha123) -s /bin/bash
useradd roberto -c "Roberto" -m -G GRP_VEN -p $(openssl passwd Senha123) -s /bin/bash

useradd josefina -c "Josefina" -m -G GRP_SEC -p $(openssl passwd Senha123) -s /bin/bash
useradd amanda -c "Amanda" -m -G GRP_SEC -p $(openssl passwd Senha123) -s /bin/bash
useradd rogerio -c "Rogerio" -m -G GRP_SEC -p $(openssl passwd Senha123) -s /bin/bash


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


