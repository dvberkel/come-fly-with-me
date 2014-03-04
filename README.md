come-fly-with-me
================

Control a friendly flying machine by writing code.

Setup
-----

We are relying on [virtualbox][] and [vagrant][] to be installed on
the host machine.

Then clone this repository with the following command

```sh
git clone https://github.com/dvberkel/come-fly-with-me.git
```

and initialize the submodules it contains

```sh
git submodule update --init --recursive
```

Then you are ready to go and execute

```sh
vagrant up
```

This will bring up a virtual machine ready to control a drone.

Flying
------

Ssh into the virtual machine with by issuing the following command

```sh
vagrant ssh
```

In the `vagrant` home directory you will find a `starterkit`
directory. Enter it and follow the instructions in `README.md`.

Tips & Tricks
-------------

### shared directory

The `/vagrant` directory in virtual machine is shared with the host
machine directory of this repository. So you can create a file (in
that directory) and link it in the virtual machine. This way you can
edit the file with your favourite tools and still use it to control
the drone.

The following command links `/vagrant/control.js` to
`~/starterkit/nodejs/control.js`

```sh
ln -s /vagrant/control.js ~/starterkit/nodeje/control.js
```

[virtualbox]: https://www.virtualbox.org/
[vagrant]: http://www.vagrantup.com/
