## myrule

针对常见的需要翻墙的域名走【翻墙】，其余走【尚未匹配】，默认是直连。如果是你翻墙主要是为了谷歌全家桶，telegram，chatGPT，github，维基百科，国外社交网站等常见的内容，希望clash的rule规则尽可能精简，那么这个配置就非常适合你。

针对常见的几个地区的节点，包括香港，日本，美国，台湾，新加坡，单独【proxy group】，这样【翻墙】可以选择特定地区的节点。

规则没用geoip，所有的ip规则都加了no-resolve，在clash仅开启http proxy，不开tun的情况下，应该是不会有dns泄露的。

规则中包含了：
- 微软的域名，单独【proxy group】控制，因为其大部分时候是直连，但偶尔需要翻墙；
- AI的域名，包括[chatGPT](https://raw.githubusercontent.com/Repcz/Tool/X/Clash/Rules/OpenAI.list)，[Claude](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Claude/Claude.list)和[Gemini](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Gemini/Gemini.list)的域名，单独【proxy group】控制，因为其对节点要求比较高，有时需要单独指定节点；
- 其余域名，包括[Telegram](https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list)，[YouTube](https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/YouTube.list)和[GFWlist](https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyGFWlist.list)，走【翻墙】，基本上包含了常见的需要翻墙的内容；
- [自定义翻墙域名](https://raw.githubusercontent.com/Wrandz/myrule/main/Proxy.list)，走【翻墙】，在使用中发现的一些小众的没有被GFWlist收录的需要翻墙的域名；
- [自定义直连域名](https://raw.githubusercontent.com/Wrandz/myrule/main/Direct.list)，在使用中发现的一些必须要直连的域名；
- 尚未匹配，以上都没匹配到的域名，单独【尚未匹配】控制，默认直连。

如果在使用中发现，有哪个域名需要翻墙，但[自定义翻墙域名](https://raw.githubusercontent.com/Wrandz/myrule/main/Proxy.list)中没有收录，欢迎针对此提交issue或者PR，我看到了会加上。
