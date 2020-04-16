In a Nutshell
=============

A Hassio addon wrapping a Broadlink Hub.


Installation
============

Steps to install the component to Hassio:

1. Set up ssh connection to your Hassio host and log in.

2. Clone the git repository to the directory /addons

```
$ cd /addons
$ git clone https://github.com/rinne/broadlink-hub-hassio-addon.git
```

3. Navigate to Add-on Store -tab in the Supervisor -screen of your Home
   Assistant.

4. If you can't see Broadlink Hub in the Local Add-ons -section of the
   store, press refresh. When in doubt, restart your Home Assistant
   core.  If the addon does not appear, ensure that it's copied in the
   correct location. The correct location for Hassio is directory
   /addons but other distributions may have different arrangement.

5. Select the Broadlink Hub.

6. Press INSTALL.

7. Once installed, you should end up to Broadlink Hub configuration
   page. This page can also be found through the dashboard -tab of the
   Supervisor -screen.

8. Configure the Broadlink Hub. When Broadlink is running as Hassio
   add-on, it is not possible to use device discovery broadcasts. Instead
   device IP addresses must be enumerated as a list or list of address
   ranges. It is OK to have also IP addresses that don't have Broadlink
   devices at the time. Addresses are just used as a list of addresses to
   probe for devices.

9. If you expose the TCP port of the add-on outside Hassio, you can
   access it directly using a web browser and see your Broadlink
   devices. To actually use them in Home Assistant, you'll need also
   the Broadlink Hub component
   (https://github.com/rinne/broadlink-hub-hass-component).

Steps to install the component to Hassio
----------------------------------------

1. Set up ssh connection to your Hassio host and log in.

2. Clone the git repository to the home directory.

```
$ git clone https://github.com/rinne/broadlink-hub-hass-component.git
```

3. Place the component directory to custom components.

```
$ mv broadlink-hub-hass-component/broadlink_hub /config/custom_components/
```

```
$ mv broadlink-hub-hass-component/broadlink_hub /config/custom_components/
```

When everything is in place, you should have more or less following file hierarchy.

```
$ ls -l /addons
total 4
drwxr-xr-x   4     4096 Apr 10 20:20  broadlink-hub-hassio-addon

$ ls -l /addons/broadlink-hub-hassio-addon
total 316
-rw-r--r--   1      318 Mar 31 19:17  Dockerfile
-rw-r--r--   1     1091 Mar 31 19:17  LICENSE
-rw-r--r--   1     1091 Mar 31 19:17  MIT-RINNE
-rw-r--r--   1      240 Mar 31 19:17  README.md
-rw-r--r--   1      884 Mar 31 19:17  config.json
-rw-r--r--   1    50355 Mar 31 19:17  icon.png
-rw-r--r--   1   242459 Mar 31 19:17  logo.png
-rw-r--r--   1      512 Mar 31 19:17  run.sh

$ ls -l /config/custom_components
total 4
drwxr-xr-x   4     4096 Apr 10 20:20  broadlink_hub

$ ls -l /config/custom_components/broadlink_hub
total 40
-rw-r--r--   1     3917 Mar 31 19:17  __init__.py
-rw-r--r--   1     2005 Mar 31 19:17  config_flow.py
-rw-r--r--   1     6012 Mar 31 19:17  connector.py
-rw-r--r--   1      415 Mar 31 19:17  const.py
-rw-r--r--   1     2213 Mar 31 19:17  entity.py
-rw-r--r--   1      586 Mar 31 19:17  get.py
-rw-r--r--   1      251 Mar 31 19:17  manifest.json
lrwxrwxrwx   1       21 Mar 31 19:17  strings.json -> .translations/en.json
-rw-r--r--   1     3153 Mar 31 19:17  switch.py
```

After this point, the configuration can be done via UI.


Installing the Addon
====================

1. In the UI, go to Supervisor / Add-on Store

2. Find Broadlink Hub in local add-ons. If it's not visible, press
   refresh, restart Hassio core, and check that you have cloned the addon
   repository to the correct directory.

3. Click install.

4. Wait.

5. Configure the add-on. Essentials are username, password, and the
   IP-addresses or ranges where your Broadlink devices can be found.

6. Enable the addon.


Enabling the Integration
========================

1. In the UI, go to Configuration / Integrations

2. Click add integration.

3. Select Broadlink Hub from the list of integrations. If it's not in
   the list, press refresh, restart Hassio core, and check that you
   have copied the component directory to the correct directory.

4. Configure integration hostname to local-broadlink-hub-hassio-addon
   and port number to 8525 and set username and password according to
   your addon configuration.

5. Your Broadlink devices should now appear in the UI and be fully
   configurable via the UI.


Author
======

Timo J. Rinne <tri@iki.fi>


License
=======

MIT


Acknowledgements
================

- Thanks to all the nice people behind Home Assistant and hass.io
