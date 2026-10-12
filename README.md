# Funkin Compiler package repository

This repo contains my personal project folders used for developing .fcpkg files.

## What is ".fcpkg"

.fcpkg (Funkin Compiler package) is a zipped [".haxelib" folder](https://lib.haxe.org/documentation/using-haxelib/#newrepo) plus a couple of files to tell haxe how to analyse and compile code targeting Friday Night Funkin'.

This format is currently used by two projects:
- Funkin Compiler
- Mikolka's CPPIA compiler

## Variants of FcPkg files

Officially, I distribute two variants of those files:
- "shallow" is a file containing only a set of patches and other configurations to apply in order to get a usable package
- "full" a ready to use package by the end users (in this case FNF modders)

## How to get FcPkg files

https://github.com/FunkinCompiler/fcpkg-cdn/releases

## How to make FcPkg

In the future I might write a step-by-step guide. For now ``fcext-funklua`` is a sample package targeting "LuaSlice Engine" and ``example-fcpkg`` is focused on documenting features available to the "shallow" packages (work in progress).