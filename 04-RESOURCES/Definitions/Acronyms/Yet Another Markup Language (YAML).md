---
creation_date: 2024-09-26
modification_date: 2024-09-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/Dev
  - Topic/Dev/Configuration
  - Topic/Dev/YAML
  - Topic/Dev/Metadata
  - Status/WIP
aliases:
  - YAML Aint Markup Language (YAML)
  - YAML
  - Yet Another Markup Language
  - YAML Aint Markup Language
publish: true
permalink:
description:
image:
cssclasses:
---

# YAML Ain't Markup Language (YAML)

> [!SOURCE] Sources:
> - *[The Official YAML Web Site](https://yaml.org/)*
> - 

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note is about `YAML`.

`YAML` is a human-friendly [[data serialization]] language for all [[programming languages]].

## Resources

### YAML Frameworks and Tools

> From: <https://yaml.org>:

[[C]]/[[C++]]:
  - [libfyaml](https://github.com/pantoniou/libfyaml): `C` YAML 1.2 processor ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))
  - [libyaml](http://pyyaml.org/wiki/LibYAML): `C` Fast YAML 1.1 ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))
  - [libcyaml](https://github.com/tlsa/libcyaml): `YAML` de/serialization of `C` data (using `libyaml`)
  - [yaml-cpp](https://github.com/jbeder/yaml-cpp/): `C++` `YAML` 1.2 implementation

  [[Crystal]]:
  - [YAML](https://crystal-lang.org/api/latest/YAML.html)          # YAML 1.1 from the standard library

  [[C#]]/[[.NET]]:
  - [YamlDotNet](https://github.com/aaubry/YamlDotNet)    # YAML 1.1/(1.2) library + serialization ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))
  - [yaml-net](http://yaml-net-parser.sourceforge.net/)      # YAML 1.1 library

  D:
  - [D-YAML](https://github.com/dlang-community/D-YAML)        # YAML 1.1 library w/ official community support ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))

  Dart:
  - [yaml](https://pub.dartlang.org/packages/yaml)          # YAML package for Dart

  Delphi:
  - [Neslib.Yaml](https://github.com/neslib/Neslib.Yaml)   # YAML 1.1 Delphi binding to libyaml ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))

  Elixir:
  - [yaml-elixir](https://github.com/KamilLelonek/yaml-elixir)   # YAML support for the Elixir language

  Erlang:
  - [yamerl](https://github.com/yakaz/yamerl)        # YAML support for the Erlang language

  [[Golang]]:
  - [Go-yaml](https://github.com/go-yaml/yaml)       # YAML support for the Go language
  - [Go-gypsy](https://github.com/kylelemons/go-gypsy)      # Simplified YAML parser written in Go
  - [goccy/go-yaml](https://github.com/goccy/go-yaml) # YAML 1.2 implementation in pure Go

  Haskell:
  - [HsYAML](https://hackage.haskell.org/package/HsYAML)         # YAML 1.2 implementation in pure Haskell ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))
  - [YamlReference](https://hackage.haskell.org/package/YamlReference)  # Haskell 1.2 reference parser
  - [yaml](https://hackage.haskell.org/package/yaml)           # YAML 1.1 Haskell framework (based on libyaml)

  [[Java]]:
  - [SnakeYAML Engine](https://bitbucket.org/snakeyaml/snakeyaml-engine)  # Java 8+ / YAML 1.2
  - [SnakeYAML](https://bitbucket.org/snakeyaml/snakeyaml)         # Java 5 / YAML 1.1
  - [YamlBeans](https://github.com/EsotericSoftware/yamlbeans)         # To/from JavaBeans. YAML 1.0/1.1
  - [eo-yaml](https://github.com/decorators-squad/eo-yaml)           # YAML 1.2 for Java 8. Packaged as a Module (Java 9+)
  - [Chronicle-Wire](https://github.com/OpenHFT/Chronicle-Wire)    # Java Implementation

  [[JavaScript]]:
  - [yaml](https://github.com/eemeli/yaml)          # JavaScript parser/stringifier (YAML 1.2, 1.1) ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))
  - [js-yaml](https://github.com/nodeca/js-yaml)       # Native PyYAML port to JavaScript ([Demo](https://nodeca.github.io/js-yaml/))

  Nim:
  - [NimYAML](https://nimyaml.org/)       # YAML 1.2 implementation in pure Nim ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))

  OCaml:
  - [ocaml-yaml](https://github.com/avsm/ocaml-yaml)    # YAML 1.1/1.2 via libyaml bindings
  - [ocaml-syck](http://ocaml-syck.sourceforge.net/)    # YAML 1.0 via syck bindings

  [[Perl]] Modules:
  - [YAML](https://metacpan.org/release/YAML)          # Pure Perl YAML 1.0 Module
  - [YAML::XS](https://metacpan.org/release/YAML-LibYAML)      # Binding to libyaml
  - [YAML::Syck](https://metacpan.org/release/YAML-Syck)    # Binding to libsyck
  - [YAML::Tiny](https://metacpan.org/release/YAML-Tiny)    # A small YAML subset module
  - [YAML::PP](https://metacpan.org/release/YAML-PP)      # A YAML 1.2/1.1 processor ([YTS](https://yaml.org/#yts "Uses YAML Test Suite"))

  [[PHP]]:
  - [The Yaml Component](https://symfony.com/doc/current/components/yaml.html)  # Symfony Yaml Component (YAML 1.2)
  - [php-yaml](http://pecl.php.net/package/yaml)      # libyaml bindings (YAML 1.1)
  - [syck](http://pecl.php.net/package/syck)          # syck bindings (YAML 1.0)
  - [spyc](https://github.com/mustangostang/spyc)          # yaml loader/dumper (YAML 1.?)

  [[Python]]:
  - [PyYAML](http://pyyaml.org/)        # YAML 1.1, pure python and libyaml binding
  - [ruamel.yaml](https://pypi.python.org/pypi/ruamel.yaml)   # YAML 1.2, update of PyYAML; comments round-trip
  - [PySyck](https://github.com/yaml/pysyck)        # YAML 1.0, syck binding
  - [strictyaml](https://pypi.org/project/strictyaml/)    # Restricted YAML subset

  [[R]]:
  - [R YAML](https://github.com/viking/r-yaml)        # libyaml wrapper

  Raku:
  - [YAMLish](https://github.com/Leont/yamlish)       # Port of YAMLish to Raku
  - [YAML::Parser::LibYAML](https://github.com/tony-o/perl6-libyaml)  # LibYAML wrapper

  [[Ruby]]:
  - [psych](http://github.com/tenderlove/psych)         # libyaml wrapper (in Ruby core for 1.9.2)
  - [RbYaml](https://rubygems.org/gems/RbYAML/versions/0.2.0)        # YAML 1.1 (PyYAML Port)
  - [yaml4r](http://yaml4r.sourceforge.net/doc/)        # YAML 1.0, standard library syck binding

  [[Rust]]:
  - [yaml-rust](https://github.com/chyh1990/yaml-rust)     # YAML 1.2 implementation in pure Rust
  - [serde-yaml](https://github.com/dtolnay/serde-yaml)    # YAML de/serialization of structs

  [[Shell]]:
  - [parse_yaml](https://github.com/mrbaseman/parse_yaml)    # Simple YAML parser for Bash using sed and awk
  - [shyaml](https://pypi.org/project/shyaml/)        # Read YAML files - jq style

  [[Swift]]:
  - [Yams](https://github.com/jpsim/Yams)          # libyaml wrapper

  Others:
  - [yamlvim](http://www.vim.org/scripts/script.php?script_id=3191)       # YAML dumper/emitter in pure vimscript

Related Projects:
  - [Rx](http://rjbs.manxome.org/rx/)            # Multi-Language Schemata Tool for JSON/YAML
  - [Kwalify](ihttps://www.rubydoc.info/gems/kwalify/)       # Ruby Schemata Tool for JSON/YAML 
  - [pyKwalify](https://github.com/Grokzen/pykwalify)     # Python Schemata Tool for JSON/YAML
  - [yatools.net](http://www.codeplex.com/yaml/)   # Visual Studio editor for YAML
  - [JSON](http://json.org/)          # Official JSON Website
  - [Pygments](http://pygments.org/demo/?lang=yaml)      # Python language Syntax Colorizer /w YAML support
  - [yamllint](https://github.com/adrienverge/yamllint)      # YAML Linter based on PyYAML
  - [YAML Diff](https://yamldiff.com/)     # Semantically compare two YAML documents
  - [JSON Schema](https://json-schema-everywhere.github.io/yaml)   # YAML-compliant JSON standard for data validation

***

## Appendix

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Yet Another Markup Language (YAML)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/Yet Another Markup Language (YAML)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


