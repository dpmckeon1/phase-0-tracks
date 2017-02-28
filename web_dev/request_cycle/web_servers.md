# Web Servers Research
## Dan McKeon

### Linux Design Philosophy

1. Small & Simple

* Each command is relatively simple and performs a specific task
* Simple algorithms & simple data structures are preferable

2. The User is Computer Literate

* Unix (precursor to Linux) assumes the user knows what they are doing and permits them to do whatever they want to do

3. Programs Should Be Modular and Be Able to Easily Interact with Eachother

* Reduce extraneous information
* Text streams are preferred as they are device independent
* Clean interfaces


### Virtual Private Server

* A virtual private server is a partition of memory set up on a remote machine that acts as a stand-alone computer with memory and an operating system

*Advantages compared to Shared Hosting*

* Fully customizable
* Private
* Can restart at any point without affecting other users
* Dedicated RAM

*Advantages compared to Dedicated Server*

* Cheaper

### Running programs as the root user on a Linux system?

* Can accidentally create bugs with unlimited access
* Can give malicious software full permissions
* Typically unnecessary

### DOM Properties

*For the video iFrame from 9.1...*

* isContentEditable:false ... curious what would happen if you changed this to true, since the content doesn't really seem like it should be editable
* onauxclick: null ... thinking this might define action for right click, but there is actually very little info out there on it
* onpause:null ... this could show an ad when you pause
* onmouseover:null ... this probably defines what happens when you hover
* onvolumechange:null ... I wonder what this would do aside from changing the volume
