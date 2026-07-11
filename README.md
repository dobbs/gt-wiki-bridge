# gt-wiki-bridge
Experimental Bridge between Glamorous Toolkit and Federated Wiki

## Installation

```st
Metacello new
	repository: 'github://dobbs/gt-wiki-bridge:main/src';
	baseline: 'GtWikiBridge';
	load
```

## Load Lepiter

After installing with Metacello, you will be able to execute

```
#BaselineOfGtWikiBridge asClass loadLepiter
```
