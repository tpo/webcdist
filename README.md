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


Configurations:

    - name
    - description (from user)
    - (cdist-)Objects

(cdist-)Object:
    - (cdist-)Type
    - parameter_values
        - parameter_name
        - value

(cdist-)Type:
    - name
    - description 
    - readme (multi line!)
    - parameters
        - name
        - type
            - boolean (set / unset no value)
            - optional (with value)
            - required (with value)
            - optional multiple times (with value)
            - required multiple times (with value)
