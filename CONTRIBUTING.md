# Contributing new templates

Before submitting a pull request, please spend some time reviewing these guidelines - they're not so long.
If your pull request doesn't comply, it **WON'T** be approved. 
If it does, it doesn't necessarily mean it will be accepted.

## Template head

Each template file needs to start with a short comment section that describes it.
This is an example from `pb071_make.templ`:
```
<#--
Makefile to compile a project for PB071 course(single binary, single file)
Author: Tomas Jasek
Variables:
project - Name of project. This makefile uses it also for binary name, name of obj file and name of main c file
-->
```

These are rules for template head:

+ Line that contains `<#--` is the first line of the file
+ First line doesn't contain anything else than `<#--`
+ The 2nd line of file is short description of the template
+ The 3rd line of file says who is author of the template. `Author:` part MUST be case-correct and always present on the line
+ The 4th line of file always says `Variables:` and then list of variables follows. The list of variables must also follow format specified below

Rules for variables list:

+ There is one entry per line
+ Each line starts with name of variable(see variable naming conventions below) 
+ Name of variable is followed by a minus sign (`-`) 
+ After minus sign, variable description is expected 

The head section always ends with `-->`(it's requirement of template syntax language).

Example variable entry:
```
project - name of project, C source file, object file and binary
```

## Naming conventions

### Template file names

Template file names should make sense for context they'll be used in.
That's why both `CamelCase` and `snake_case` are accepted for file names.
The last part of file extension must always be `.templ`.
Examples:
|File name| Example file name|
|:---|:----:|
|Java sources|`MyClass.java.templ`|
|Makefiles|`MyMakefile.templ`|
|C Sources|`template_source.c.templ`|

### Variables in template

Names of variables MUST always be written in `snake_case`.

A good practice is to keep them as short as possible, but also descriptive enough.

---

Good luck getting your templates to this repository :)
