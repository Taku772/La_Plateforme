# Binary

## The numbering systems
We humans, simple muggles, count and make our calculations with a decimal numbering. That is to say that we have 10 digits, numbered from 0 to 9, that we use in a loop, and that have a different value depending on their placement in the number. This system is also called base-10 numbering.

### Why do we work in base-10?
This is mainly related to our fingers. Indeed, the most intuitive is often the simplest. It is a safe bet that if we had 2 more fingers, we would have 12 digits in our numbering system. 

But you have to know that there are other numbering systems, like base-16, base-7, base-64 etc... 

The Babylonians did not count in tens like we do, but in twelves.  Like us, they counted on their fingers... or rather on their phalanges with the help of the thumb.  So if you touch one by one the (three) phalanges of each of your four fingers with the thumb of the same hand, you will get twelve numbers.  The Babylonians preferred to count by twelve because this number is divisible by 3, 4, 6 and 12, which is much more convenient for doing calculations (division, multiplication, etc.) than counting by ten, a number that is only divisible by 2, 5 and 10. (Note that in a base twelve system, numbers such as 12, 60 and 360 are "round digits" in the same way that 10, 100 or 1000 are in our base ten system). Moreover, there are still some traces of this in our time since the time system we use is base-12.

![](https://upload.wikimedia.org/wikipedia/commons/e/e6/Finger_counting_Russia_12.png)

### So what about computers?
PC's count in base-2 and therefore in binary! Why binary and not decimal like humans? Well, it's very simple: a computer is made of electronic circuits, and therefore of electrical components. The easiest way to count is to use a base-2 system (binary) because we can represent its two possible values (0 and 1) by an electric signal : 1, there is current, 0, there is not (it's the simple version)


## bit
The word "bit" is a contraction of the words **bi**nary digi**t**. A bit is therefore the smallest unit a computer can use. You can think of the bit as a small on/off switch where the value 1 would be on and the value 0 off. But a bit alone can't do much. The computer needs a sequence of bits to be able to interpret it and perform an action. Suppose you want to represent a sequence of eight switches, the first five of which are off and the last three are on. This sequence can be represented in binary, with the low values followed by three high values that can be interpreted like this: 

If we take a group of 2 bits, there are 4 (or 2^2) ways to provide information to the computer. 
````
00 
````
or

````
01
````
or

````
11
````
or

````
10
````

If we take a sequence of 3 bits there will be 8 possibilities because 2^3=8.

If we take an 8-bit sequence, that makes 256 possibilities. (2^8=256). And moreover when a sequence is composed of 8 bits, it has a name; the byte! 
  

## byte 
A byte is therefore a sequence of 8 bits. The French speakers are used to use the word "Octet".

![](https://LaPlateforme-files-production.s3-eu-west-1.amazonaws.com/0f343452-f065-402a-84d6-49be8778eca4-template-(9).png)

We all know the prefix "kilo" and affixed to a unit, we multiply the quantity by 1000. Thus 1 kilometer is worth 1000 meters. But then why would it be different with the unit "byte"? Of course, when we read 1kb we think of 1000 bytes. But no.

![](https://media.giphy.com/media/C6JQPEUsZUyVq/giphy.gif)

The origin of this error comes from the fact that here we speak about data processing, and thus we write 1ko=1024 bytes. Because in computing the system is not decimal, but binary. We simply noticed that 2^10 (= 1024) and was worth about 1000. The resulting approximation is 1024=1000...!

In fact, since 1998, this ambiguity was removed by inserting special prefixes for this case, so we should no longer say 1024 bytes = 1ko, but 1024 = 1kio to be read "kibi-octet" (kilo binary bit).

A small table with the values Tio, Gio, Mio, kio, byte compared (with the real values, so one kio is worth 1024 bytes)

````
1 byte/octet
1024 B = 1 kiB
1048576 B = 1024 kiB = 1 MiB
1073741824 o = 1048576 kio = 1024 Mio = 1 Gio
1099811627776 o = 1073741824 kio = 1048576 Mio = 1024 Gio = 1 Tio
````
But for hard disk sellers it's different, for them 1kio is actually 1ko (1kio is 1024 bytes, but 1ko is 1000 bytes).
This gives :

````
1 octet
1000 o = 1 ko
1000000 o = 1000 ko = 1 Mo
1000000000 o = 1000000 ko = 1000 Mo = 1 Go
1000000000000 o = 1000000000 ko = 1000000 Mo = 1000 Go = 1 To
````

In theory 1 Tio should be worth 1024 Gio => 1048576 Mio => 1073741824 kio => 1099811627776 bytes, it is good the account is there.

But in practice in your HDD it's more like this 1TB => 1000000000000 bytes => 976562500 KB => 953674 MB => 931 GB (the loose huh! We still lose 93Gio!)

That's why when you buy a 1TB hard drive, you only have 931GB available. 


## Notation between bits, bytes and bytes

- the values of the bits with a "b" (lower case b),
- the values of the bytes with a " B " (capital B),
- the values of the octets with an " o " (lower case o).

A hard disk value will be expressed in the following way: 50GB or 50Go (but definitely not 50Gb as it can be found, even in big media articles).And the same goes for the size of the RAM memory.

![](https://LaPlateforme-files-production.s3-eu-west-1.amazonaws.com/b03f3652-9e66-429d-bcd6-866dbf9cb549-capture-d'ecran-2022-02-16-111716.png)

The storage values are expressed in bytes or in bytes (by storage values I mean: disk sizes, drives, file sizes, ...)

The values concerning the transmission speed are most often expressed in bits.

![](https://LaPlateforme-files-production.s3-eu-west-1.amazonaws.com/0cd19def-9b53-49a3-a00e-7d860a8293bd-capture-d'ecran-2022-02-16-175136.png)

In this case; we are talking about 70 Mega Bits per second and 100 Mega Bits per second.

To get a value in MegaByte, we must divide by 8. So for a download speed of 100Mbps we can download a theoretical 12.5 MB / Second.

## Exercises:
1. You have just subscribed to an internet subscription with MegaCorp, which advertises a speed of 400 Mbps. What will be the speed if it is expressed in Mo/MB?

> Your response

2. Express the following value in byte/octet: 4Kio

> Your response

3. If I buy a 2TB hard drive, will I have 2000GB available?

> Your response