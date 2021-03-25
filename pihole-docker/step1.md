# Ads

On the web we are blasted with ads and many ad blockers are imperfect and work in-browser. Pi-hole is a solution that blocks the ads without web pages being alerted that it has been blocked. It works by not resolving to a host when doing a DNS lookup.

## DNS lookup

A DNS lookup is a mechanism to map a dynamic web address "example.com" to a host address (IP address) "123.45.67.89". This process is done by asking a DNS server about a specific web address and then being given the IP address to go to. The Pi-hole service is a DNS server that filters out known ad addresses and returns a "null" value (0.0.0.0).

## Doing a DNS lookup

A DNS lookup can be done by executing the `dig` command with a specific web address. This is an example:

```
$ dig example.com
```

**Now find an address at [this page](https://v.firebog.net/hosts/static/w3kbl.txt) for known ad sites and run the dig command with it.**

In the result you should be able to find something like this:

```
;; ANSWER SECTION:
example.com.            4541    IN      A       93.184.216.34
```

If you did not, try another address in the list.

The last entry is the IP address to the host (server) that example.com points to. As you can see, the DNS service will find the host related to the ad service. **Remember the address as we will get back to it later.**
