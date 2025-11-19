#import "@preview/quill:0.7.2": *

#let state(x) = $|#x chevron.r$

#let stater(x) = $chevron.l #x|$

#let innerprod(a, b) = $chevron.l #a|#b chevron.r$
#let outerprod(a, b) = $|#a chevron.r chevron.l #b|$