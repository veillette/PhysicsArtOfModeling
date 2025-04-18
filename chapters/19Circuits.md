---
title: Chapter 19 - Electric circuits
numbering:
  headings:
  heading_1:
    start: 20
---
(chapter:circuits)=
# Overview
In this chapter, we develop the tools to model electric circuits. This will allow us to determine the current and voltages across different components, such as resistors and capacitors, within a circuit. We will also discuss how a battery can provide a current at a fixed potential difference, and how one can construct devices to measure current and voltages.

:::{hint} Learning Objectives
* Understand how a battery works.
* Understand Kirchhoff's rules and how to apply them.
* Understand how to model a circuit with resistors and/or capacitors.
* Understand how an ammeter and voltmeter function, and how to model them.
:::

:::{note} Think About It
If two outlets in your house are connected to the same circuit, are the outlets connected in series or in parallel?
1.  series
2.  parallel 
:::{note} Answer
:class: dropdown
2.
:::

# Batteries and simple circuits
:label: sec:circuits:batteries
A battery is an electric component that provides a constant electric potential difference (a fixed voltage) across its terminals. Luigi Galvani was the first to realize that certain combinations of metals placed into contact with each other can lead to an electric potential difference (or rather, he realized that they can make the legs of a dead frog twitch, which we now understand to be from the potential difference due to the metals). Effectively, Galvani created the first "electrochemical cell". Alessandro Volta then combined several of these cells together to form the "voltaic pile", which is what we would now call a battery (a battery is technically a combination of several cells, or a "battery of cells", although one often uses the term battery even if only a single electric cell is involved). 
## The electrochemical cell
An electric cell can be constructed from metals that have different affinities to be dissolved in acid. A simple cell, similar to that originally made by Volta, is comprised of two metal electrodes placed in a liquid called electrolyte, as illustrated in [](#fig:circuits:electriccell). Common materials used are carbon (Volta used silver) and zinc for the electrodes, and sulfuric acid for the electrolyte. Before the cell is constructed, the electrodes and the electrolyte are all electrically neutral.
```{figure} figures/Circuits/electriccell.png
:label: fig:circuits:electriccell
:width: 70%
:align: center
:alt:  A simple electric cell, where zinc ions dissolve in sulfuric acid leaving electrons on the metal.
 A simple electric cell, where zinc ions dissolve in sulfuric acid leaving electrons on the metal.
```
%TODO Is it incorrect to show the electrons entering the solution?
Once the zinc is immersed in the electrolyte, the zinc atoms tend to dissolve into the electrolyte in the form of zinc ions (doubly charged, Zn$^{2+}$). This leaves an excess of electrons on the zinc electrode, resulting in a net negative electric charge. Similarly, the positively charged zinc ions attract electrons from the carbon electrode into the solution, leaving the carbon electrode positively charged. Very quickly, an equilibrium is reached, since at some point, the negative charge of the zinc electrode will electrically attract positive zinc ions, preventing any more zinc ions from dissolving into the solution. Similarly, as the carbon electrode builds a positive charge, that charge will eventually prevent electrons from "jumping" into the solution. At this point, there will be a fixed electric potential difference between the two electrodes (terminals) of the battery. 

If the two electrodes are connected together through a resistor, the electrons will leave the zinc electrode, cross the resistor, and end up on the positive carbon electrode. This will leave space for more electrons on the zinc electrode, so more zinc ions will dissolve into the solution. Thus, a circuit is formed, where electron travel up the zinc electrode, through the resistor and back down the carbon electrode. At the same time, more and more zinc ions dissolve into the electrolyte, until the zinc electrode is completely dissolved. In practice, the zinc ions travel through the solution and plate onto the carbon electrode (the electrons do not quite "jump" into the electrolyte, rather, it is the zinc ions that move in the electrolyte). Since the charge on the electrodes is continuously replenished, the potential difference between the electrodes remains constant even as current is flowing.

The electric cell will stop working once the zinc electrode has completely dissolved (this is what happens when your battery is dead). Note that there is also a maximum current that the cell can supply, which depends on the rate at which the zinc can dissolve into the electrolyte and plate onto the carbon electrode. If the electrodes of the cell are connected with a very low resistance resistor, the resulting current will be too large for the potential difference to be maintained. Most electric cells work in similar ways, although the chemical reactions can be much more complex. Sometimes, the chemical reaction is reversible; one could use a different battery to apply a negative voltage to the carbon electrode to reverse the reaction and plate the zinc back onto the zinc electrode, thus "recharging the battery" (and converting electric energy back into stored chemical potential energy). 

## The ideal battery in a circuit
As we proceed, we will use the term "battery" loosely to refer to a device (such as an electric cell or collection of cells) that can provide a fixed potential difference between two terminals (or electrodes). [](#fig:circuits:batterysymbol) shows the circuit diagram for a battery, consisting of two (or four) vertical bars, with the larger bar indicating the positive terminal of the battery.

```{figure} figures/Circuits/circuitspng/batterysymbol.png
:label: fig:circuits:batterysymbol
:width: 60%
:align: center
:alt:  Circuit diagram symbols that can be used for a battery.
 Circuit diagram symbols that can be used for a battery.
```

[](#fig:circuits:resistorsymbol) shows the circuit diagram symbols that are used for a resistor (different symbols are used in North American and in Europe).

```{figure} figures/Circuits/circuitspng/resistorsymbol.png
:label: fig:circuits:resistorsymbol
:width: 60%
:align: center
:alt:  Circuit diagram symbols for a resistor, using the North American convention (left), and the European convention (right).
 Circuit diagram symbols for a resistor, using the North American convention (left), and the European convention (right).
```

[](#fig:circuits:batteryresistor) shows a circuit diagram for a very simple circuit consisting of a single $9 {\rm V}$ battery connected to a $2 {\rm \Omega}$ resistor. When drawing a circuit diagram (or making a real circuit), one connects the various components together (e.g. batteries and resistors) with **segments of wire that have zero resistance**, even if, in practice, wires always have some resistance. However, since the wires are connected in series with resistors (or other components that have a resistance), one can always include the resistance of the wires by adding it to the resistance of the other components. For example, in [](#fig:circuits:batteryresistor), if the wires have a total resistance of $1 {\rm \Omega}$, we could simply model the circuit as if the resistor had a resistance of $3 {\rm \Omega}$ instead of $2 {\rm \Omega}$. In practice, this is usually accounted for when a circuit diagram is made (i.e. any resistors include the resistance of the wires connected to it). 

```{figure} figures/Circuits/circuitspng/batteryresistor.png
:label: fig:circuits:batteryresistor
:width: 35%
:align: center
:alt:  A simple circuit, showing a $9 {\rm V}$ battery and a $2 {\rm \Omega}$ resistor. For ease in analyzing circuits, we suggest drawing a ``battery arrow" above batteries that goes from the negative to the positive terminal.
A simple circuit, showing a $9 {\rm V}$ battery and a $2 {\rm \Omega}$ resistor. For ease in analyzing circuits, we suggest drawing a ``battery arrow" above batteries that goes from the negative to the positive terminal.
```

The circuit in [](#fig:circuits:batteryresistor) is simple to analyze. In this case, whichever charges exit one terminal of the battery must pass through the resistor and then enter the other terminal of the battery. We **always use conventional current** to analyze a circuit. Thus, we model the circuit as if positive charges exit the positive terminal of the battery, go through the resistor, and then enter the negative terminal of the battery.

We recommend that you always draw a "battery arrow" for each battery in a circuit diagram to indicate the direction in which the electric potential increases and in which direction the conventional current would exit the battery if a simple resistor were connected across the battery. We also indicate the current that is flowing in any wire of the circuit by drawing an arrow in the direction of current on that wire (labelled $I$ in [](#fig:circuits:batteryresistor)).
%In complex circuits, the current may not necessarily flow in the same direction as the battery arrow, and the battery arrow makes it easier to analyze those circuits.

It is helpful to think about the value of the electric potential along different parts of a circuit. Below ([](#fig:circuits:batteryresistor_colour)), we have taken the circuit from [](#fig:circuits:batteryresistor) and highlighted regions where the electric potential is constant.
```{figure} figures/Circuits/batteryresistor_colour.png
:label: fig:circuits:batteryresistor_colour
:width: 40%
:align: center
:alt:  The same circuit as in [](#fig:circuits:batteryresistor) showing the two regions over which the electric potential is constant.
 The same circuit as in [](#fig:circuits:batteryresistor) showing the two regions over which the electric potential is constant.
```

Since the wires have no resistance, the electric potential is constant along a wire. In other words, because the wire has no resistance, the charges/current cannot dissipate any power in the wire ($P=I^2R$), and the charges do not "lose" any potential energy (and so the potential cannot change). The only place where the charges can dissipate energy is inside the resistor. Once the charges have crossed the resistor, the electric potential in the wire is again constant until they reach the other terminal of the battery. Thus, in this simple circuit, the electric potential difference across the resistor is the same as the potential difference across the terminals of the battery.  This is shown by the coloured areas in [](#fig:circuits:batteryresistor_colour). If we choose $0 {\rm V}$ to be defined at the negative terminal of the battery, then the potential is $9 {\rm V}$ everywhere in the red area (to the right of the resistor), and $0 {\rm V}$ everywhere in the grey area (to the left of the resistor). 


We can apply Ohm's Law (the macroscopic version) to the resistor and determine the current in the circuit, since we know the potential difference across the resistor:
```{math}
\Delta V&=RI\\
\therefore I&=\frac{\Delta V}{R}=\frac{(9 {\rm V})}{(2 {\rm \Omega})}=4.5 {\rm A}
```

It is helpful to think of circuits in terms of energy. Charges move along the circuit and their potential energy changes as they go through components, while it remains constant as they move through a wire. If a positive charge enters the negative terminal of a battery and exits the positive terminal, its potential energy will have increased. If that charge then enters a resistor, its potential energy will decrease as it moves through the resistor, since the charge will "use" its potential energy to heat up the resistor. Batteries provide the energy to "push" the charges through the resistors in the circuit by converting chemical potential energy into the electrical potential energy of the charges.

It is also useful to make the analogy with fluid dynamics; one can think of the battery as a pump that is continuously pushing a viscous incompressible fluid through a pipe with a narrow section, as illustrated in [](#fig:circuits:watercircuit). The wide section of the pipe is akin to the wires with no resistance, and the narrow section is akin to the resistor. The pressure difference generated by the pump is analogous to the voltage produced by the battery, and the flow rate of the liquid is analogous to the electric current. The pressure in the pipe does not drop in the wide section, if there is no resistance. The entire pressure drop of the fluid is across the narrow section, just as the voltage only drops across the resistor.
```{figure} figures/Circuits/watercircuit.png
:label: fig:circuits:watercircuit
:width: 50%
:align: center
:alt:  A fluid dynamics analogue of the circuit in [](#fig:circuits:batteryresistor), where a pump plays the role of the battery, and a narrow pipe that of a resistor.
 A fluid dynamics analogue of the circuit in [](#fig:circuits:batteryresistor), where a pump plays the role of the battery, and a narrow pipe that of a resistor.
```
(ex:circuits:tworesistors)=
:::{note} Example 19.1
:label: ex:circuits:tworesistors
Two resistors, of $2 {\rm \Omega}$ and $4 {\rm \Omega}$, respectively, are connected in series to a $12 {\rm V}$ battery. What is the current through each of the resistors, and what is the voltage across each resistor?
:::{note} Solution
:class: dropdown
We start by making a circuit diagram, as in [](#fig:circuits:tworesistors), showing the resistors, the current, $I$, the battery and the battery arrow. Note that since this is a closed circuit with only one path, the current through the battery, $I$, is the same as the current through the two resistors.

```{figure} figures/Circuits/circuitspng/tworesistors.png
:label: fig:circuits:tworesistors
:width: 42%
:align: center
:alt:  Two resistors connected in series with a battery.
 Two resistors connected in series with a battery.
```

If we choose the potential on the negative side of the battery to be $0 {\rm V}$, then points ${\rm a}$ and ${\rm e}$ on the diagram are at a potential of $0 {\rm V}$, since potential cannot change in a wire with no resistance. Similarly, the points at ${\rm b}$ and ${\rm c}$ are at a potential of $12 {\rm V}$ (relative to points ${\rm a}$ and ${\rm e}$). At point ${\rm d}$, between the two resistors, the potential will be between $0 {\rm V}$ and $12 {\rm V}$, since the potential will "drop" as the current goes through the $2 {\rm \Omega}$ resistor.

The easiest way to determine the current through this simple circuit is to combine the two resistors into a single effective resistor with resistance:
```{math}
R_{eff}=(2 {\rm \Omega})+(4 {\rm \Omega})=6 {\rm \Omega}
```
so that the circuit can be simplified to that shown in [](#fig:circuits:batteryresistor2):

```{figure} figures/Circuits/circuitspng/batteryresistor2.png
:label: fig:circuits:batteryresistor2
:width: 42%
:align: center
:alt:  The resistors from the circuit in [](#fig:circuits:tworesistors) have been combined in series to simplify the circuit.
 The resistors from the circuit in [](#fig:circuits:tworesistors) have been combined in series to simplify the circuit.
``` 

The potential difference across the effective resistor is the same as that across the battery (between points ${\rm e}$ and ${\rm c}$), so that Ohm's Law can be applied to the effective resistor to determine the current that traverses it:
```{math}
\Delta V &= R_{eff}I\\
\therefore I&=\frac{\Delta V}{R_{eff}}=\frac{(12 {\rm V})}{(6 {\rm \Omega})}=2 {\rm A}
```
This current is the same that traverses each individual resistor, since it is the same as the current that goes through the battery. Referring back to the full circuit ([](#fig:circuits:tworesistors)), we can now use Ohm's Law to calculate the voltage drop across each resistor, since we know the current through each resistor. The voltage across the $2 {\rm \Omega}$ resistor is given by:
```{math}
\Delta V_{2\Omega}=RI=(2 {\rm \Omega})(2 {\rm A})=4 {\rm V}
```
and the voltage across the $4 {\rm \Omega}$ resistor is given by:
```{math}
\Delta V_{4\Omega}=RI=(4 {\rm \Omega})(2 {\rm A})=8 {\rm V}
```
Note that the sum of these two voltages is equal to the voltage increase across the battery, by conservation of energy. Consider the electric potential at different points in [](#fig:circuits:tworesistors) as you move clockwise around the loop starting at point ${\rm a}$. If the electric potential is defined to be $0 {\rm V}$ at the negative end of the battery (points ${\rm a}$ and ${\rm e}$), the potential at point ${\rm d}$ (between the resistors) is the potential at point ${\rm e}$ plus the potential difference across the $4 {\rm \Omega}$ resistor:
```{math}
V_d = V_e+\Delta V_{4\Omega}=(0 {\rm V})+(\Delta V_{4\Omega})=8 {\rm V}
```
If we then add the potential difference across the $2 {\rm \Omega}$ resistor to the potential at point ${\rm d}$, we find  that the potential at point ${\rm c}$ is $V_c=V_d+\Delta V_{2\Omega}=12 {\rm V}$, as expected, since this corresponds to the potential at the positive terminal of the battery.

**Discussion:** In this example, we showed how one can model a circuit by combining resistors together into effective resistors to simplify the circuit. We also showed how the potential differences across different components in a circuit must add up to zero (the voltage drops across the resistors must sum to the voltage increase across the battery). 
:::
:::{tip} Checkpoint
What is the voltage across the combination of a $3 {\rm V}$ battery connected in series with a $6 {\rm V}$ battery, where the negative terminal of the $6 {\rm V}$ battery faces the positive terminal of the $3 {\rm V}$ battery?
1.  $9 {\rm V}$. 
2.  $6 {\rm V}$.
3.  $3 {\rm V}$.
4.  $0 {\rm V}$.
:::{tip} Answer
:class: dropdown
1.
:::
## The real battery in a circuit
So far, we have modelled batteries as "ideal" devices that provide a fixed potential difference. In reality, this neglects the fact that the materials that make the battery will themselves have a resistance. For example, if electrons want to leave the zinc rod in the electric cell illustrated in [](#fig:circuits:electriccell), they will lose some energy as they pass through the zinc. Thus, when modelling a real battery in a circuit, it is important to include its "internal resistance", as a resistor in series with the potential difference. This is illustrated in [](#fig:circuits:realbattery), which shows the two terminals of a real battery, an ideal battery (with a fixed potential difference, $\Delta V_{ideal}$), and its internal resistance, $r$ (which can be drawn on either side of the battery). 

```{figure} figures/Circuits/circuitspng/realbattery.png
:label: fig:circuits:realbattery
:width: 80%
:align: center
:alt:  Model of a real battery, showing an ideal battery in series with a resistor to model the internal resistance of the battery.
 Model of a real battery, showing an ideal battery in series with a resistor to model the internal resistance of the battery.
```

It is important to note that the potential difference across the terminals of the real battery is only equal to the potential difference across the ideal battery **if there is no current flowing through the battery**. If there is a current, $I$, flowing through the internal resistance, the electric potential will decrease by an amount $Ir$ across the internal resistance, and the voltage across the real terminals will be $\Delta V_{ideal}-Ir$. 

:::{note} Example 19.2
When no resistance is connected across a real battery, the potential difference across its terminals is measured to be $6 {\rm V}$. When an $R=2 {\rm \Omega}$ resistor is connected across the battery, a current of $2 {\rm A}$ is measured through the resistor. What is the internal resistance, $r$, of the battery, and what is the voltage across its terminals when the $R=2 {\rm \Omega}$ resistor is connected?
:::{note} Solution
:class: dropdown
The real battery can be modelled as an ideal battery with potential difference, $\Delta V_{ideal}$, in series with an internal resistance, $r$. While we do not know the value of the internal resistance, we are told that the potential difference across the terminals of the real battery is $6 {\rm V}$ **when no current flows through it**. Since no current flows through the internal resistance, the voltage does not drop across the internal resistance, and the voltage across the terminals of the real battery (e.g. [](#fig:circuits:realbattery)) must thus be equal to the voltage across the terminals of the ideal battery, so that $\Delta V_{ideal}=6 {\rm V}$.

With this information, we can make a circuit diagram for the case when the $2 {\rm \Omega}$ resistor is connected across the terminals of the real battery, as in [](#fig:circuits:realbatterycircuit).

```{figure} figures/Circuits/circuitspng/realbatterycircuit.png
:label: fig:circuits:realbatterycircuit
:width: 42%
:align: center
:alt:  A circuit showing a real battery (with internal resistance $r$) in series with a resistor.
 A circuit showing a real battery (with internal resistance $r$) in series with a resistor.
```

The terminals of the real battery are located at points ${\rm a}$ and ${\rm c}$ of the diagram, whereas the terminals of the ideal battery correspond to points ${\rm a}$ and ${\rm b}$. When no current flows through the internal resistor, $r$, there is no voltage drop across that resistor and the potential at ${\rm b}$ will be equal to the potential at ${\rm c}$, as we argued above.

The circuit in [](#fig:circuits:realbatterycircuit) is now identical to that analyzed in [Example 19.1](#ex:circuits:tworesistors), and can be treated the same way. We can combine the $2 {\rm \Omega}$ resistor with the internal resistance, $r$, in series to obtain an effective resistor, $R_{eff}=r+R$. The voltage drop across the effective resistor will be the same as the potential difference across the ideal battery, and we can make use of Ohm's Law to find the internal resistance, $r$:
```{math}
\Delta V_{ideal}&= R_{eff}I=(r+R)I\\
\therefore r &= \frac{\Delta V_{ideal}}{I}-R=\frac{(6 {\rm V})}{(2 {\rm A})}-(2 {\rm \Omega})=1 {\rm \Omega}
```
Now that we know the internal resistance, we can determine the voltage drop across the internal resistor, using Ohm's Law:
```{math}
\Delta V_r = rI=(1 {\rm \Omega})(2 {\rm A})=2 {\rm V}
```
The voltage drop across the real terminals of the battery (between points ${\rm a}$ and ${\rm c}$), is thus given by:
```{math}
\Delta V_{real}=\Delta V_{ideal}-\Delta V_r=(6 {\rm V})-(2 {\rm V})=4 {\rm V}
```
Again, you can verify that the voltage drops across the two resistors will sum to the total voltage drop across the terminals of the ideal battery. 


**Discussion:** Modelling real batteries is not so different from modelling ideal batteries, since one only needs to include an internal resistance into the circuit. The key difference with a real battery is that the voltage across its real terminals depends on what is connected to the battery. In the example above, the battery has a voltage of $6 {\rm V}$ across its (real) terminals when nothing is connected, but the voltage drops to $4 {\rm V}$ when a $2 {\rm \Omega}$ resistor is connected.
:::

:::{tip} Checkpoint
Suppose that you would like to measure the ideal voltage of a real battery by connecting a measurement device (a voltmeter) across its terminals. In order to get the most accurate reading, should you choose a voltmeter with a high resistance, or a voltmeter with a low resistance?
1.  High resistance. 
2.  Low resistance.
3.  It doesn't matter if the voltmeter has a high or low resistance.
:::{tip} Answer
:class: dropdown
1.
:::

# Kirchhoff's rules
Kirchhoff's rules correspond to concepts that we have already covered, but allow us to easily model more complex circuits, for instance, those where there is more than one path for the current to take. Kirchhoff's rules refer to "junctions" and "loops". Junctions and loops depend only on the shape of the circuit, and not on the components in the circuit. [](#fig:circuits:3loopempty) shows a circuit with no components in order to illustrate what is meant by a junction and a loop.

```{figure} figures/Circuits/circuitspng/3loopempty.png
:label: fig:circuits:3loopempty
:width: 40%
:align: center
:alt:  A circuit that has 3 loops and 2 junctions.
 A circuit that has 3 loops and 2 junctions.
```

The locations at points ${\rm d}$ and ${\rm c}$ are considered "junctions", because there are more than 2 segments of wire connected to that point. The points at locations ${\rm a}$, ${\rm b}$, ${\rm e}$ and ${\rm f}$ only have two segments of wire connected to them. The circuit in [](#fig:circuits:3loopempty) thus has 2 junctions. 

A loop is a closed path that one can trace around the circuit without passing over the same segment of wire twice. The circuit in [](#fig:circuits:3loopempty) has 3 such loops, which we can identify using the letters at the various nodes of the circuit:
1.  ${\rm abcda}$
2.  ${\rm abcefda}$
3.  ${\rm dcefd}$

Note that it does not matter where one starts on the loop, only that one can identify how many different loops are present in the circuit. 
%%%The loops are shown more explicitly in [](#fig:circuits:looplabel).%%%
%%%```{figure} figures/Circuits/circuitspng/looplabel.png
%%%:label: fig:circuits:looplabel
%%%:width: 40%
%%%:align: center
%%%:alt: The three loops in the circuit.
%%%The three loops in the circuit.
%%%```
 
:::{tip} Checkpoint
```{figure} figures/Circuits/circuitspng/7loop.png
:label: fig:circuits:7loop
:width: 50%
:align: center
:alt: Circuit layout
Circuit layout
```
 How many loops and junctions does the circuit in [](#fig:circuits:7loop) have?
1.  The circuit has five loops and four junctions
2.  The circuit has three loops and eight junctions
3.  The circuit has seven loops and four junctions. 
4.  The circuit has four loops and four junctions.
:::{tip} Answer
:class: dropdown
3.
:::

## Junction rule
The junction rule states that: **The current entering a junction must be equal to the current exiting a junction.**

This is in fact a simple statement about conservation of charge. If charges are flowing into a junction (from one or more segments of wire in that junction), then the same amount of charges must flow back out of the junction (through one or more different segments of wire).

Consider the junction illustrated in [](#fig:circuits:junction), comprised of 5 segments of wire, each carrying a different current. As shown, currents $I_1$, $I_3$, and $I_4$ flow into the junction, whereas currents $I_2$ and $I_5$ flow out of the junction. 

```{figure} figures/Circuits/circuitspng/junction.png
:label: fig:circuits:junction
:width: 40%
:align: center
:alt: A junction with 5 segments and 5 currents.
A junction with 5 segments and 5 currents.
```

The junction rule states that the current entering the junction must equal the current coming out of the junction. This allows us to relate the currents to each other in an equation:
```{math}
\text{incoming currents}&=\text{outgoing currents}\\
I_1+I_3+I_4 &=I_2+I_5
```

## Loop rule
The loop rule states that: **The net voltage drop across a loop must be zero.**

This is a statement about conservation of energy, that we already noted in [Example 19.1](#ex:circuits:tworesistors). Once you have identified a specific loop, if you trace a closed path around the loop, the electric potential must be the same at the end of the path as at the beginning of the path (since it is literally the same point in space). This means that if there is a voltage drop along the path (e.g. due to one or more resistors), then there must be equivalent voltage increases somewhere else on the path (e.g. due to one or more batteries). If this were not the case, it would be possible to have a path where charges could gain a net amount of energy by going around that path, which they could keep doing indefinitely and create an infinite amount of energy; instead, if charges gain potential energy in a battery, they must then lose exactly the same amount of energy inside one or more resistors along the path.

[](#fig:circuits:loop) shows a loop (which could be part of a larger circuit) to which we can apply the loop rule. The loop contains two batteries, facing in opposite directions (which would not normally be a good use of batteries), as illustrated by the battery arrows. 

```{figure} figures/Circuits/circuitspng/loop.png
:label: fig:circuits:loop
:width: 55%
:align: center
:alt: A loop with 2 batteries and 3 resistors.
A loop with 2 batteries and 3 resistors.
```

The procedure for applying the loop rule is as follows:
1.  Identify the loop, including starting position and direction.
2.  Start at the beginning of the loop, and trace around the loop.
3.  Each time a battery is encountered, **add the battery voltage if you are tracing the loop in the same direction as the corresponding battery arrow**, subtract the voltage otherwise.
4.  Each time a resistor is encountered, **subtract the voltage across that resistor ($RI$, from Ohm's Law) if tracing the loop in the same direction as the current**, add the the voltage otherwise.
5.  Once you have traced back to the starting point, the resulting sum must be zero.

To illustrate the procedure, we trace out the loop ${\rm abcedfga}$ in [](#fig:circuits:loop). We thus start at point ${\rm a}$ and trace the loop in the counter-clockwise direction. 
* Between points ${\rm a}$ and ${\rm b}$ we encounter a battery, and we are tracing in the **opposite direction of that battery's arrow**, so we subtract the voltage from that battery: $-\Delta V_1$.
* Between points ${\rm b}$ and ${\rm c}$, we encounter a battery, and we are tracing in the **same direction as that battery's arrow**, so we add the voltage from that battery: $+\Delta V_2$.
* Nothing happens to the potential along the wire from ${\rm c}$ to ${\rm d}$.
* Between points ${\rm d}$ and ${\rm e}$, we encounter a resistor, and we are tracing in the **same direction as the current through that resistor**, so subtract the voltage across that resistor: $-R_1I$).
* Similarly, we subtract the voltages across resistors $R_2$ and $R_3$, as we are tracing in the **same direction as the current through those resistors**: $-IR_2-IR_3$.
* We are back at the beginning of the loop, so the terms must sum to zero.

We can now use the loop rule, which states that the sum of the above voltages must be zero:
```{math}
-\Delta V_1 + \Delta V_2 - R_1I - R_2I - R_3I = 0\quad \text{(loop abcdefga)}
```
This equation then gives us a relation between the various quantities (current, resistors, battery voltages) in the circuit which can be used to model the circuit.  

:::{tip} Checkpoint
Suppose that the equation describing loop ${\rm abcdefga}$ ([](#fig:circuits:loop)) was obtained from a different starting position and the loop was traced in the opposite direction. Would this produce a different equation?
1.  Yes, the equation would be incorrect if the loop is traced in the direction opposite to the flow of current.
2.  Yes, the equation must start from the point ${\rm a}$ because the creator of the circuit assumes the person calculating current and voltage will begin at point ${\rm a}$.
3.  Yes, there is no incorrect starting point, but choosing to trace the circuit in the direction opposite to the flow of current would produce an incorrect equation.
4.  No, there is no incorrect direction or starting point. 
:::{tip} Answer
:class: dropdown
4.
:::

:::{attention} Olivia's Thoughts 
One way to conceptualize Kirchhoff's loop rule is to draw an analogy to gravity. Imagine that the circuit in [](#fig:circuits:loop) operates like a roller coaster, as shown in [](#fig:circuits:rollercoaster). Each battery is like the mechanical lift that brings the cart to the top of the hill. The battery arrow points in the uphill direction. 
```{figure} figures/Circuits/rollercoaster.png
:label: fig:circuits:rollercoaster
:width: 50%
:align: center
:alt: The circuit from [](#fig:circuits:loop) using the roller coaster analogy.
The circuit from [](#fig:circuits:loop) using the roller coaster analogy.
```

This time, we'll start at point ${\rm b}$ and go counter clockwise. In this analogy, Kirchhoff's loop rule says that when the roller coaster cart comes back around to ${\rm b}$, it needs to have the same gravitational potential it started with (since it will be at the same elevation). Let's follow its journey around the loop. It starts at ${\rm b}$, then goes through a battery and gets lifted uphill. The cart moves along the track (in the direction of the current) and loses potential energy whenever it goes down a hill (meaning through a resistor). When the cart comes around the left side of the circuit, it encounters another battery. This time, the cart is moving *opposite* to the battery arrow, so the cart goes downhill instead of getting lifted uphill. When it gets back to ${\rm b}$, it has the same potential it started with. Note that, if we are moving in the direction opposite to the current, this is like going backwards through the roller coaster. Instead of going downhill through each resistor, you would have to go uphill, and thus gain potential energy.
:::

# Applying Kirchhoff's rules to model circuits
In this section, we show how to model a circuit using Kirchhoff's rules. In general, one can consider a circuit to be fully modelled if one can determine the current in each segment of the circuit. We will show how one can apply the same procedure to model any circuit that contains batteries and resistors. The procedure is as follows:
1.  Make a good diagram of the circuit.
2.  Simplify any resistors that can easily be combined into effective resistors (in series or in parallel).
3.  Make a new diagram with the effective resistors, showing battery arrows, and labelling all of the nodes so that loops can easily be described.
4.  Make a **guess** for the directions of the current in each segment.
5.  Write the junction rule equations.
6.  Write the loop equations.
7.  This will lead to $N$ independent equations that one can solve for the $N$ different currents in the circuit.
8.  Once you have determined all of the currents, if some of them are negative numbers, switch the direction of those currents in the diagram (they will be negative if you guessed the direction incorrectly).


We will illustrate the procedure on the circuit shown in [](#fig:circuits:bigcircuit), for which we would like to know the current through each resistor and each battery. The circuit contains 5 resistors ($R_1$-$R_5$), 2 real batteries (with ideal voltages $\Delta V_1$ and $\Delta V_2$), and 2 additional resistors to model the internal resistances of the real batteries ($r_1$, $r_2$)

```{figure} figures/Circuits/circuitspng/bigcircuit.png
:label: fig:circuits:bigcircuit
:width: 42%
:align: center
:alt: A circuit that can be simplified and then solved with Kirchhoff's rules.
A circuit that can be simplified and then solved with Kirchhoff's rules.
```

:::{tip} Checkpoint
How many different currents are in the circuit shown in [](#fig:circuits:bigcircuit)?
1.  3
2.  4
3.  5 
4.  6
:::{tip} Answer
:class: dropdown
3.
:::

**Simplifying the resistors (step 2):** In this circuit, resistors $r_2$, $R_1$ and $R_2$ are in series, so that they can be combined into an effective resistor, $R_6$:
```{math}
R_6=r_2+R_1+R_2
```
With this simplification, we obtain the circuit illustrated in [](#fig:circuits:bigcircuit_simp1)

```{figure} figures/Circuits/circuitspng/bigcircuit_simp1.png
:label: fig:circuits:bigcircuit_simp1
:width: 42%
:align: center
:alt: The resistors $r_2$, $R_1$ and $R_2$ in series from the circuit in [](#fig:circuits:bigcircuit) have been combined into the effective resistor, $R_6$, to simplify the circuit.
The resistors $r_2$, $R_1$ and $R_2$ in series from the circuit in [](#fig:circuits:bigcircuit) have been combined into the effective resistor, $R_6$, to simplify the circuit.
```

Next, we note that resistors $R_4$ and $R_5$ are in parallel and can be easily combined into a resistor, $R_7$:
```{math}
R_7=\frac{R_4R_5}{R_4+R_5}
```
which leads to the circuit illustrated in [](#fig:circuits:bigcircuit_simp2).

```{figure} figures/Circuits/circuitspng/bigcircuit_simp2.png
:label: fig:circuits:bigcircuit_simp2
:width: 42%
:align: center
:alt: The resistors $R_4$ and $R_5$ in parallel from the circuit in [](#fig:circuits:bigcircuit_simp1) have been combined into the effective resistor, $R_7$, to simplify the circuit.
The resistors $R_4$ and $R_5$ in parallel from the circuit in [](#fig:circuits:bigcircuit_simp1) have been combined into the effective resistor, $R_7$, to simplify the circuit.
```

Finally, we note that $r_1$ and $R_7$ are in series and can be combined into an effective resistor, $R_8$:
```{math}
R_8=r_1+R_7=r_1+\frac{R_4R_5}{R_4+R_5}
```
leading to the simplified circuit illustrated in [](#fig:circuits:bigcircuit_simp3), which we have labelled with nodes and battery labels. 

```{figure} figures/Circuits/circuitspng/bigcircuit_simp3.png
:label: fig:circuits:bigcircuit_simp3
:width: 45%
:align: center
:alt: The resistors $r_1$ and $R_7$ from the circuit in [](#fig:circuits:bigcircuit_simp2) have been combined into an effective resistor, $R_8$, to simplify the circuit.
The resistors $r_1$ and $R_7$ from the circuit in [](#fig:circuits:bigcircuit_simp2) have been combined into an effective resistor, $R_8$, to simplify the circuit.
```

**Guessing the directions of the currents (step 4):** Before we can write the equations from Kirchhoff's rules, we need to label the currents in the circuit diagram. In general, it is not always obvious in which way the currents will go, so we make a guess that we can fix later if we guessed wrong. 

In order to guess the current directions, choose one point on the circuit and move along a segment. Label the current in that segment and continue moving through the circuit, splitting up the current when a junction is encountered. Make sure to only have one current per segment. We guess the currents as follows, referring to [](#fig:circuits:bigcircuit_simp):
* We start at point ${\rm a}$ and move upwards to point ${\rm f}$. We will call the current in that segment, $I_1$.
* Since there is no junction, the current $I_1$ continues through the resistor $R_8$ to point ${\rm e}$. 
* There is a junction at point ${\rm e}$, so we split the current $I_1$ into currents $I_2$ (towards point ${\rm d}$), and $I_3$ (downwards to point ${\rm b}$).
* We follow current $I_2$ first; $I_2$ flows from ${\rm e}$ to ${\rm d}$, then down to ${\rm c}$, through the battery $\Delta V_2$, and to point ${\rm b}$, where there is again junction. 
* We follow current $I_3$, which just flows down to the junction at point ${\rm b}$, where it "meets up" with current $I_2$. 
* Currents $I_2$ and $I_3$ both flow into the junction at point ${\rm b}$, and the current flowing out of the junction, through the battery $\Delta V_1$, and towards point ${\rm a}$ is, again, $I_1$, since this current then flows up to point ${\rm f}$. 
* All segments of wire have a labelled current, so we are done guessing currents.
  
You can proceed in an analogous way for any circuit. The final circuit, with currents labelled, is shown in [](#fig:circuits:bigcircuit_simp):

```{figure} figures/Circuits/circuitspng/bigcircuit_simp.png
:label: fig:circuits:bigcircuit_simp
:width: 45%
:align: center
:alt: Final and labelled circuit diagram that is simplified from the one in [](#fig:circuits:bigcircuit).
Final and labelled circuit diagram that is simplified from the one in [](#fig:circuits:bigcircuit).
```

We can now proceed using Kirchhoff's rules to solve for the values of the currents in the circuit. It is useful to note that there are 3 unknown currents in this circuit; we thus hope that Kirchhoff's rules will give us 3 independent equations.

**Applying the junction rule (step 5):** In the circuit from [](#fig:circuits:bigcircuit_simp), there are two junctions (at points ${\rm b}$ and ${\rm e}$), so we will get two equations from the junction rule. To apply the junction rule, the sum of the currents coming into the junction must be equal to the currents going out of the junction:
```{math}
\text{incoming currents}&=\text{outgoing currents}&\\
I_2+I_3 &= I_1 \quad &\text{(junction b)}\\
I_1 &= I_2+I_3 \quad &\text{(junction e)}\\
```
Note that the two equations are not independent (in fact, they are the same). It is generally the case that if there $N$ junctions, one will obtain less than $N$ independent equations (usually, $N-1$ equations will be independent). In this case, the two junctions only gave us one equation. 

**Applying the loop rule (step 6):** This circuit contains 3 different loops: ${\rm abcdefa}$, ${\rm abefa}$, and ${\rm bcdeb}$, which will lead to 3 equations from the loop rule. We expect that these equations will not be independent, since this would lead to 4 equations and 3 unknowns when combined with the junction rule equation. Let us start with the loop ${\rm abcdefa}$:
* From ${\rm a}$ to ${\rm b}$, we trace through the battery in the **opposite direction from the battery arrow**: $-\Delta V_1$.
* From ${\rm b}$ to ${\rm c}$, we trace through the battery in the **same direction as the battery arrow**: $+\Delta V_2$.
* From ${\rm c}$ through ${\rm d}$ and through to ${\rm e}$ we go through the resistor $R_6$ in the **opposite direction from the current**, $I_2$, in that resistor: $+I_2R_6$.
* From ${\rm e}$ to ${\rm f}$, we go through the go through the resistor $R_8$ in the **opposite direction from the current**, $I_1$, in that resistor: $+I_1R_8$.
* And we are back at the starting point, so the sum of the above terms is equal to zero.

which gives the equation:
```{math}
-\Delta V_1+\Delta V_2+I_2R_6+I_1R_8=0\quad\text{(loop abcdefa)}
```
Similarly, for the loop ${\rm abefa}$, we obtain:
```{math}
-\Delta V_1+I_3R_3+I_1R_8=0\quad\text{(loop abefa)}
```
and for loop ${\rm bcdeb}$:
```{math}
\Delta V_2+I_2R_6-I_3R_3=0\quad\text{(loop bcdeb)}
```
Although it appears that we have obtained 3 additional equations, only two of these are independent. For example, if you sum the second and third equations (loops ${\rm abefa}$, and ${\rm bcdeb}$), you simply obtain the first equation (loop ${\rm abcdefa}$). In general, if there are $N$ different loops, one will obtain less than $N$ independent equations (usually $N-1$ independent equations, as we did here).

At this point, after choosing one of the junction equations, and two of the loop equations, we have 3 independent equations that we can solve for the 3 unknown currents\footnote{The 3 unknowns do not necessarily have to be the currents, and could be any combination of the currents, battery voltage and resistors. As long as there at most 3 unknown quantities, this circuit can be solved.}:
```{math}
I_1 &= I_2+I_3 \quad &\text{(junction e)}\\
-\Delta V_1+\Delta V_2+I_2R_6+I_1R_8&=0\quad&\text{(loop abcdefa)}\\
-\Delta V_1+I_3R_3+I_1R_8&=0\quad&\text{(loop abefa)}
```
It is only a matter of some simple math to solve for the 3 unknowns from these 3 equations (which we carry out in the example below). 

:::{note} Example 19.3
Referring to the circuit in [](#fig:circuits:bigcircuit_vals), what is the voltage across the real terminal of the battery with ideal voltage $\Delta V_1$ (the voltage between points ${\rm a}$ and ${\rm b}$)? What is the current through resistor $R_5$?
:::{note} Solution
:class: dropdown

```{figure} figures/Circuits/circuitspng/bigcircuit_vals.png
:label: fig:circuits:bigcircuit_vals
:width: 60%
:align: center
:alt: The same circuit as in [](#fig:circuits:bigcircuit), with values filled in.
The same circuit as in [](#fig:circuits:bigcircuit), with values filled in.
```

Since this circuit is the same that we just analyzed, we know that it can be simplified into the circuit shown in [](#fig:circuits:bigcircuit_vals_simp), with resistors:
```{math}
R_6&=r_2+R_1+R_2=(1 {\rm \Omega})+(3 {\rm \Omega})+(4 {\rm \Omega})=8 {\rm \Omega}\\
R_8&=r_1+\frac{R_4R_5}{R_4+R_5}=(1 {\rm \Omega})+\frac{(2 {\rm \Omega})(2 {\rm \Omega})}{(2 {\rm \Omega})+(2 {\rm \Omega})}=2 {\rm \Omega}
```

```{figure} figures/Circuits/circuitspng/bigcircuit_vals_simp.png
:label: fig:circuits:bigcircuit_vals_simp
:width: 45%
:align: center
:alt: Simplified version of the circuit in [](#fig:circuits:bigcircuit_vals).
Simplified version of the circuit in [](#fig:circuits:bigcircuit_vals).
```
From above, we know that this leads to the following three equations:
```{math}
I_1 &= I_2+I_3 \quad &\text{(junction e)}\\
-\Delta V_1+\Delta V_2+I_2R_6+I_1R_8&=0\quad&\text{(loop abcdefa)}\\
-\Delta V_1+I_3R_3+I_1R_8&=0\quad&\text{(loop abefa)}
```
In order to solve these types of equations, it is usually convenient to place the battery voltages on the right hand side, and the resistor voltages on the left hand side. Although it is generally bad practice to fill numbers into the equations before solving them, it is almost always a good idea when solving the $N$ equations for the $N$ currents. Furthermore, in order to make the equations legible, it is also useful to not write in the units (which is very bad practice in general!). Thus, filling in the values for the resistors and the battery voltages, moving the voltages to the right hand side, we obtain the following system of equations:
```{math}
I_1-I_2-I_3&=0  \quad &\text{(junction e)}\\
2I_1+8I_2&=8 \quad&\text{(loop abcdefa)}\\
2I_1+4I_3&=12 \quad&\text{(loop abefa)}
```
Subtracting the second equation from the third equation (to eliminate $I_1$):
```{math}
4I_3-8I_2&=4\\
\therefore I_3&=1+2I_2
```
Substituting this into the junction equation:
```{math}
I_1-I_2-I_3&=0\\
I_1-I_2-1-2I_2&=0\\
\therefore I_2=\frac{1}{3}(I_1-1)
```
Finally, substituting this into the equation from loop ${\rm abcdefa}$, allows us to determine $I_1$ and the other two currents:
```{math}
2I_1+8I_2&=8\\
2I_1+8\left(\frac{1}{3}(I_1-1) \right)&=8\\
\therefore I_1&=\frac{16}{7}=2.29 {\rm A}\\
\therefore I_2&=\frac{1}{3}(I_1-1)=0.43 {\rm A}\\
\therefore I_3&=1+2I_2=1.86 {\rm A}\\
```
In this case, the currents are all positive, so the diagram in [](#fig:circuits:bigcircuit_vals_simp) is correct and we do not need to reverse the direction of any of the currents. 

We can now determine the potential difference across the real terminals of the battery $\Delta V_1$. The current through the battery is $I_1=2.29 {\rm A}$, which cause a voltage drop, $\Delta V_{r1}$, across its internal resistance, $r_1$ of:
```{math}
\Delta V_{r1}=I_1r_1=(2.29 {\rm A})(1 {\rm \Omega})=2.29 {\rm V}
``` 
The voltage across the real terminals of the battery is then:
```{math}
\Delta V_{real}=\Delta V_1-\Delta V_{r1}=(12 {\rm V})-(2.29 {\rm V})=9.7 {\rm V}
```

The current through the resistor $R_5$ ([](#fig:circuits:bigcircuit_vals)) requires a little more thought, since we calculated the current, $I_1$ through the effective resistor $R_8$, which we must now "break apart". [](#fig:circuits:bigcircuit_vals_r8) shows the components of $R_8$. 

```{figure} figures/Circuits/circuitspng/bigcircuit_vals_r8.png
:label: fig:circuits:bigcircuit_vals_r8
:width: 50%
:align: center
:alt: The components of the effective $R_8$ resistor from [](#fig:circuits:bigcircuit_vals_simp). The current, $I_1$, coming from the battery goes through $r_1$ and then splits up.
The components of the effective $R_8$ resistor from [](#fig:circuits:bigcircuit_vals_simp). The current, $I_1$, coming from the battery goes through $r_1$ and then splits up.
```

The current $I_1$, that goes through the $\Delta V_1$ battery also goes through the $r_1$ internal resistance of the battery. That current then splits up into currents, $I_4$ and $I_5$, to go through the resistors $R_4$ and $R_5$. Although it should be obvious that half of $I_1$ will go through each resistor (since these are equal), we can determine this from applying Kirchhoff's rules to the combination of resistors in [](#fig:circuits:bigcircuit_vals_r8):
```{math}
I_1&=I_4+I_5 \quad&\text{(junction)}\\
I_5R_5-I_4R_4&=0\quad&\text{(clockwise loop)}
```
From the loop equation, we have:
```{math}
I_5=\frac{R_4}{R_5}I_4=I_4
```
since $R_4=R_5=2 {\rm \Omega}$. Since $I_4=I_5$, the junction equation gives:
```{math}
I_5=\frac{1}{2}I_1=1.15 {\rm A}
```
By solving for $I_4$ and $I_5$, we have now determined all of the currents through all of the segments of the original circuit in [](#fig:circuits:bigcircuit_vals).

**Discussion:** In this example, we showed how one can use a simplified circuit to solve the current through the effective resistors in the simplified circuit. Once those currents are known, we showed that it is straightforward to determine the currents through individual resistors that have been combined into effective resistors.  
:::

:::{attention} Josh's Thoughts 
Solving a circuit can be daunting, especially if the diagram is drawn in an unfamiliar  way. While the circuits in this chapter are designed to be as easy to read as possible, many circuits are much more strange. For example, here is a circuit which you may come across:
```{figure} figures/Circuits/circuitspng/circuit1Josh.png
:label: fig:circuits:circuit1Josh
:width: 40%
:align: center
:alt: A weird looking circuit.
A weird looking circuit.
```
The circuit in [](#fig:circuits:circuit1Josh) May look like it is a difficult circuit to solve, but the diagram can be re-drawn to reveal the simplicity of the circuit:
```{figure} figures/Circuits/circuitspng/circuit2Josh.png
:label: fig:circuits:circuit2Josh
:width: 40%
:align: center
:alt: A much less weird looking circuit.
A much less weird looking circuit.
```
What used to be a strange kite shape is now just a parallel circuit, which can be further simplified by calculating the effective resistance:
```{math}
R_{eff} &= (R_1^{-1}+R_2^{-1}+(R_3+R_4)^{-1})^{-1}
```
Which gives a series circuit with only one resistor:
```{figure} figures/Circuits/circuitspng/circuit3Josh.png
:label: fig:circuits:circuit3Josh
:width: 40%
:align: center
:alt: A simple circuit.
A simple circuit.
```
Circuits can be drawn in many unique or potentially confusing ways, but knowing how to read the circuit and re-draw it can help make the diagram more legible and the circuit easier to solve.
:::

# Measuring current and voltage
In this section, we describe how one can build devices to measure current and voltage. A device that measures current is called an "ammeter" and a device that measured voltage is called a "voltmeter". Nowadays, these are usually found within the same physical device (a "multimeter"), which can also measure resistance (by measuring voltage and current, resistance can easily determined). We will limit our description to the design of simple analogue ammeters and voltmeters. 

As we will see in Chapter \ref{chapter:magneticforce}, it is straightforward to build a device that can measure very small amounts of current, by running the current through a coil in a magnetic field so that the coil can deflect a needle that indicates the amount of current. Such a device is called a "galvanometer" and is usually limited to measuring very small current (of order \si{mA}). In this section, we describe how one can use a galvanometer in order to build both ammeters to measure large currents and voltmeters. 
## The ammeter
An ammeter is built by placing a galvanometer in parallel with a "shunt" resistor, $R_s$. The shunt resistor is a small resistor that "shunts" (deflects) the current away from the galvanometer, so that most of the current goes through the shunt resistor. This is illustrated in [](#fig:circuits:ammeter), which shows the galvanometer (circle with the ${\rm G}$ inside), the internal resistance of the galvanometer, $R_G$, and the shunt resistor, $R_S$. The actual ammeter would be contained in a box and have two connectors (shown as ${\rm A}$ and ${\rm B}$ in the figure). 

```{figure} figures/Circuits/circuitspng/ammeter.png
:label: fig:circuits:ammeter
:width: 55%
:align: center
:alt: Constructing an ammeter from a galvanometer by placing a "shunt" resistor in parallel with the galvanometer.
Constructing an ammeter from a galvanometer by placing a "shunt" resistor in parallel with the galvanometer.
```

By modelling the ammeter, we can determine the total current, $I$, that we would like to measure using the known values of the resistors and the current, $I_G$, measured by the galvanometer. Considering any of the two junctions, and a clockwise loop, we have:
```{math}
I&=I_G+I_S \quad&\text{(junction)}\\
I_GR_G-I_SR_S&=0\quad&\text{(clockwise loop)}\\
\therefore I_S&=\frac{R_G}{R_S}I_G\\
\therefore I &= I_G+I_S=\left(1+\frac{R_G}{R_S}\right) I_G
```  
which allows us to determine the current $I$ from the current $I_G$, measured by the galvanometer. We also see that most of the current goes through the shunt (since $R_S$ is chosen to be smaller than $R_G$). The ammeter will have a total resistance, $R_A$, given by:
```{math}
R_A=\frac{R_GR_S}{R_G+R_S}
```
In order to measure the current through a specific segment of a circuit, an ammeter must be placed in series with that segment (so that the current that we want to measure will pass through the ammeter). [](#fig:circuits:ammeterR) shows how to connect an ammeter (circle with the letter ${\rm A}$) in order to measure the current through a resistor, $R$.

```{figure} figures/Circuits/circuitspng/ammeterR.png
:label: fig:circuits:ammeterR
:width: 40%
:align: center
:alt: An ammeter is placed in series with a resistor to measure the current through the resistor.
An ammeter is placed in series with a resistor to measure the current through the resistor.
```

## The voltmeter
A voltmeter is constructed by placing a large resistor, $R_V$, in series with a galvanomenter (that has internal resistance $R_G$), as illustrated in [](#fig:circuits:voltmeter). The voltmeter is designed to measure the potential difference between the terminals of the voltmeter (labelled ${\rm A}$ and ${\rm B}$ in the Figure).

```{figure} figures/Circuits/circuitspng/voltmeter.png
:label: fig:circuits:voltmeter
:width: 50%
:align: center
:alt: Constructing an voltmeter from a galvanometer by placing a resistor in series with the galvanometer.
Constructing an voltmeter from a galvanometer by placing a resistor in series with the galvanometer.
```

Given the values of the resistors, and the current measured by the galvanometer, one can easily determine the potential difference between points ${\rm A}$ and ${\rm B}$, since the current measured by the galvanometer goes directly through each resistor:
```{math}
\Delta V = V_B-V_A=-I_G(R_V+R_G)
```
In order to measure a potential difference across a component, the voltmeter must be placed in parallel with the component. [](#fig:circuits:voltmeterR) shows how to connect a voltmeter (circle with the letter ${\rm V}$) in order to measure the voltage across a resistor, $R$.

```{figure} figures/Circuits/circuitspng/voltmeterR.png
:label: fig:circuits:voltmeterR
:width: 30%
:align: center
:alt: A voltmeter is placed in parallel with a resistor to measure the voltage across the resistor.
A voltmeter is placed in parallel with a resistor to measure the voltage across the resistor.
```

When using an ammeter or a voltmeter, you will notice that these usually have buttons or dials to choose the range of currents or voltages to be measured. All the dial does is change the value of the shunt or series resistor in order to maintain a given maximum current through the galvanometer. An ohmmeter, to measure resistance, is simply an ammeter with a built-in fixed potential difference (so that by measuring current across a known potential difference, the resistance of the component can be determined). 


:::{note} Example 19.4
Two resistors with a resistance of $1 {\rm k\Omega}$ are placed in series with a $12 {\rm V}$ battery. A voltmeter with a total resistance of $R_V=10 {\rm k\Omega}$ is used to measure the voltage across one of the resistors. What reading does the voltmeter show?
:::{note} Solution
:class: dropdown
Since the two resistors have the same resistance, and are in series with the battery, when no voltmeter is connected, the voltage across either resistor is easily shown to be $6 {\rm V}$. However, by connecting the voltmeter across one of the resistors, we modify the circuit, and we should expect the voltage that is read to be different than $6 {\rm V}$ (can you tell if it will be larger or smaller?). The circuit, with the voltmeter connected, is shown in [](#fig:circuits:voltmeter2R).

```{figure} figures/Circuits/circuitspng/voltmeter2R.png
:label: fig:circuits:voltmeter2R
:width: 35%
:align: center
:alt: When using a voltmeter, the circuit is modified.
When using a voltmeter, the circuit is modified.
```

We can model this circuit quite easily by combining the voltmeter (modelled as a resistor) in parallel with one of the resistors:
```{math}
R_{eff}&=\frac{R_VR}{R_V+R}\\
&=\frac{(10 {\rm k\Omega})(1 {\rm k\Omega})}{(10 {\rm k\Omega})+(1 {\rm k\Omega})}\\
&=\frac{10}{11}{\rm k\Omega}=0.91 {\rm k\Omega}
```
The sum of the voltage drops across the effective resistor and the other resistor must equal the potential difference across the battery (Kirchhoff's loop rule):
```{math}
R_{eff}I+RI&=\Delta V\\
\therefore I &= \frac{\Delta V}{R_{eff}+R}=\frac{(12 {\rm V})}{(0.91 {\rm k\Omega})+(1 {\rm k\Omega})}=6.29e-3 {\rm A}
```
The voltage drop across the effective resistor is the same as the reading on the voltmeter:
```{math}
\Delta V_{voltmeter}=IR_{eff}=(6.29e-3 {\rm A})(0.91 {\rm k\Omega})=5.7 {\rm V}
```
and the voltmeter reads a smaller voltage than there would be without the voltmeter.

**Discussion:** In this example, we saw that by using a voltmeter to measure a voltage in a circuit, we actually disturb the circuit. By placing the voltmeter in parallel with one resistor, we created an effective resistor with a resistance that is lower than the resistance of either the voltmeter or the resistor. This lowered the total resistance of the circuit, which increased the current. A larger current through the second resistor (without the voltmeter) leads to a larger voltage drop than $6 {\rm V}$ across that resistor. Thus, the voltage drop across the resistor with the voltmeter will be less than $6 {\rm V}$, as we found, since the two voltage drops need to add to $12 {\rm V}$. In general, when using a voltmeter, one needs a voltmeter with a very high resistance in order to minimize the disturbance to the circuit (if the voltmeter has a high resistance, only a small amount of current will be shunted from the resistor). In practice, voltmeters have resistance that are typically of the order of $1 {\rm M\Omega}$.
:::

# Modelling circuits with capacitors
:::{caution} Review
* [Section %s](#sec:potential:capacitors) on capacitors.
:::
So far, we have modelled circuits where the current does not change with time. When a capacitor is included in a circuit, the current will change with time, as the capacitor charges or discharges. The circuit shown in [](#fig:circuits:RCcircuit) shows an ideal battery\footnote{The model still holds for a real battery, since the internal resistance of the battery can just be included into the resistance of the resistor, $R$.} ($\Delta V$), in series with a resistor ($R$), a capacitor ($C$, two vertical bars) and a switch (${\rm S}$) that is open. 
```{figure} figures/Circuits/circuitspng/RCcircuit.png
:label: fig:circuits:RCcircuit
:width: 40%
:align: center
:alt: A simple circuit with a resistor, battery, and capacitor.
A simple circuit with a resistor, battery, and capacitor.
```
When the switch is open, current cannot flow through the circuit. If we assume that the capacitor has no charge on it, once we close the switch, current will start to flow and charges will accumulate on the capacitor. Electrons will leave the negative terminal of the battery, flow through the resistor and accumulate on the left side of the capacitor, which acquires a negative charge. This pushes electrons off of the right hand side of the capacitor, which then becomes positively charged. The electrons from the positive side of the capacitor then flow into the positive side of the battery, completing the circuit.

Eventually, the charges on the capacitor will build up to a point were they prevent any further flow of current. Once the left side of the capacitor is at the same potential as the left side of the battery, current will cease to flow. That is, eventually, the potential difference across the capacitor will be equal to that across the battery, and we can think of this as a circuit used to charge a capacitor. The current is high when the switch is first opened, but eventually goes down to zero as the capacitor charges. The current is thus time-dependent. 

We can model this simple circuit (with the switch closed) using Kirchhoff's loop rule. The sum of the voltages across each component must sum to zero:
```{math}
\Delta V - IR - \frac{Q}{C} = 0
```
where we used the fact that the charge, $Q$, on a capacitor is related to the potential difference, $\Delta V_C$, across the capacitor by $Q=C\Delta V_C$. The current, $I$, is the rate at which charges flow through the circuit, and is thus equal to rate at which charges accumulate on the capacitor:
```{math}
I=\frac{dQ}{dt}
```
Substituting this into the loop equation, we obtain a separable differential equation for the charge on the capacitor as a function of time, $Q(t)$:
```{math}
\Delta V - IR - \frac{Q}{C} &= 0\\
\Delta V - \frac{dQ}{dt}R - \frac{Q}{C} &= 0\\
\Delta V - \frac{Q}{C} &= \frac{dQ}{dt}R\\
C\Delta V - Q &= RC\frac{dQ}{dt}\\
\therefore \frac{dt}{RC}&=\frac{dQ}{C\Delta V - Q }
```
This is similar to differential equations that we have solved previously (in fact, it is the same equation as in [Example 6.4](#ex:applyingnewtonslaws:drag) where we looked at the effect of velocity-dependent drag). The solution to the equation, assuming that the switch is closed at $t=0$, is given by an exponential:
```{math}
Q(t) = C\Delta V\left( 1 - e^{-\frac{t}{RC}} \right)
```
Thus, the charge on the capacitor starts at zero when the switch is closed, and grows asymptotically until it reaches a value of $Q=C\Delta V$, which corresponds to the capacitor having the same potential difference across it as the battery. The value $\tau=RC$ is called the "time constant" of the RC circuit, and corresponds to the time at which the capacitor will reach about $(1-e^{-1})=63\%$ of its maximal charge. The current as a function of time is given by:
```{math}
I(t)=\frac{dQ}{dt}=\frac{\Delta V}{R}e^{-\frac{t}{RC}}
```
and we can see that at time $t=0$ the current is the same as if there were no capacitor present, and the current then decreases exponentially until it reaches zero.

# Summary

Batteries are usually formed from a collection of electrochemical cells. Batteries provide a constant electric potential difference across their terminals, usually sustained by a chemical reaction, as long as the current through the battery is not too large (or the chemical reactions cannot be sustained). 

An ideal battery has no resistance and can be modelled as a simple potential difference in a circuit. A real battery includes an internal resistance and be modelled in a circuit as an ideal battery in series with a resistor. The voltage across the terminals of a real battery is equal to the voltage across the terminals of the ideal battery only when no current flows through the internal resistance. 

Circuits are modelled using circuit diagram that include components (such as batteries and resistors) and wires. Wires are always modelled as having no resistance, since their resistance can be included by placing the appropriate resistor along the wire. The electric potential is always constant along a wire with no resistance. When modelling a circuit, **one always models the direction of conventional current**; that is, current is always indicated as the direction in which positive charges flow (even if in reality, it is negative electrons that flow in the opposite direction).

Circuits should be thought of in terms of conservation of energy. Components produce a potential difference between sections of wire. Batteries correspond to an increase in potential (if going from the negative to the positive terminal), whereas resistors corresponds to a decrease in potential (if going in the same direction as current through the resistor). 

Kirchhoff's rules allow us to model complex circuits. The junction rule states that: **The current entering a junction must be equal to the current exiting a junction.** This is a statement about conservation of charge. If charges are flowing into a junction, then the same amount of charges must flow back out of the junction per unit time.

The loop rule states that: **The net voltage drop across a loop must be zero.** This is a statement about conservation of energy indicating that as the potential energy of a positive charge increases as it goes through a battery, it will decrease by the same amount if it goes through a resistor that is connected to the terminals of that battery.

In order to **apply the loop rule**, we strongly suggest using the following procedure, after having made a clear, labelled diagram showing battery arrows and currents in the circuit:
1.  Identify the loop, including starting position and direction.
2.  Start at the beginning of the loop, and trace around the loop.
3.  Each time a battery is encountered, **add the battery voltage if you are tracing the loop in the same direction as the corresponding battery arrow**, subtract the voltage otherwise.
4.  Each time a resistor is encountered, **subtract the voltage across that resistor ($RI$, from Ohm's Law) if tracing the loop in the same direction as the current**, add the the voltage otherwise.
5.  Once you have traced back to the starting point, the resulting sum must be zero.


In general, we suggest the following procedure in order to use Kirchhoff's rules to model any circuit:
1.  Make a good diagram of the circuit.
2.  Simplify any resistors that can easily be combined into effective resistors (in series or in parallel).
3.  Make a new diagram with the effective resistors, showing battery arrows, and labelling all of the nodes so that loops can easily be described.
4.  Make a **guess** for the directions of the current in each segment.
5.  Write the junction rule equations. Usually, you will get $M-1$ independent equations for $M$ loops.
6.  Write the loop equations. Usually, you will get $M-1$ independent equations for $M$ loops.
7.  This will lead to $N$ independent equations that one can solve for the $N$ different currents in the circuit.
8.  Once you have determined all of the currents, if some of them are negative numbers, switch the direction of those currents in the diagram (they will be negative if you guessed the direction incorrectly).


Current and voltage measuring devices (ammeters and voltmeters, respectively) can be constructed from a galvanometer, which measures small currents. An ammeter is constructed by placing a small shunt resistor in parallel with the galvanometer so that most of the current passes through the shunt resistor. The resulting ammeter must be placed in series with a component in order to measure the current through that component.

A voltmeter is constructed by placing a resistor in series with the galvanometer in order to reduce the current through the galvanometer. The resulting voltmeter must be placed in parallel with a component in a circuit in order to measure the voltage across that component. Note that because voltmeters and ammeters have a non-zero resistance, they will affect the circuit once they are connected.

When a capacitor is placed in a circuit, the current in the circuit will no longer be constant in time. If an uncharged capacitor with capacitance, $C$, is placed in a series circuit with a battery and a resistor of resistance, $R$, the capacitor will charge until the voltage across the capacitor is equal to that across the battery. Once the capacitor is charged, current ceases to flow in the circuit. The charges on a capacitor accumulate with a rate that decays exponentially; it will take an infinite amount of time for the capacitor to become fully charged. It will be charged to about 63\% of maximum charge after a period of time, $\tau=RC$, called the time constant of the capacitor.

:::{important} Important Equations
**Ohm's Law:**
```{math}
\Delta V &= IR
```
**Junction Rule:**
```{math}
\sum I_{in} &= \sum I_{out}
```
**Loop Rule:**
```{math}
\sum_{loop} \Delta V = 0
```
:::


# Thinking about the material

:::{seealso} Reflect and research
* When did Galvani and Volta experiment with electric cells?
* What is the largest voltage that Volta obtained with his voltaic pile?
* How does one charge a rechargeable battery? What would the circuit look like?
:::

:::{seealso} To try at home
* Research circuit diagrams of appliances you have at home.
:::

:::{seealso} To try in the lab
* Propose an experiment to measure the change in current of an RC circuit as a capacitor builds up and releases charge.
* Propose an experiment to determine the RC constant for a capacitor charging circuit.
* Propose an experiment to measure the resistance of a voltmeter and compare your results with the manufacturer's.
:::


# Sample problems and solutions

## Problems
:::{note} Problem 19.1
:label: prob:circuits:capacitor 
A simple RC circuit as shown in [](#fig:circuits:RCcircuit) contains a charged capacitor of unknown capacitance, $C$, in series with a resistor, $R=2 {\rm \Omega}$. When charged, the potential difference across the terminals of the capacitor is $9 {\rm V}$. 

At time $t=0 {\rm s}$, the switch, ${\rm S}$, is closed, allowing the capacitor to discharge through the resistor. The current is then measured to be $I = 0.05 {\rm A}$ at $t = 5 {\rm s}$ after opening the switch.
* a. What is the capacitance of the capacitor?
* b. What charge did the capacitor hold at $t = 2 {\rm s}$?
```{figure} figures/Circuits/circuitspng/RCcircuitCharge.png
:label: fig:circuits:RCcircuitCharge
:width: 30%
:align: center
:alt: A simple circuit with a resistor and a capacitor.
A simple circuit with a resistor and a capacitor.
```
:::

:::{note} Problem 19.2
:label: prob:circuits:voltmeter}
A voltmeter with a resistance of $R_V = 20 {\rm k\Omega}$ is attached to a circuit with a battery of unknown voltage and two resistors with a resistance of $R = 2.5 {\rm k\Omega}$ as shown in [](#fig:circuits:question2circuit). The voltmeter reads that the voltage drop over one of the resistors is $\Delta V_{vm} = 5.647 {\rm V}$. What is the voltage drop, $V_R$, over each resistor when the voltmeter is removed from the circuit?
```{figure} figures/Circuits/circuitspng/question2circuit.png
:label: fig:circuits:question2circuit
:width: 45%
:align: center
:alt: A circuit with a battery of unknown voltage.
A circuit with a battery of unknown voltage.
```
:::

## Solutions
:::{note} Solution 19.1
:label: soln:circuits:capacitor
:class: dropdown
* a. In this case, the capacitor is discharging as a function of time. At time $t=0$, the voltage across the capacitor is $\Delta V=9 {\rm V}$. We can model this discharging circuit in a similar way as we modelled the charging circuit. 

We start with Kirchhoff's loop rule, which leads to a differential equation for the charge stored on the capacitor as function of time, $Q(t)$:
```{math}
\Delta V - IR &=0\\
\frac{Q}{C} - IR &=0\\
\frac{Q}{C} - \frac{dQ}{dt}R &=0\\
\therefore \frac{dQ}{dt} = -\frac{1}{RC}Q
```
This differential equation is straightforward to solve, since it says that the derivative of $Q(t)$ is equal to a constant multiplied by $Q(t)$. Thus, $Q(t)$ must be an exponential function:
```{math}
Q(t) = Q_0 e^{-\frac{t}{RC}}
```
where $Q_0$ is the (unknown) charge on the capacitor at $t=0$. You can easily verify that taking the derivative of this equation will result in the differential equation being satisfied.

Now that we have an equation for the charge as a function of time, it is straightforward to find the current, since it is just the time derivative of the charge. The current as a function of time, $I(t)$, is given by:
```{math}
I &=\frac{dQ}{dt}=-\frac{1}{RC}Q=\frac{Q_0}{RC} e^{-\frac{t}{RC}}=I_0e^{-\frac{t}{RC}}
```
where $I_0=\frac{Q_0}{RC}$ is the current at $t=0$.\\

We also know that the current through the resistor at $t=0$ is given by Ohm's Law, since, at that time, the voltage, $\frac{Q_0}{C}=9 {\rm V}$:
```{math}
I_0=\frac{Q_0}{RC}=\frac{(9 {\rm V})}{(2 {\rm \Omega})}=4.5 {\rm A}
```

We then know that the current, at time $t=5 {\rm s}$, is equal to $I(5)=0.05 {\rm A}$, allowing us to determine the capacitance:
```{math}
I(5)&=I_0e^{-\frac{t}{RC}}\\
\ln\left( \frac{I(5)}{I_0} \right)&=-\frac{t}{RC}\\
\therefore C&=\frac{t}{R \ln\left( \frac{I_0}{I(5)} \right)}=\frac{(5 {\rm s})}{(2 {\rm \Omega})\ln\left( \frac{(4.5 {\rm A})}{(0.05 {\rm A})} \right)}=0.56 {\rm F}
```

* b. To find the charge stored in the capacitor at $t = 2 {\rm s}$, we can use the function $Q(t)$ that we determined before:
```{math}
Q(t=2 {\rm s})=Q_0 e^{-\frac{t}{RC}}
```
where we can determine $Q_0$, now that we know the capacitance. $Q_0$ is the charge on the capacitor at time $t=0$, when the voltage across the capacitor is $9 {\rm V}$:
```{math}
Q_0=C\Delta V = (0.56 {\rm F})(9 {\rm V})=5.0 {\rm C}
```
At $t = 2 {\rm s}$, the charge on the capacitor is thus:
```{math}
Q(t = 2 {\rm s})=(5.0 {\rm C})e^{-\frac{(2 {\rm s})}{(2 {\rm \Omega})(0.56 {\rm F})}}=0.84 {\rm C}
```
:::

:::{note} Solution 19.2
:label: soln:circuits:voltmeter
:class: dropdown
In order to know the voltage across one of the resistors, we need to determine the voltage that is across the battery. Once we have determined the voltage across the battery, the voltage across one of the resistors will just be half of that across the battery, since the two resistors have the same resistance.

We can model the circuit with the voltmeter in place, since we know the voltage across the parallel combination of the voltmeter and resistor (that voltage which is readout by the voltmeter). We can combine the voltmeter and one of the resistors into a an equivalent resistor, $R_{eff}$:
```{math}
R_{eff} &= \frac{1}{R_V^{-1}+R^{-1}}\\
R_{eff} &= \frac{1}{(20 {\rm k\Omega})^{-1}+(2.5 {\rm k\Omega})^{-1}}\\
R_{eff} &= 2.22 {\rm k\Omega}\\
```
Now that we have the effective resistance as well as the voltage drop across that effective resistor, we can solve for current through the circuit:
```{math}
I &= \frac{\Delta V_{vm}}{R_{eff}}\\
I &= \frac{5.647 {\rm V}}{2.22 {\rm k\Omega}}\\
I &= 2.541 {\rm mA}\\
```

Now that we have the current, we can combine the known resistances and determine the voltage drop across the battery. 
```{math}
\Delta V_{battery} &= I(R_{eff}+R)\\
\Delta V_{battery} &= (2.541 {\rm mA})(2.222 {\rm k\Omega}+2.5 {\rm k\Omega})\\
\Delta V_{battery} &= 12 {\rm V}\\
```
Thus, with no voltmeter present, the voltage across each resistor is $6 {\rm V}$.
:::

