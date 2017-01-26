Salt Pillar Data
================

### Setup
```
brew install gpg2
sudo ln -s /usr/local/bin/gpg2 /usr/local/bin/gpg
gpg --import salt-masterless_pubkey.gpg
```

### Encrypted pillar data

```
# import pub key into keyring
gpg --import salt-masterless_pubkey.gpg

# encrypt message using pubkey
echo -n "supersecret" | gpg --armor --batch --trust-model always --encrypt -r salt-masterless
```

[Salt GPG](https://docs.saltstack.com/en/latest/ref/renderers/all/salt.renderers.gpg.html)
