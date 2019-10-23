# numbers

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text" property="dct:title" rel="dct:type">haskell_numbers</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Uri Brecher</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

This project is a direct translation of Joël Queneville's great
lecture [A Number By Any Other Name](https://www.youtube.com/watch?v=WnTw0z7rD3E&t=) from Elm to Haskell.
I am planning on using this code as part of my own lecture in
Functional Programming course at the שAcademic College of Tel-Aviv Yafo.

In the Money module I added a way to print Currency values
with the relevant currency symbol based on the specific coin type.
I also added a type predicate `IsCoin` using Haskell type class mechanism
which isn't available in Elm.

