
# ThorCyberSentinel_Script


Powershell script to block unwanted hosts.  The script must be run by a user with administrative rights on the computer.


## Table of Contents

- Introduction<br>
- Features<br>
- How to Use<br>
- Lists of Urls Provided by StevenBlack and FadeMind <br>
- Contributing<br>
- License<br>

## Introduction

This PowerShell script main purpose is to help enhance your internet security and browsing experience by blocking access to unwanted or malicious websites. It modifies the hosts file on your computer to prevent access to specified domains, effectively protecting you from spam, malware, and spyware while surfing the web.


# Features

1.  Add the list of hosts to be blocked in an array.
2.  Prevents access to known spam, malicious, and spy sites.
3.  Reformats the rest of the `hosts` file so that it consistently uses tab across all entries.
4.  Easy to use with simple execution steps.

## How to Use

Follow the steps below to use the PowerShell script.

1.  Download `ThorCyberSentinel_Script.ps1` script, or clone the repository.
2.  Open in the script in a text editor.
3.  Add entries to be blocked in the `$unwantedHosts` variable.
4.  Open elavated PowerShell.Ensure you run the script with administrative privileges.
5.  Navigate to the location of the script.
6.  Run the script using `.\ThorCyberSentinel_Script.ps1`.
7.  Done.

Note:The time the script takes will depend on the length of the provided list of IPs and URLs given.


## How It Works

The script first checks if it's running with administrative rights. It then reads the current hosts file and defines a list of unwanted hosts to block. Next, it generates new entries with the IP address `127.0.0.1` followed by the hostname of each unwanted site. Afterward, it ensures existing entries are properly formatted and adds new entries to the hosts file if they are not already present. Duplicate entries are removed, and the hosts file is overwritten with the updated content. Finally, a backup of the original hosts file is created, and the script displays the initial and final number of entries.

## Notes:

- Ensure you run the script with administrative privileges to modify the hosts file.
- Make sure to review and customize the list of unwanted hosts according to your needs before executing the script.
- Running the script will modify your computer's hosts file, so use caution and ensure you understand the implications.

## Lists of Urls

Here I provide you with examples of various configurations that can be use.Chose one or everyone by taking the URLs from the .csv provided below

Special thanks to:
https://github.com/FadeMind/hosts.extras <br>
https://github.com/StevenBlack/hosts

 For providing with the scaned URLs lists.
 

 | Host file recipe | Readme | Raw hosts | Unique domains | Non GitHub mirror |
| ---------------- | :----: | :-------: | :------------: | :---------------: |
Unified hosts = **(adware + malware)** | [Readme](https://github.com/StevenBlack/hosts/blob/master/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts) | 127,868 | [link](http://sbc.io/hosts/hosts)
Unified hosts **+ fakenews** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts) | 130,062 | [link](http://sbc.io/hosts/alternates/fakenews/hosts)
**fakenews** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-only/hosts) | 2,194 | [link](http://sbc.io/hosts/alternates/fakenews-only/hosts)
Unified hosts **+ gambling** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts) | 135,984 | [link](http://sbc.io/hosts/alternates/gambling/hosts)
**gambling** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-only/hosts) | 8,128 | [link](http://sbc.io/hosts/alternates/gambling-only/hosts)
Unified hosts **+ porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/porn/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts) | 211,043 | [link](http://sbc.io/hosts/alternates/porn/hosts)
**porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/porn-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-only/hosts) | 83,871 | [link](http://sbc.io/hosts/alternates/porn-only/hosts)
Unified hosts **+ social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts) | 131,060 | [link](http://sbc.io/hosts/alternates/social/hosts)
**social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social-only/hosts) | 3,221 | [link](http://sbc.io/hosts/alternates/social-only/hosts)
Unified hosts **+ fakenews + gambling** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts) | 138,178 | [link](http://sbc.io/hosts/alternates/fakenews-gambling/hosts)
**fakenews + gambling** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-only/hosts) | 10,322 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-only/hosts)
Unified hosts **+ fakenews + porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-porn/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn/hosts) | 213,237 | [link](http://sbc.io/hosts/alternates/fakenews-porn/hosts)
**fakenews + porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-porn-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn-only/hosts) | 86,065 | [link](http://sbc.io/hosts/alternates/fakenews-porn-only/hosts)
Unified hosts **+ fakenews + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social/hosts) | 133,254 | [link](http://sbc.io/hosts/alternates/fakenews-social/hosts)
**fakenews + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social-only/hosts) | 5,415 | [link](http://sbc.io/hosts/alternates/fakenews-social-only/hosts)
Unified hosts **+ gambling + porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-porn/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn/hosts) | 219,159 | [link](http://sbc.io/hosts/alternates/gambling-porn/hosts)
**gambling + porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-porn-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-only/hosts) | 91,999 | [link](http://sbc.io/hosts/alternates/gambling-porn-only/hosts)
Unified hosts **+ gambling + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-social/hosts) | 139,176 | [link](http://sbc.io/hosts/alternates/gambling-social/hosts)
**gambling + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-social-only/hosts) | 11,349 | [link](http://sbc.io/hosts/alternates/gambling-social-only/hosts)
Unified hosts **+ porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/porn-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-social/hosts) | 214,234 | [link](http://sbc.io/hosts/alternates/porn-social/hosts)
**porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/porn-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-social-only/hosts) | 87,091 | [link](http://sbc.io/hosts/alternates/porn-social-only/hosts)
Unified hosts **+ fakenews + gambling + porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-porn/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts) | 221,353 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-porn/hosts)
**fakenews + gambling + porn** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-porn-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-only/hosts) | 94,193 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-porn-only/hosts)
Unified hosts **+ fakenews + gambling + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-social/hosts) | 141,370 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-social/hosts)
**fakenews + gambling + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-social-only/hosts) | 13,543 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-social-only/hosts)
Unified hosts **+ fakenews + porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-porn-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn-social/hosts) | 216,428 | [link](http://sbc.io/hosts/alternates/fakenews-porn-social/hosts)
**fakenews + porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-porn-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn-social-only/hosts) | 89,285 | [link](http://sbc.io/hosts/alternates/fakenews-porn-social-only/hosts)
Unified hosts **+ gambling + porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-porn-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts) | 222,350 | [link](http://sbc.io/hosts/alternates/gambling-porn-social/hosts)
**gambling + porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/gambling-porn-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social-only/hosts) | 95,219 | [link](http://sbc.io/hosts/alternates/gambling-porn-social-only/hosts)
Unified hosts **+ fakenews + gambling + porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-porn-social/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts) | 224,544 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts)
**fakenews + gambling + porn + social** | [Readme](https://github.com/StevenBlack/hosts/blob/master/alternates/fakenews-gambling-porn-social-only/readme.md) | [link](https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social-only/hosts) | 97,413 | [link](http://sbc.io/hosts/alternates/fakenews-gambling-porn-social-only/hosts)


**Expectation**: These unified hosts files should serve all devices, regardless
of OS.

## Sources of hosts data unified in this variant

Updated `hosts` files from the following locations are always unified and
included:

| Host file source | Home page | Raw hosts | License | Issues | Description |
| ---------------- | :-------: | :-------: | :-----: | :----: | ----------- |
Steven Black's ad-hoc list |[link](https://github.com/StevenBlack/hosts/blob/master/data/StevenBlack/hosts) | [raw](https://raw.githubusercontent.com/StevenBlack/hosts/master/data/StevenBlack/hosts) | MIT | [issues](https://github.com/StevenBlack/hosts/issues)| Additional sketch domains as I come across them.
AdAway |[link](https://adaway.org/) | [raw](https://raw.githubusercontent.com/AdAway/adaway.github.io/master/hosts.txt) | CC BY 3.0 | [issues](https://github.com/AdAway/adaway.github.io/issues)| AdAway is an open source ad blocker for Android using the hosts file.
add.2o7Net |[link](https://github.com/FadeMind/hosts.extras) | [raw](https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts) | MIT | [issues](https://github.com/FadeMind/hosts.extras/issues)| 2o7Net tracking sites based on [hostsfile.org](https://www.hostsfile.org/hosts.html) content.
add.Dead |[link](https://github.com/FadeMind/hosts.extras) | [raw](https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Dead/hosts) | MIT | [issues](https://github.com/FadeMind/hosts.extras/issues)| Dead sites based on [hostsfile.org](https://www.hostsfile.org/hosts.html) content.
add.Risk |[link](https://github.com/FadeMind/hosts.extras) | [raw](https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts) | MIT | [issues](https://github.com/FadeMind/hosts.extras/issues)| Risk content sites based on [hostsfile.org](https://www.hostsfile.org/hosts.html) content.
add.Spam |[link](https://github.com/FadeMind/hosts.extras) | [raw](https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts) | MIT | [issues](https://github.com/FadeMind/hosts.extras/issues)| Spam sites based on [hostsfile.org](https://www.hostsfile.org/hosts.html) content.
Mitchell Krog's - Badd Boyz Hosts |[link](https://github.com/mitchellkrogza/Badd-Boyz-Hosts) | [raw](https://raw.githubusercontent.com/mitchellkrogza/Badd-Boyz-Hosts/master/hosts) | MIT | [issues](https://github.com/mitchellkrogza/Badd-Boyz-Hosts/issues)| Sketchy domains and Bad Referrers from my Nginx and Apache Bad Bot and Spam Referrer Blockers
hostsVN |[link](https://github.com/bigdargon/hostsVN) | [raw](https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/hosts-VN) | MIT | [issues](https://github.com/bigdargon/hostsVN/issues)| Hosts block ads of Vietnamese
KADhosts |[link](https://kadantiscam.netlify.app/) | [raw](https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt) | CC BY-SA 4.0 | [issues](https://github.com/PolishFiltersTeam/KADhosts/issues)| Fraud/adware/scam websites.
MetaMask eth-phishing-detect |[link](https://github.com/MetaMask/eth-phishing-detect) | [raw](https://raw.githubusercontent.com/MetaMask/eth-phishing-detect/master/src/hosts.txt) | DON'T BE A DICK PUBLIC LICENSE | [issues](https://github.com/MetaMask/eth-phishing-detect/issues)| Phishing domains targeting Ethereum users.
minecraft-hosts |[link](https://github.com/jamiemansfield/minecraft-hosts) | [raw](https://raw.githubusercontent.com/jamiemansfield/minecraft-hosts/master/lists/tracking.txt) | CC0-1.0 | [issues](https://github.com/jamiemansfield/minecraft-hosts/issues)| Minecraft related tracker hosts
MVPS hosts file |[link](https://winhelp2002.mvps.org/) | [raw](https://winhelp2002.mvps.org/hosts.txt) | CC BY-NC-SA 4.0 | [issues](mailto:winhelp2002@gmail.com)| The purpose of this site is to provide the user with a high quality custom HOSTS file.
shady-hosts |[link](https://github.com/shreyasminocha/shady-hosts) | [raw](https://raw.githubusercontent.com/shreyasminocha/shady-hosts/main/hosts) | CC0-1.0 | [issues](https://github.com/shreyasminocha/shady-hosts/issues)| Analytics, ad, and activity monitoring hosts
Dan Pollock – [someonewhocares](https://someonewhocares.org/) |[link](https://someonewhocares.org/hosts/) | [raw](https://someonewhocares.org/hosts/zero/hosts) | non-commercial with attribution | [issues](mailto:hosts@someonewhocares.org)| How to make the internet not suck (as much).
Tiuxo hostlist - ads |[link](https://github.com/tiuxo/hosts) | [raw](https://raw.githubusercontent.com/tiuxo/hosts/master/ads) | CC BY 4.0 | [issues](https://github.com/tiuxo/hosts/issues)| Categorized hosts files for DNS based content blocking
UncheckyAds |[link](https://github.com/FadeMind/hosts.extras) | [raw](https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts) | MIT | [issues](https://github.com/FadeMind/hosts.extras/issues)| Windows installers ads sources sites based on https://unchecky.com/ content.
URLHaus |[link](https://urlhaus.abuse.ch/) | [raw](https://urlhaus.abuse.ch/downloads/hostfile/) | CC0 | [issues](mailto:contactme@abuse.ch)| A project from [abuse.ch](https://abuse.ch/) with the goal of sharing malicious URLs.
yoyo.org |[link](https://pgl.yoyo.org/adservers/) | [raw](https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext&useip=0.0.0.0) |  | [issues](mailto:pgl@yoyo.org)| Blocking with ad server and tracking server hostnames.



## Contributing

If you'd like to contribute to the project, feel free to fork the repository, make your changes, and submit a pull request. Any improvements or suggestions are highly appreciated.

1.Fork the project.<br>
2.Create a new branch.<br>
3.Make your changes and commit them.<br>
4.Submit a pull request.<br>

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute the code.

The MIT License (MIT)
Copyright © 2023 <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
