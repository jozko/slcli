##docker-slcli

Softlayer CLI shipped in a Docker container.

###Usage

* Run the container, it will prompt for SL username and API key.
* After you enter login info you can start using `slcli`.
* If you want to use another set of credentials in the same session, enter `slsetup` to reconfigure credentials.

```
$ docker run --rm -it jozko/slcli
Please enter SoftLayer username and apikey in order to use slcli.
Enter SoftLayer user name [ENTER]: 12345
Enter Softlayer apikey and press [ENTER]: 54321
Current slcli config is:
:..............:.......................................:
:         name : value                                 :
:..............:.......................................:
:     Username : 12345                                 :
:      API Key : 54321                                 :
: Endpoint URL : https://api.softlayer.com/xmlrpc/v3.1 :
:      Timeout : not set                               :
:..............:.......................................:

bash-4.3$ slcli ticket list
...
```

* Once the container is stopped all the container changes are discarded. 
  * It shouldn't leave traces of login data on the system.
