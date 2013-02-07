jQuery.SyncScroll
=================

Synchronize the vertical scroll position of several elements: [Example](http://mobvox.github.com/jquery.syncscroll/example.html)

## Usage

```javascript
$(document).syncScroll('.header', {
	// Start synchronization after scrollTop reaches this offset
	// Default: 0
	offset: $('.unsynced').height(),

	// Make the header scroll at half the speed
	// Default: 1
	ratio: 0.5
});
```

Both `offset` and `ratio` can be either an numeric value or a function returning an number.