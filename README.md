ATTENTION - this repository is not longer maintained and has [security issues](https://github.com/tpo/webcdist/security). 

webcdist
========

web interface for cdist

Ideas:

    implementation:
        - rails

    login => user based

    - can enter host
    - per host / hostgroup: select configurations
    - per configuration: choose parameter
        for instance configuration == apache
        parameter == hostname, port, ... 

    - trigger configuration of host / hostgroup


CdistConfiguration:
    - name (from user)
    - description (from user)
    - (cdist-)Objects

(cdist-)Object:
    - (cdist-)Type
    - object_id
    - parameter_values
        - parameter_name
        - value

(cdist-)Type:
    - name
    - description 
    - readme (multi line!)
    - is_singleton
    - parameters
        - name
        - type
            - boolean (set / unset no value)
            - optional (with value)
            - required (with value)
            - optional multiple times (with value)
            - required multiple times (with value)
