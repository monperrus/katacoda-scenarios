# More digging

It's now time to **run dig again on the same address that you used in the first step**. If all went well
it should now, instead of displaying a proper IP address, say 0.0.0.0. You have successfully blocked the address!

This is an example of how it could look:
```
;; ANSWER SECTION:
example.com.            2    IN      A       0.0.0.0
```

You now have a Pi-hole service running on your device!
