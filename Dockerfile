FROM eqalpha/keydb:x86_64_v6.2.0 

RUN apt-get update && apt-get install -yq dnsutils vim-tiny git && apt-get clean && rm -rf /var/lib/apt/lists

RUN git clone https://github.com/Azn9/keydb-flyio && mv keydb-flyio/fly / && mv keydb-flyio/keydb.conf /etc/

# Run without Prometheus
CMD ["/fly/start_keydb.sh"]
