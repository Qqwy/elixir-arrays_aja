
# Benchmark

Comparing `Arrays.append` with appending a value to a list.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">7.60 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.0</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.0.1</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">500 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">500 ms</td>
  </tr>
</table>

## Statistics




__Input: 0000000032 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">18.15 M</td>
    <td style="white-space: nowrap; text-align: right">55.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±1450.31%</td>
    <td style="white-space: nowrap; text-align: right">32 ns</td>
    <td style="white-space: nowrap; text-align: right">110 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">315.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±495.28%</td>
    <td style="white-space: nowrap; text-align: right">215 ns</td>
    <td style="white-space: nowrap; text-align: right">684.89 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">322.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±538.59%</td>
    <td style="white-space: nowrap; text-align: right">185 ns</td>
    <td style="white-space: nowrap; text-align: right">738.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.35 M</td>
    <td style="white-space: nowrap; text-align: right">425.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±714.91%</td>
    <td style="white-space: nowrap; text-align: right">187 ns</td>
    <td style="white-space: nowrap; text-align: right">2570.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.38 M</td>
    <td style="white-space: nowrap; text-align: right">2615.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±104.86%</td>
    <td style="white-space: nowrap; text-align: right">2160 ns</td>
    <td style="white-space: nowrap; text-align: right">20601.10 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">18.15 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">5.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">5.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.35 M</td>
    <td style="white-space: nowrap; text-align: right">7.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.38 M</td>
    <td style="white-space: nowrap; text-align: right">47.49x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">528 B</td>
    <td>33.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">920 B</td>
    <td>57.5x</td>
  </tr>

</table>


<hr/>


__Input: 0000000064 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">12.95 M</td>
    <td style="white-space: nowrap; text-align: right">77.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±1086.22%</td>
    <td style="white-space: nowrap; text-align: right">39 ns</td>
    <td style="white-space: nowrap; text-align: right">176.63 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.57 M</td>
    <td style="white-space: nowrap; text-align: right">279.94 ns</td>
    <td style="white-space: nowrap; text-align: right">±624.14%</td>
    <td style="white-space: nowrap; text-align: right">179 ns</td>
    <td style="white-space: nowrap; text-align: right">566.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">315.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±509.49%</td>
    <td style="white-space: nowrap; text-align: right">215 ns</td>
    <td style="white-space: nowrap; text-align: right">663.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.39 M</td>
    <td style="white-space: nowrap; text-align: right">417.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±382.37%</td>
    <td style="white-space: nowrap; text-align: right">281 ns</td>
    <td style="white-space: nowrap; text-align: right">956.36 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.51 M</td>
    <td style="white-space: nowrap; text-align: right">662.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±503.42%</td>
    <td style="white-space: nowrap; text-align: right">268 ns</td>
    <td style="white-space: nowrap; text-align: right">16562.06 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">12.95 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.57 M</td>
    <td style="white-space: nowrap; text-align: right">3.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">4.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.39 M</td>
    <td style="white-space: nowrap; text-align: right">5.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.51 M</td>
    <td style="white-space: nowrap; text-align: right">8.59x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">224 B</td>
    <td>14.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">448 B</td>
    <td>28.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000000128 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.51 M</td>
    <td style="white-space: nowrap; text-align: right">74.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±973.52%</td>
    <td style="white-space: nowrap; text-align: right">43 ns</td>
    <td style="white-space: nowrap; text-align: right">235.15 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 M</td>
    <td style="white-space: nowrap; text-align: right">292.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±397.50%</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
    <td style="white-space: nowrap; text-align: right">2891.56 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">381.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±366.65%</td>
    <td style="white-space: nowrap; text-align: right">262 ns</td>
    <td style="white-space: nowrap; text-align: right">1924.39 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">420.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±400.91%</td>
    <td style="white-space: nowrap; text-align: right">285 ns</td>
    <td style="white-space: nowrap; text-align: right">910.67 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.82 M</td>
    <td style="white-space: nowrap; text-align: right">1220.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±357.88%</td>
    <td style="white-space: nowrap; text-align: right">481 ns</td>
    <td style="white-space: nowrap; text-align: right">30258.20 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.51 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 M</td>
    <td style="white-space: nowrap; text-align: right">3.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">5.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">5.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.82 M</td>
    <td style="white-space: nowrap; text-align: right">16.49x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">264 B</td>
    <td>16.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">280 B</td>
    <td>17.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000000256 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">11.83 M</td>
    <td style="white-space: nowrap; text-align: right">84.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±811.86%</td>
    <td style="white-space: nowrap; text-align: right">52 ns</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.36 M</td>
    <td style="white-space: nowrap; text-align: right">297.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±209.80%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">517 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">308.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±200.89%</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
    <td style="white-space: nowrap; text-align: right">746.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">332.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±189.29%</td>
    <td style="white-space: nowrap; text-align: right">300 ns</td>
    <td style="white-space: nowrap; text-align: right">530.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.51 M</td>
    <td style="white-space: nowrap; text-align: right">1971.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±248.86%</td>
    <td style="white-space: nowrap; text-align: right">780 ns</td>
    <td style="white-space: nowrap; text-align: right">29355.72 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">11.83 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.36 M</td>
    <td style="white-space: nowrap; text-align: right">3.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">3.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">3.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.51 M</td>
    <td style="white-space: nowrap; text-align: right">23.32x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">328 B</td>
    <td>20.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">384 B</td>
    <td>24.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000000512 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">14.86 M</td>
    <td style="white-space: nowrap; text-align: right">67.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±374.09%</td>
    <td style="white-space: nowrap; text-align: right">50 ns</td>
    <td style="white-space: nowrap; text-align: right">332.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.55 M</td>
    <td style="white-space: nowrap; text-align: right">392.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±256.74%</td>
    <td style="white-space: nowrap; text-align: right">278 ns</td>
    <td style="white-space: nowrap; text-align: right">2130.03 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">465.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±180.57%</td>
    <td style="white-space: nowrap; text-align: right">412 ns</td>
    <td style="white-space: nowrap; text-align: right">856.97 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">499.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±368.15%</td>
    <td style="white-space: nowrap; text-align: right">290.50 ns</td>
    <td style="white-space: nowrap; text-align: right">10709.28 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.41 M</td>
    <td style="white-space: nowrap; text-align: right">2412.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±125.22%</td>
    <td style="white-space: nowrap; text-align: right">1476 ns</td>
    <td style="white-space: nowrap; text-align: right">17661.51 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">14.86 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.55 M</td>
    <td style="white-space: nowrap; text-align: right">5.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">6.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">7.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.41 M</td>
    <td style="white-space: nowrap; text-align: right">35.85x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">336 B</td>
    <td>21.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">4192 B</td>
    <td>262.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000001024 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">9.10 M</td>
    <td style="white-space: nowrap; text-align: right">109.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±701.00%</td>
    <td style="white-space: nowrap; text-align: right">63 ns</td>
    <td style="white-space: nowrap; text-align: right">315.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.87 M</td>
    <td style="white-space: nowrap; text-align: right">536.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±238.89%</td>
    <td style="white-space: nowrap; text-align: right">348 ns</td>
    <td style="white-space: nowrap; text-align: right">2464 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.32 M</td>
    <td style="white-space: nowrap; text-align: right">757.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±181.25%</td>
    <td style="white-space: nowrap; text-align: right">489 ns</td>
    <td style="white-space: nowrap; text-align: right">7690.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.85 M</td>
    <td style="white-space: nowrap; text-align: right">1170.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±310.72%</td>
    <td style="white-space: nowrap; text-align: right">325 ns</td>
    <td style="white-space: nowrap; text-align: right">14941.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.124 M</td>
    <td style="white-space: nowrap; text-align: right">8055.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±114.94%</td>
    <td style="white-space: nowrap; text-align: right">2942 ns</td>
    <td style="white-space: nowrap; text-align: right">39700.24 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">9.10 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.87 M</td>
    <td style="white-space: nowrap; text-align: right">4.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.32 M</td>
    <td style="white-space: nowrap; text-align: right">6.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.85 M</td>
    <td style="white-space: nowrap; text-align: right">10.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.124 M</td>
    <td style="white-space: nowrap; text-align: right">73.28x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">3904 B</td>
    <td>244.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000002048 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">9.86 M</td>
    <td style="white-space: nowrap; text-align: right">101.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±45.75%</td>
    <td style="white-space: nowrap; text-align: right">89 ns</td>
    <td style="white-space: nowrap; text-align: right">255.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">621.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±29.83%</td>
    <td style="white-space: nowrap; text-align: right">563 ns</td>
    <td style="white-space: nowrap; text-align: right">1236.67 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.35 M</td>
    <td style="white-space: nowrap; text-align: right">742.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±342.95%</td>
    <td style="white-space: nowrap; text-align: right">357 ns</td>
    <td style="white-space: nowrap; text-align: right">18912.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.00 M</td>
    <td style="white-space: nowrap; text-align: right">1004.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±169.74%</td>
    <td style="white-space: nowrap; text-align: right">373.50 ns</td>
    <td style="white-space: nowrap; text-align: right">3173.75 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0621 M</td>
    <td style="white-space: nowrap; text-align: right">16095.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±80.07%</td>
    <td style="white-space: nowrap; text-align: right">6760 ns</td>
    <td style="white-space: nowrap; text-align: right">54086.64 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">9.86 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">6.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.35 M</td>
    <td style="white-space: nowrap; text-align: right">7.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.00 M</td>
    <td style="white-space: nowrap; text-align: right">9.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0621 M</td>
    <td style="white-space: nowrap; text-align: right">158.68x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">408 B</td>
    <td>25.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">320 B</td>
    <td>20.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000004096 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">5.79 M</td>
    <td style="white-space: nowrap; text-align: right">172.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±37.48%</td>
    <td style="white-space: nowrap; text-align: right">164.50 ns</td>
    <td style="white-space: nowrap; text-align: right">460.31 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">529.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±113.26%</td>
    <td style="white-space: nowrap; text-align: right">421 ns</td>
    <td style="white-space: nowrap; text-align: right">4151.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.12 M</td>
    <td style="white-space: nowrap; text-align: right">892.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±107.76%</td>
    <td style="white-space: nowrap; text-align: right">829 ns</td>
    <td style="white-space: nowrap; text-align: right">2083.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">4332.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±391.47%</td>
    <td style="white-space: nowrap; text-align: right">405 ns</td>
    <td style="white-space: nowrap; text-align: right">102926.97 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0286 M</td>
    <td style="white-space: nowrap; text-align: right">34928.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±59.41%</td>
    <td style="white-space: nowrap; text-align: right">26971.50 ns</td>
    <td style="white-space: nowrap; text-align: right">104811.26 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">5.79 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">3.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.12 M</td>
    <td style="white-space: nowrap; text-align: right">5.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">25.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0286 M</td>
    <td style="white-space: nowrap; text-align: right">202.08x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">400 B</td>
    <td>25.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">21728 B</td>
    <td>1358.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000008192 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">3.81 M</td>
    <td style="white-space: nowrap; text-align: right">262.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±58.01%</td>
    <td style="white-space: nowrap; text-align: right">226 ns</td>
    <td style="white-space: nowrap; text-align: right">1180.05 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">668.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±19.47%</td>
    <td style="white-space: nowrap; text-align: right">647 ns</td>
    <td style="white-space: nowrap; text-align: right">1081 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">945.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±217.60%</td>
    <td style="white-space: nowrap; text-align: right">618.50 ns</td>
    <td style="white-space: nowrap; text-align: right">18996 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">0.82 M</td>
    <td style="white-space: nowrap; text-align: right">1216.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±71.38%</td>
    <td style="white-space: nowrap; text-align: right">1079.50 ns</td>
    <td style="white-space: nowrap; text-align: right">7523.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0128 M</td>
    <td style="white-space: nowrap; text-align: right">78021.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±68.40%</td>
    <td style="white-space: nowrap; text-align: right">104644 ns</td>
    <td style="white-space: nowrap; text-align: right">274231.40 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">3.81 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">2.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">3.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">0.82 M</td>
    <td style="white-space: nowrap; text-align: right">4.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0128 M</td>
    <td style="white-space: nowrap; text-align: right">297.34x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">488 B</td>
    <td>30.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">10384 B</td>
    <td>649.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000016384 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1338.91 K</td>
    <td style="white-space: nowrap; text-align: right">0.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.16%</td>
    <td style="white-space: nowrap; text-align: right">0.66 μs</td>
    <td style="white-space: nowrap; text-align: right">3.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">914.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.68%</td>
    <td style="white-space: nowrap; text-align: right">1.08 μs</td>
    <td style="white-space: nowrap; text-align: right">1.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">907.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.30%</td>
    <td style="white-space: nowrap; text-align: right">1.05 μs</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">243.36 K</td>
    <td style="white-space: nowrap; text-align: right">4.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.70%</td>
    <td style="white-space: nowrap; text-align: right">3.07 μs</td>
    <td style="white-space: nowrap; text-align: right">22.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">5.39 K</td>
    <td style="white-space: nowrap; text-align: right">185.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.71%</td>
    <td style="white-space: nowrap; text-align: right">65.39 μs</td>
    <td style="white-space: nowrap; text-align: right">651.71 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1338.91 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">914.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">907.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">243.36 K</td>
    <td style="white-space: nowrap; text-align: right">5.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">5.39 K</td>
    <td style="white-space: nowrap; text-align: right">248.53x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">520 B</td>
    <td>32.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">108832 B</td>
    <td>6802.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000032768 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1126.17 K</td>
    <td style="white-space: nowrap; text-align: right">0.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.25%</td>
    <td style="white-space: nowrap; text-align: right">0.81 μs</td>
    <td style="white-space: nowrap; text-align: right">2.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">954.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.06%</td>
    <td style="white-space: nowrap; text-align: right">1.05 μs</td>
    <td style="white-space: nowrap; text-align: right">1.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">782.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.86%</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">184.86 K</td>
    <td style="white-space: nowrap; text-align: right">5.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.74%</td>
    <td style="white-space: nowrap; text-align: right">4.10 μs</td>
    <td style="white-space: nowrap; text-align: right">19.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.77 K</td>
    <td style="white-space: nowrap; text-align: right">360.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.10%</td>
    <td style="white-space: nowrap; text-align: right">542.99 μs</td>
    <td style="white-space: nowrap; text-align: right">648.20 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1126.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">954.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">782.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">184.86 K</td>
    <td style="white-space: nowrap; text-align: right">6.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.77 K</td>
    <td style="white-space: nowrap; text-align: right">405.94x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">76224 B</td>
    <td>4764.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000065536 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1064.49 K</td>
    <td style="white-space: nowrap; text-align: right">0.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.11%</td>
    <td style="white-space: nowrap; text-align: right">0.89 μs</td>
    <td style="white-space: nowrap; text-align: right">1.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">745.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.17%</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
    <td style="white-space: nowrap; text-align: right">1.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">702.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.63%</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">225.05 K</td>
    <td style="white-space: nowrap; text-align: right">4.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.00%</td>
    <td style="white-space: nowrap; text-align: right">4.45 μs</td>
    <td style="white-space: nowrap; text-align: right">5.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.07 K</td>
    <td style="white-space: nowrap; text-align: right">326.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.28%</td>
    <td style="white-space: nowrap; text-align: right">255.95 μs</td>
    <td style="white-space: nowrap; text-align: right">835.57 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1064.49 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">745.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">702.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">225.05 K</td>
    <td style="white-space: nowrap; text-align: right">4.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.07 K</td>
    <td style="white-space: nowrap; text-align: right">347.26x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">592 B</td>
    <td>37.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">524224 B</td>
    <td>32764.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000131072 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">992.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.26%</td>
    <td style="white-space: nowrap; text-align: right">0.89 μs</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">736.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.77%</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">664.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.15%</td>
    <td style="white-space: nowrap; text-align: right">1.60 μs</td>
    <td style="white-space: nowrap; text-align: right">1.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">196.72 K</td>
    <td style="white-space: nowrap; text-align: right">5.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.05%</td>
    <td style="white-space: nowrap; text-align: right">5.01 μs</td>
    <td style="white-space: nowrap; text-align: right">5.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.04 K</td>
    <td style="white-space: nowrap; text-align: right">962.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.96%</td>
    <td style="white-space: nowrap; text-align: right">589.03 μs</td>
    <td style="white-space: nowrap; text-align: right">2385.40 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">992.46 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">736.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">664.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">196.72 K</td>
    <td style="white-space: nowrap; text-align: right">5.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.04 K</td>
    <td style="white-space: nowrap; text-align: right">954.94x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">648 B</td>
    <td>40.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">447952 B</td>
    <td>27997.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000262144 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">987.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.70%</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
    <td style="white-space: nowrap; text-align: right">1.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">815.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.02%</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">562.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.36%</td>
    <td style="white-space: nowrap; text-align: right">1.78 μs</td>
    <td style="white-space: nowrap; text-align: right">1.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">202.72 K</td>
    <td style="white-space: nowrap; text-align: right">4.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.50%</td>
    <td style="white-space: nowrap; text-align: right">4.93 μs</td>
    <td style="white-space: nowrap; text-align: right">5.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4351.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.29%</td>
    <td style="white-space: nowrap; text-align: right">4351.00 μs</td>
    <td style="white-space: nowrap; text-align: right">4821.27 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">987.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">815.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">562.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">202.72 K</td>
    <td style="white-space: nowrap; text-align: right">4.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4295.16x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">624 B</td>
    <td>39.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">2469504 B</td>
    <td>154344.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000524288 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">846.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">641.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.56 μs</td>
    <td style="white-space: nowrap; text-align: right">1.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">445.04 K</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">53.35 K</td>
    <td style="white-space: nowrap; text-align: right">18.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">18.74 μs</td>
    <td style="white-space: nowrap; text-align: right">18.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.131 K</td>
    <td style="white-space: nowrap; text-align: right">7654.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">7654.98 μs</td>
    <td style="white-space: nowrap; text-align: right">7654.98 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">846.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">641.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">445.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">53.35 K</td>
    <td style="white-space: nowrap; text-align: right">15.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.131 K</td>
    <td style="white-space: nowrap; text-align: right">6476.29x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
    <td>0.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">648 B</td>
    <td>0.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1207456 B</td>
    <td>1840.63x</td>
  </tr>

</table>


<hr/>


__Input: 0001048576 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">763.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">733.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">537.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">209.56 K</td>
    <td style="white-space: nowrap; text-align: right">4.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.77 μs</td>
    <td style="white-space: nowrap; text-align: right">4.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0582 K</td>
    <td style="white-space: nowrap; text-align: right">17180.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">17180.11 μs</td>
    <td style="white-space: nowrap; text-align: right">17180.11 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">763.36 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">733.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">537.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">209.56 K</td>
    <td style="white-space: nowrap; text-align: right">3.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0582 K</td>
    <td style="white-space: nowrap; text-align: right">13114.59x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">752 B</td>
    <td>47.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">704 B</td>
    <td>44.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">3121584 B</td>
    <td>195099.0x</td>
  </tr>

</table>


<hr/>

