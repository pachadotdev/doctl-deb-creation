# doctl-deb

Doctl installer for Ubuntu/Debian that Doesn't use snap.

Just download and run
```bash
sudo gdebi doctl-1.68.0-linux-amd64.deb
```

Or download from the browser and install by double clicking the DEB file.

Tip: Add these to your `.bashrc` if you are going to use doctl constantly, you don't need all of these four envvars
```bash
export DIGITALOCEAN_TOKEN="PUT-TOKEN-2-HERE"
export VENDOR_PORTAL_ADMIN_TOKEN="PUT-TOKEN-2-HERE"
export MARKETPLACE_RO_CLOUD_TOKEN="PUT-TOKEN-3-HERE"
export SSH_KEY="YOUR-AUTHORIZED-SSH-KEY-FINGERPRINT"
```

