[windows-splunk-lab_README.md](https://github.com/user-attachments/files/21879674/windows-splunk-lab_README.md)
# 🖥️ Windows Splunk Lab

This is a hands-on **SOC Analyst lab** that simulates real-world log ingestion and analysis using **Splunk Enterprise** and a **Windows 11 Universal Forwarder**.

> ✅ Goal: Ingest and analyze Windows Event Logs through Splunk to simulate a SOC data pipeline.

---

## 📦 Lab Components

| Role              | OS / Tool                  | Purpose                              |
|-------------------|----------------------------|--------------------------------------|
| Log Source        | Windows 11                 | Host running Splunk Universal Forwarder |
| Log Collector     | Windows Server 2019        | Host running Splunk Enterprise       |
| SIEM              | Splunk Enterprise (Free Tier) | Log indexing and analysis           |

---

## 🔧 What’s Configured So Far

- [x] Installed Splunk Universal Forwarder on Windows 11
- [x] Enabled Event Log forwarding (`Security`, `System`, `Application`)
- [x] Opened port **9997** on Splunk Enterprise server
- [x] Configured TCP data input in Splunk Web
- [x] Confirmed active forwarding using:
  ```powershell
  .\splunk list forward-server -auth admin:<your_password>
  ```

---

## 🗂️ Directory Structure

```text
windows-splunk-lab/
│
├── README.md
├── config/
│   ├── inputs.conf
│   └── outputs.conf
├── scripts/
│   └── firewall_rules.ps1
└── screenshots/
    └── splunk_active_forward.png
```

---

## 📷 Screenshots

_Add screenshots of:_
- Splunk Web showing incoming logs
- Terminal showing `Active forwards`
- Your search results for Event Logs

---

## 🚀 Next Steps (Optional)

- Add Sysmon and forward additional logs
- Create basic correlation searches (failed logons, new users)
- Build a custom Splunk dashboard
- Install Splunk Add-on for Windows
- Try parsing PowerShell logs and DNS logs

---

## 📊 Useful Splunk Searches

```spl
index=* host=<YourWindows11Host>
index=* | stats count by host sourcetype
sourcetype=WinEventLog:Security
```

---

## 👨‍💻 Why This Lab Matters

This setup mirrors real-world SIEM environments. It demonstrates your ability to:

- Configure secure log pipelines
- Troubleshoot connectivity and ingestion issues
- Work with Splunk's ingestion and search features
- Build repeatable, auditable SOC infrastructure

---

## ✅ How to Add This to GitHub

1. Clone your repo:
```bash
git clone https://github.com/<your-username>/windows-splunk-lab.git
cd windows-splunk-lab
```

2. Drop in your files:
- `README.md`
- `inputs.conf`
- `outputs.conf`
- `firewall_rules.ps1`

3. Commit & push:
```bash
git add .
git commit -m "Initial commit: Splunk + UF + Windows logs"
git push origin main
```

---

## 📫 Contact

_Lab created by Lance Cain._  
For updates, connect on [LinkedIn](https://linkedin.com).
