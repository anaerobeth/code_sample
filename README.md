README

DNA statistics

DNA sequence analysis is a basic task in molecular biology and is a good starting point for software development using Test Driven Development (TDD).


Given the sequence of a common sequencing primer, "GCAATTAACCCTCACTAAAGG", I wrote a program to calculate the percentage of each nucleotide.
For this, I chose [Ruby](https://www.ruby-lang.org/en/), a dynamic scripting language and [Rspec](http://rspec.info/), a testing tool for the Ruby language that uses simple language to describe expectations on how the code should work.


Starting with a simple example that expresses some basic behaviour, for example *'it counts the frequency of nucleotides in a string'* and following TDD best practices, I wrote a failing test then wrote just enough Ruby code to make it pass.


I then improved the code, added another expected behavior and repeated the cycle. In TDD circles, this is known as Red-Green-Refactor. Primer sequences are typically 18-24 nucleotides, but for genes that are several thousand nucleotides in length, a script that automates the task of calculating DNA statistics can be quite powerful.


Future implementations of this code will include methods for determining DNA melting temperature, Tm, and detecting hairpin loops.



Pi Approximation


In 1910, the mathematician Srinivasa Ramanujan found several rapidly converging infinite series that can be used to generate a numerical approximation of pi. His series are now the basis for the fastest algorithms currently used to calculate π.


This script is an implementation in Ruby of a function called estimate_pi that uses his formula to compute and return an estimate of pi. This is based on an exercise from Chapter 7 of Think Python by Allen Downey.



Academy Tracker

A program to track and display student enrolment implemented using Test-Driven Development.

