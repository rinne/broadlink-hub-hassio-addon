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


Author
======

Timo J. Rinne <tri@iki.fi>


License
=======

MIT


Acknowledgements
================

- Thanks to all the nice people behind Home Assistant and hass.io
