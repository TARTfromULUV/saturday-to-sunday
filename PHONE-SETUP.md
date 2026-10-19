# Put S2S on your phone

S2S runs on your PC. Your phone reads it. There are two ways to connect.
Pick one.

## Only at home (2 minutes)

Works when your phone is on the same Wi-Fi as the PC. Nothing to install.

1. Put your phone on the same Wi-Fi as the PC.
2. On the PC, open S2S ▸ **Settings ▸ On your phone ▸ Only at home**.
3. Point your phone's camera at the code and tap the link.
4. Add it to your Home Screen. That puts an S2S icon next to your apps, and
   it opens full screen like a real app.
   - **iPhone:** in **Safari**, tap **Share** (on newer iPhones it's in the
     **•••** menu), then **Add to Home Screen** ▸ **Add**.
   - **Android:** in **Chrome**, tap **⋮** then **Add to Home screen** (or
     **Install app**).

> **iPhone: use Safari.** If the link opened in Chrome or another browser,
> copy it into Safari first. Other browsers can add an icon too, but it may
> open as a normal browser tab instead of full screen.

Then open S2S from the new icon, not the camera.

## Anywhere: cellular and any Wi-Fi (5 minutes)

Uses **Tailscale**, a free app that links your phone and your PC privately.
Nothing goes on the internet. Only your own devices can use it.

**On the PC**

1. Install Tailscale from [tailscale.com/download](https://tailscale.com/download)
   and sign in (Google, Apple or Microsoft).

**On your phone**

2. Install Tailscale from the App Store or Google Play.
3. Sign in with the **same account** you used on the PC.
4. Switch Tailscale **on**. iPhone asks to add a VPN: tap **Allow**.

**Open S2S**

5. On the PC, open S2S ▸ **Settings ▸ On your phone ▸ Anywhere**. Part 1
   shows a tick once S2S sees Tailscale on the PC (reload the page if it
   doesn't).
6. Scan the **Anywhere code** and add it to your Home Screen (same taps as
   above).

Use the Anywhere icon for everything. It works at home too.

## Either way

- The PC has to be **on and awake, with the S2S window open**. Close the
  window and the phone can't reach it. **Settings ▸ Start with Windows**
  keeps S2S running after a restart.
- The link has your private key in it. Don't post it anywhere.

## My phone can't connect

Check these in order. Most of the time it's the first one.

1. **Is the PC on and awake, with the S2S window open?** A sleeping PC can't
   answer.
2. **Only at home:** is the phone on the same Wi-Fi as the PC? Not the guest
   network, and not cellular.
3. **Anywhere:** is Tailscale switched on, on the phone? Open the Tailscale
   app and check it says Connected.
4. **Windows Firewall.** The first time S2S runs, Windows asks to allow
   Node.js. If you tapped Cancel: Start ▸ "Allow an app through Windows
   Firewall" ▸ tick **Node.js** for Private and Public.
5. **Says "Need the key"?** Scan the code on the PC again.
