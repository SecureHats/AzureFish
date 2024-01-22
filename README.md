
```pwsh
                                                                          _|_|  _|            _|        
              _|_|_|  _|_|_|_|  _|    _|  _|  _|_|    _|_|          _|            _|_|_|  _|_|_|    
            _|    _|      _|    _|    _|  _|_|      _|_|_|_|      _|_|_|_|  _|  _|_|      _|    _|  
            _|    _|    _|      _|    _|  _|        _|              _|      _|      _|_|  _|    _|  
              _|_|_|  _|_|_|_|    _|_|_|  _|          _|_|_|        _|      _|  _|_|_|    _|    _| 
```

[![SecureHats](https://img.shields.io/badge/Open_Threat_Research-Community-brightgreen.svg)](https://twitter.com/dijkmanrogier)
[![Maintenance](https://img.shields.io/maintenance/yes/2023.svg?style=flat-square)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)</br>
[![Good First Issues](https://img.shields.io/github/issues/securehats/toolbox/good%20first%20issue?color=important&label=good%20first%20issue&style=flat)](https://github.com/securehats/toolbox/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22)
[![Needs Feedback](https://img.shields.io/github/issues/securehats/toolbox/needs%20feedback?color=blue&label=needs%20feedback%20&style=flat)](https://github.com/securehats/toolbox/issues?q=is%3Aopen+is%3Aissue+label%3A%22needs+feedback%22)

# Azure Fish

Another Offensive project to harvest credentials using an ARM template deployment with a fancy UI<br>
<br>
The initial idea is to lure the user into providing credentials required to deploy resources or a feature to Microsoft Azure<br>
To do this the user needs to provide the credentials of a Service Principal or App Registration with permissions to deploy the resources.<br>

In the background during deployment, the provided credentials are stored in a location of the malicious actor who is trying to lure the user.<br>
Now that the credentials are leaked, these can be abused to hijack the subscription.

<!-- This SecureHats repository is used to organize project information and artifacts. 

> Note field

- [ ] unchecked
- [x] checked

```Pwsh
Code example
```

## Heading 2

### Heading 3

#### Heading 4

_italic_

**bold**

inline `code-example` 

 -->

## Not happy?

If you encounter any issues, or hae suggestions for improvements, feel free to open an Issue

[Create Issue](../../issues/new/choose)
