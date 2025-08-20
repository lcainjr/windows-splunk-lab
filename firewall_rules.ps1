# Allow inbound TCP 9997 on Splunk Enterprise server
New-NetFirewallRule -DisplayName "Allow Splunk Receiver 9997" -Direction Inbound -Protocol TCP -LocalPort 9997 -Action Allow

# Allow outbound TCP 9997 on Windows 11 (Universal Forwarder) machine
New-NetFirewallRule -DisplayName "Allow UF Outbound 9997" -Direction Outbound -Protocol TCP -RemotePort 9997 -Action Allow
