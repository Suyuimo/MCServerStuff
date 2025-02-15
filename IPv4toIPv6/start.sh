ipv6=affe:affe

screen socat TCP4-LISTEN:25565,fork,su=nobody TCP6:[$ipv6]:25565
