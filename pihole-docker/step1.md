# Ads

On the web we are blasted with ads and many ad blockers are imperfect and only work on a browser-basis, which means you have to install them on all your devices (which is often not even possible on some devices, e.g. mobile phones). Pi-hole is a solution that blocks the ads without web pages being alerted that it has been blocked. It works by not resolving certain host names to IP addresses, if the host name is in the aforementioned list of known ad providers, when doing a DNS lookup.

## DNS lookup

A DNS lookup is a mechanism to map a dynamic web address "example.com" to a host address (IP address) "123.45.67.89". This process is done by asking a DNS server about a specific web address and then being given the IP address to go to. The Pi-hole service is a DNS server that filters out known ad addresses and returns a "null" value (0.0.0.0).

## Doing a DNS lookup

A DNS lookup can be done by executing the `dig` command with a specific web address. This is an example of how it is done (**but you must use an ad web address for the next step**):

```
dig example.com
```

**Now find an address at [this page](https://v.firebog.net/hosts/static/w3kbl.txt) for known ad sites and run the dig command with it.**

In the result you should be able to find something like this (**but with the website you found**):

*The output may look strange because of small window size wrapping the line.*
```
;; ANSWER SECTION:
example.com.            4541    IN      A       93.184.216.34
```

**If you did not, try another address in the list.**

The last entry in the answer section is the IP address to the host (server) that example.com points to. As you can see, the DNS service will find the host related to the ad service. **Remember the address as we will get back to it later.**

If you would like to know more about DNS records:
- [here's](https://www.digitalocean.com/community/tutorials/an-introduction-to-dns-terminology-components-and-concepts) a link to an article from Digital Ocean
- [here's](https://internetstiftelsen.se/guide/introduktion-till-ip-internet-protocol/domain-name-system-dns/) a link to an article from The Swedish Internet Foundation.
