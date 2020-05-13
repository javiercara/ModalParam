# ModalParam.jl

[![Travis](https://img.shields.io/travis/org/javiercara/ModalParam.jl?label=Linux%20%26%20osx&logo=travis&style=flat-square)](https://travis-ci.org/javiercara/ModalParam.jl.svg?branch=master)

`ModalParam.jl` is a Julia package to compute the modal parameters from a state space model. There are two posibilities:

- Models for output-only data:

x_{t+1} = Ax_{t} + w_{t}

y_{t}   = Cx_{t} + v_{t}

- Models for input-output data:

x_{t+1} = Ax_{t} + Bu_{t} + w_{t}

y_{t}   = Cx_{t} + Du_{t} + v_{t}

## Installation

To install the package, from within Julia do

~~~
julia> using Pkg; Pkg.add(PackageSpec(url="https://github.com/javiercara/ModalParam.jl", rev="master"))
~~~

## Author

* **Javier Cara**, javier.cara@upm.es, ETSI Industriales, Universidad Politecnica de Madrid (Spain).
