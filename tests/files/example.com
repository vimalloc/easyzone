$TTL 86400

@       IN      SOA     ns1.example.com.      hostmaster.example.com. (
                        2007012501      ; serial number YYMMDDNN
                        28800           ; Refresh
                        7200            ; Retry
                        864000          ; Expire
                        86400           ; Min TTL
                        )

        IN      NS      ns1.example.com. 
        IN      NS      ns2.example.com. 

        IN      MX      10 mail.example.com.
        IN      MX      20 mail2.example.com.
        
        IN      A       10.0.0.1
	IN	AAAA	aaaa:bbbb:cccc::1

                

$ORIGIN example.com.

foo     IN      A       10.0.0.1
foo     IN      AAAA	aaaa:bbbb:cccc::1
        IN      MX      10 mail.example.com.
_xmpp-client._tcp.example.com. IN SRV 20 0 5222 foobar.example.com.

bar     IN      A       10.0.0.2
        IN      A       10.0.0.3
	IN	AAAA	aaaa:bbbb:cccc::2
	IN	AAAA	aaaa:bbbb:cccc::3

foofoo  IN      CNAME   foo.example.com.
