# Mac OS X Bootstrap

This is a [Chef](https://www.chef.io) repo that I use to for setting up a
new Mac.

## Install Chef Development Kit

Built using the [Chef-DK](https://downloads.chef.io/chef-dk).

## Usage

### Chef Solo

```
$ chef-solo --version
Chef: 12.0.3
```

### Berkshelf

```
$ berks --version
3.2.3
```

```
$ berks vendor
```

### Rake

```
$ rake chef[tanner]
```

## Influences and Thanks

Many thanks to the following people for their similar setups which has
inspired and influenced this code base.

* Ben Bleything <https://github.com/bleything/bootstrap>
* Joshua Timberman <https://github.com/jtimberman/workstation-chef-repo>
* Joe Miller <https://github.com/joemiller/workstation-bootstrap>

## The Apache License, Version 2.0

Copyright 2015 Tanner Donovan <ttdonovan@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.