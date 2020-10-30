<h1>fortune</h1>
<p>
  <a href="./LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
  <a href="https://twitter.com/mr_roose" target="_blank">
    <img alt="Twitter: mr_roose" src="https://img.shields.io/twitter/follow/mr_roose.svg?style=social" />
  </a>
</p>


> Display random quotes

`fortune` is powershell implementation of the Unix `fortune` program that displays a random message from a database of quotations.

Default fortune file contains quotes from http://fortunes.cat-v.org/openbsd/

## Prerequisites

- [scoop](https://github.com/lukesampson/scoop)
- [PowerShell 5](https://aka.ms/wmf5download) (or later, include [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-6))

## Install

First add custom bucket and install completion:

```powershell
# add auto-update bucket
scoop bucket add scoop-tools https://github.com/roose/scoop-tools

# install
scoop install fortune
```

## Usage

```powershell
fortune path\to\fortune_file
```

If you don't specify a file path, *fortune* defaults to the contents of the `fortune.txt` in app directory.

## Fortune Cookie File Format

```
!07/11 PDP a ni deppart m'I !pleH
%
(1) Alexander the Great was a great general.
(2) Great generals are forewarned.
(3) Forewarned is forearmed.
(4) Four is an even number.
(5) Four is certainly an odd number of arms for a man to have.
(6) The only number that is both even and odd is infinity.

Therefore, Alexander the Great had an infinite number of arms.
%
(1) Everything depends.
(2) Nothing is always.
(3) Everything is sometimes.
```

