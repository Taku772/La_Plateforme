# **Guide de création d'un mini réseau avec une sortie WAN.**



## **Les besoins :** 

* 1 Serveur (Google.Com)
* 2 Routeurs (2901)
* 1 Switch (2960)
* 3 PC



## **Les Configurations :**



|              Serveur Google|              Routeur LAN/WAN|               Routeur Internet|          Switch Hackers Poulette|                     3 PC|
|-|-|-|-|-|
|IP : 150.150.150.10|IP LAN : 192.168.1.1/24    (G0/0)|IP > Routeur 1 : 172.16.0.2/16    (G0/0)|ip-default-Gateway 192.168.1.1|PC Robert IP : 192.168.1.10/24                                         Gtw : 192.168.0.1|
||IP WAN : 172.16.0.1/16     (G0/1)|IP > Srv Google : 150.150.150.1/24 (G0/1)||PC Camille IP : 192.168.1.11/24                             Gtw : 192.168.1.1|
||IP ROUTE : 0.0.0.0 0.0.0.0 172.16.0.2|IP ROUTE : 192.168.1.0 255.255.255.0 172.16.0.1||PC Renaud IP : 192.168.1.12/24<br />Gtw : 192.168.1.1|
||||||

## 

**Le Process :** 



Tout notre laboratoire se passera sur ***Cisco Packet Tracer*** !



##### **Configurations des PC :**



Le PC à Robert nous lui avons attribué comme IP : 192.168.1.10/24 avec la passerelle par défaut 192.168.1.1

Le PC à Camille nous lui avons attribué comme IP : 192.168.1.11/24 avec la passerelle par défaut 192.168.1.1

Le PC à Renaud nous lui avons attribué comme IP : 192.168.1.12/24 avec la passerelle par défaut 192.168.1.1



Nous les avons reliés au Switch avec 3 câbles Ethernet.



##### **Configurations du Switch :** 



J'ai ajouté dans le switch la passerelle par défaut :

Switch>**en**

Switch#**conf t**

Switch(config)#**ip default-gateway 192.168.1.1**



J'ai sauvegardé la conf pour le prochain redémarage :

Switch#**copy running-config startup-config** 

Destination filename \[startup-config]? 

Building configuration...

\[OK]

Switch#



##### **Configurations des Routeurs :** 



###### **Routeur LAN/WAN :** 



J'ai configuré les 2 interfaces (G0/0 et G0/1), G0/0 pour le coté LAN et G0/1 pour le coté WAN.



Pour l'interface G0/0 je lui est attribuée l'adresse IP : 192.168.1.1/24.



Router>**en**

Router#**conf t**

Router(config)#**interface gigabitEthernet0/0**

Router(config-if)#**ip address 192.168.1.1 255.255.255.0**

Router(config-if)#**no shutdown**



Pour l'interface G0/1, je lui est attribuée l'adresse IP : 172.16.0.1/16.



Router(config)#**interface gigabitEthernet0/1**

Router(config-if)#**ip address 172.16.0.1 255.255.0.0**

Router(config-if)#**no shutdown** 



J'ai ensuite ajoutée une route pour la sortie vers le WAN (Serveur Google).



Router(config)#**ip route 0.0.0.0 0.0.0.0 172.16.0.2**



J'ai sauvegardé la conf pour le prochain redémarrage :



Routeur#**copy running-config startup-config**

Destination filename \[startup-config]?

Building configuration...

**\[OK]**

Routeur#



###### **Routeur Internet :** 



J'ai configuré les 2 interfaces (G0/0 et G0/1), G0/0 pour le coté Routeur LAN/WAN et G0/1 pour le coté Serveur Google (Simulation Internet).



Pour l'interface G0/0 je lui est attribuée l'adresse IP : 172.16.0.2/16.



Router>**en**

Router#**conf t**

Router(config)#**interface gigabitEthernet0/0**

Router(config-if)#**ip address 172.16.0.2 255.255.0.0**

Router(config-if)#**no shutdown**



Pour l'interface G0/1, je lui est attribuée l'adresse IP : 150.150.150.1/24.



Router(config)#**interface gigabitEthernet0/1**

Router(config-if)#**ip address 150.150.150.1 255.255.255.0**

Router(config-if)#**no shutdown**



J'ai ensuite ajoutée une route pour le retour vers notre réseau local 192.168.1.0.



Router(config)#**ip route 192.168.1.0 255.255.255.0 172.16.0.1**



###### **Configurations du Serveur Google :**



J'ai attribué une adresse IP au Serveur Google : 150.150.150.10/24 avec la Gateway : 150.150.150.1



J'ai sauvegardé la conf pour le prochain redémarrage :



Router#**copy running-config startup-config**

Destination filename \[startup-config]? 

Building configuration...

**\[OK]**

Router#



## **Phase de TEST :**



###### **ping entre les PC :**

&nbsp;

C:\\>**ipconfig**



FastEthernet0 Connection:(default port)



&nbsp;  Connection-specific DNS Suffix..: 

&nbsp;  Link-local IPv6 Address.........: FE80::209:7CFF:FE59:1696

&nbsp;  IPv6 Address....................: ::

&nbsp;  **IPv4 Address....................: 192.168.1.10**

   **Subnet Mask.....................: 255.255.255.0**

   **Default Gateway.................: ::**

                                     **192.168.1.1**



C:\\>**ping 192.168.1.12**



Pinging 192.168.1.12 with 32 bytes of data:



Reply from 192.168.1.12: bytes=32 time<1ms TTL=128

Reply from 192.168.1.12: bytes=32 time=1ms TTL=128

Reply from 192.168.1.12: bytes=32 time<1ms TTL=128

Reply from 192.168.1.12: bytes=32 time=1ms TTL=128



Ping statistics for 192.168.1.12:

&nbsp;   **Packets: Sent = 4, Received = 4, Lost = 0 (0% loss)**



###### **Ping du PC de Robert vers Google :** 



C:\\>**ping 150.150.150.10**



Pinging 150.150.150.10 with 32 bytes of data:



Request timed out.

Request timed out.

Reply from 150.150.150.10: bytes=32 time=1ms TTL=126

Reply from 150.150.150.10: bytes=32 time=1ms TTL=126



Ping statistics for 150.150.150.10:

&nbsp;   **Packets: Sent = 4, Received = 2, Lost = 2 (50% loss)**



Lors de ce test de ping j'ai reçu 2 "**Request timed out**" car c'est le temps qu'il trouve la route pour la première fois mais ensuite on peut voir avec les 2 derniers ping que tout fonctionne bien.



Tout les points énoncés dans le projets ont étaient respectés :



Goals :



to be able to create a simple network-------------------------------------**OK**

to be able to configure interconnectivity between hosts-------------------**OK**

to be able to connect hosts to the internet-------------------------------**OK**



# Fin du guide.



