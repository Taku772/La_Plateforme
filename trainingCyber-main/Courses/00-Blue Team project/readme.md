# Monitoring, IDS, SIEM, Threat detection
Duration : 3 days 

## Monitoring 
Monitoring refers to the continuous observation and analysis of network traffic, system activities, and user behaviors to ensure the security and integrity of an organization's IT environment. Monitoring aims to detect potential security threats, anomalies, and policy violations in real-time, enabling timely response and mitigation. 

Example : Splunk

## IDS 
An IDS (Intrusion Detection System) is a security device or software used to monitor and analyze network traffic or system activities to detect malicious behavior or security policy violations. There are primarily two types of IDS:

Network-based IDS (NIDS): Monitors network traffic to identify attacks such as intrusion attempts, port scans, or denial-of-service activities.

Host-based IDS (HIDS): Monitors the activities of a specific system or host, such as log files, file modifications, or system configurations, to detect abnormal behaviors or intrusions.

IDS can operate using different techniques, such as signature-based detection (comparing traffic against a database of known signatures) or anomaly-based detection (identifying behaviors that deviate from the norm). They play a crucial role in the defense-in-depth strategy of computer networks by alerting security administrators to potential threats so they can be addressed promptly.

### Try 

- https://tryhackme.com/r/room/idsevasion

## IPS

An IPS (Intrusion Prevention System) is a network security device or software that monitors network or system activities for malicious behavior and can take immediate action to prevent the detected threats. Unlike an IDS, which only detects and alerts on potential threats, an IPS actively blocks or mitigates these threats in real time.

### Try 
(In VM)
- [Home-network-security-with-suricata](https://www.freecodecamp.org/news/home-network-security-with-suricata-raspberrypi4-python/)

## Add-on & Tools:
- Wazuh : [intro (YT)](https://youtu.be/Hq58_yGJwHk), [config (YT)](https://youtu.be/SCG0wYGS-Mg), [Threat detection (YT)](https://youtu.be/vJZAVZOIpfA) [Wazuh (THM)](https://tryhackme.com/room/wazuhct)
- Suricata : [intro (YT)](https://youtu.be/91i7InHVOso), [config (YT)](https://youtu.be/UXKbh0jPPpg), [Suricata & Wazuh (YT)](https://youtu.be/NB_u9m-MMcY) + [Doc](https://suricata.readthedocs.io/en/latest/what-is-suricata.html)
- [ELK training](https://www.elastic.co/fr/training/free)

