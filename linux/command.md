# Command
## Shell
### GNU parallel
Execute jobs in parallel easily.

- Initialization
```
$ brew install parallel
$ parallel --bibtex # to erase message
    type 'will cite'
```
- Example
```
$ parallel echo x {} y ::: 11 12 ::: 21 22
x 11 21 y
x 11 22 y
x 12 21 y
x 12 22 y
```

