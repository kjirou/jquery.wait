jquery.wait
===========

This is a very simple jQuery plugin for adding $.wait method.


## Example

```
$.wait(1000).then(function(){
  alert('A 1 second later.');
});
```

## jQuery version

`jQuery` >= 1.5 (Depends on `jQuery.Deferred`)


## Licence

MIT


## Development

### Dependencies
- `node.js` >= 11.0
- `grunt-cli`

### Deploy

```
$ git clone git@github.com:kjirou/jquery.wait.git
$ cd jquery.wait
$ npm install
$ grunt
```

### Commands

- `grunt` concats all files for test.
- `grunt watch` executes each time `grunt` at updating JavaScript files.


### Testing

Open `test/index.html`
