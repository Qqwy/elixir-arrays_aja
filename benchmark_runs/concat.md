
# Benchmark

Comparing `Arrays.concat` with `Kernel.++`,
by concatenating two collections of the same size.


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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3182.83 K</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±676.45%</td>
    <td style="white-space: nowrap; text-align: right">0.163 μs</td>
    <td style="white-space: nowrap; text-align: right">1.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">271.16 K</td>
    <td style="white-space: nowrap; text-align: right">3.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±182.08%</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">33.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">77.44 K</td>
    <td style="white-space: nowrap; text-align: right">12.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.51%</td>
    <td style="white-space: nowrap; text-align: right">9.50 μs</td>
    <td style="white-space: nowrap; text-align: right">40.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">66.65 K</td>
    <td style="white-space: nowrap; text-align: right">15.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.86%</td>
    <td style="white-space: nowrap; text-align: right">10.86 μs</td>
    <td style="white-space: nowrap; text-align: right">46.37 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3182.83 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">271.16 K</td>
    <td style="white-space: nowrap; text-align: right">11.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">77.44 K</td>
    <td style="white-space: nowrap; text-align: right">41.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">66.65 K</td>
    <td style="white-space: nowrap; text-align: right">47.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.47 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">3.70 KB</td>
    <td>7.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">10.21 KB</td>
    <td>21.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">10.09 KB</td>
    <td>21.53x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1993.28 K</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±496.73%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">9.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">154.23 K</td>
    <td style="white-space: nowrap; text-align: right">6.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.97%</td>
    <td style="white-space: nowrap; text-align: right">3.84 μs</td>
    <td style="white-space: nowrap; text-align: right">31.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.25 K</td>
    <td style="white-space: nowrap; text-align: right">22.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.21%</td>
    <td style="white-space: nowrap; text-align: right">19.97 μs</td>
    <td style="white-space: nowrap; text-align: right">57.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">39.47 K</td>
    <td style="white-space: nowrap; text-align: right">25.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.26%</td>
    <td style="white-space: nowrap; text-align: right">22.39 μs</td>
    <td style="white-space: nowrap; text-align: right">60.26 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1993.28 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">154.23 K</td>
    <td style="white-space: nowrap; text-align: right">12.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.25 K</td>
    <td style="white-space: nowrap; text-align: right">44.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">39.47 K</td>
    <td style="white-space: nowrap; text-align: right">50.5x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">7.29 KB</td>
    <td>12.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">18.52 KB</td>
    <td>32.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">23.49 KB</td>
    <td>40.64x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">871.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±358.60%</td>
    <td style="white-space: nowrap; text-align: right">0.46 μs</td>
    <td style="white-space: nowrap; text-align: right">24.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">118.56 K</td>
    <td style="white-space: nowrap; text-align: right">8.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.13%</td>
    <td style="white-space: nowrap; text-align: right">7.17 μs</td>
    <td style="white-space: nowrap; text-align: right">27.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">21.39 K</td>
    <td style="white-space: nowrap; text-align: right">46.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.28%</td>
    <td style="white-space: nowrap; text-align: right">43.98 μs</td>
    <td style="white-space: nowrap; text-align: right">113.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">17.06 K</td>
    <td style="white-space: nowrap; text-align: right">58.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.12%</td>
    <td style="white-space: nowrap; text-align: right">50.23 μs</td>
    <td style="white-space: nowrap; text-align: right">127.57 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">871.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">118.56 K</td>
    <td style="white-space: nowrap; text-align: right">7.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">21.39 K</td>
    <td style="white-space: nowrap; text-align: right">40.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">17.06 K</td>
    <td style="white-space: nowrap; text-align: right">51.08x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.41 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">13.73 KB</td>
    <td>33.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">41.41 KB</td>
    <td>101.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">53.13 KB</td>
    <td>130.79x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">625.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±160.79%</td>
    <td style="white-space: nowrap; text-align: right">0.87 μs</td>
    <td style="white-space: nowrap; text-align: right">12.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">62.34 K</td>
    <td style="white-space: nowrap; text-align: right">16.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.85%</td>
    <td style="white-space: nowrap; text-align: right">15.04 μs</td>
    <td style="white-space: nowrap; text-align: right">45.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.47 K</td>
    <td style="white-space: nowrap; text-align: right">105.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.08%</td>
    <td style="white-space: nowrap; text-align: right">98.79 μs</td>
    <td style="white-space: nowrap; text-align: right">234.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.89 K</td>
    <td style="white-space: nowrap; text-align: right">112.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.00%</td>
    <td style="white-space: nowrap; text-align: right">105.87 μs</td>
    <td style="white-space: nowrap; text-align: right">235.15 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">625.00 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">62.34 K</td>
    <td style="white-space: nowrap; text-align: right">10.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.47 K</td>
    <td style="white-space: nowrap; text-align: right">66.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.89 K</td>
    <td style="white-space: nowrap; text-align: right">70.33x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">4 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">27.76 KB</td>
    <td>6.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">106.27 KB</td>
    <td>26.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">94.52 KB</td>
    <td>23.63x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">253.83 K</td>
    <td style="white-space: nowrap; text-align: right">3.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.54%</td>
    <td style="white-space: nowrap; text-align: right">1.72 μs</td>
    <td style="white-space: nowrap; text-align: right">25.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">30.55 K</td>
    <td style="white-space: nowrap; text-align: right">32.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.51%</td>
    <td style="white-space: nowrap; text-align: right">29.57 μs</td>
    <td style="white-space: nowrap; text-align: right">81.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.79 K</td>
    <td style="white-space: nowrap; text-align: right">208.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.58%</td>
    <td style="white-space: nowrap; text-align: right">196.11 μs</td>
    <td style="white-space: nowrap; text-align: right">458.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.69 K</td>
    <td style="white-space: nowrap; text-align: right">270.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.12%</td>
    <td style="white-space: nowrap; text-align: right">258.22 μs</td>
    <td style="white-space: nowrap; text-align: right">564.52 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">253.83 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">30.55 K</td>
    <td style="white-space: nowrap; text-align: right">8.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.79 K</td>
    <td style="white-space: nowrap; text-align: right">53.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.69 K</td>
    <td style="white-space: nowrap; text-align: right">68.7x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">3.84 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">54.56 KB</td>
    <td>14.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">214.63 KB</td>
    <td>55.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">206.27 KB</td>
    <td>53.66x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">129.55 K</td>
    <td style="white-space: nowrap; text-align: right">7.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.59%</td>
    <td style="white-space: nowrap; text-align: right">3.23 μs</td>
    <td style="white-space: nowrap; text-align: right">39.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">13.92 K</td>
    <td style="white-space: nowrap; text-align: right">71.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.66%</td>
    <td style="white-space: nowrap; text-align: right">66.98 μs</td>
    <td style="white-space: nowrap; text-align: right">162.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.11 K</td>
    <td style="white-space: nowrap; text-align: right">475.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.43%</td>
    <td style="white-space: nowrap; text-align: right">445.30 μs</td>
    <td style="white-space: nowrap; text-align: right">865.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95 K</td>
    <td style="white-space: nowrap; text-align: right">513.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.64%</td>
    <td style="white-space: nowrap; text-align: right">496.62 μs</td>
    <td style="white-space: nowrap; text-align: right">859.32 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">129.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">13.92 K</td>
    <td style="white-space: nowrap; text-align: right">9.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.11 K</td>
    <td style="white-space: nowrap; text-align: right">61.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95 K</td>
    <td style="white-space: nowrap; text-align: right">66.53x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.34 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">102.66 KB</td>
    <td>298.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">520.64 KB</td>
    <td>1514.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">440.95 KB</td>
    <td>1282.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">55.36 K</td>
    <td style="white-space: nowrap; text-align: right">18.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.76%</td>
    <td style="white-space: nowrap; text-align: right">7.22 μs</td>
    <td style="white-space: nowrap; text-align: right">82.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">7.61 K</td>
    <td style="white-space: nowrap; text-align: right">131.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.19%</td>
    <td style="white-space: nowrap; text-align: right">120.00 μs</td>
    <td style="white-space: nowrap; text-align: right">282.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.08 K</td>
    <td style="white-space: nowrap; text-align: right">929.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.94%</td>
    <td style="white-space: nowrap; text-align: right">891.67 μs</td>
    <td style="white-space: nowrap; text-align: right">1366.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.91 K</td>
    <td style="white-space: nowrap; text-align: right">1097.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.05%</td>
    <td style="white-space: nowrap; text-align: right">1069.40 μs</td>
    <td style="white-space: nowrap; text-align: right">1659.96 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">55.36 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">7.61 K</td>
    <td style="white-space: nowrap; text-align: right">7.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.08 K</td>
    <td style="white-space: nowrap; text-align: right">51.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.91 K</td>
    <td style="white-space: nowrap; text-align: right">60.74x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">21.25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">197.34 KB</td>
    <td>9.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1040.95 KB</td>
    <td>48.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">943.59 KB</td>
    <td>44.4x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">30.37 K</td>
    <td style="white-space: nowrap; text-align: right">0.0329 ms</td>
    <td style="white-space: nowrap; text-align: right">±76.82%</td>
    <td style="white-space: nowrap; text-align: right">0.0130 ms</td>
    <td style="white-space: nowrap; text-align: right">0.124 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.57 K</td>
    <td style="white-space: nowrap; text-align: right">0.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.48%</td>
    <td style="white-space: nowrap; text-align: right">0.27 ms</td>
    <td style="white-space: nowrap; text-align: right">0.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.34%</td>
    <td style="white-space: nowrap; text-align: right">1.79 ms</td>
    <td style="white-space: nowrap; text-align: right">2.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.53%</td>
    <td style="white-space: nowrap; text-align: right">2.31 ms</td>
    <td style="white-space: nowrap; text-align: right">3.40 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">30.37 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.57 K</td>
    <td style="white-space: nowrap; text-align: right">8.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.55 K</td>
    <td style="white-space: nowrap; text-align: right">55.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.43 K</td>
    <td style="white-space: nowrap; text-align: right">71.13x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.00993 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.38 MB</td>
    <td>38.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.03 MB</td>
    <td>204.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.00 MB</td>
    <td>200.92x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">15.85 K</td>
    <td style="white-space: nowrap; text-align: right">0.0631 ms</td>
    <td style="white-space: nowrap; text-align: right">±82.87%</td>
    <td style="white-space: nowrap; text-align: right">0.0304 ms</td>
    <td style="white-space: nowrap; text-align: right">0.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">0.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.93%</td>
    <td style="white-space: nowrap; text-align: right">0.55 ms</td>
    <td style="white-space: nowrap; text-align: right">0.84 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.25 K</td>
    <td style="white-space: nowrap; text-align: right">4.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.15%</td>
    <td style="white-space: nowrap; text-align: right">4.06 ms</td>
    <td style="white-space: nowrap; text-align: right">4.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">4.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.83%</td>
    <td style="white-space: nowrap; text-align: right">4.99 ms</td>
    <td style="white-space: nowrap; text-align: right">5.43 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">15.85 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">8.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.25 K</td>
    <td style="white-space: nowrap; text-align: right">64.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">77.91x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.104 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.75 MB</td>
    <td>7.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">4.66 MB</td>
    <td>44.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.28 MB</td>
    <td>41.25x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">7355.82</td>
    <td style="white-space: nowrap; text-align: right">0.136 ms</td>
    <td style="white-space: nowrap; text-align: right">±95.42%</td>
    <td style="white-space: nowrap; text-align: right">0.0774 ms</td>
    <td style="white-space: nowrap; text-align: right">0.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">816.93</td>
    <td style="white-space: nowrap; text-align: right">1.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.40%</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">1.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">117.65</td>
    <td style="white-space: nowrap; text-align: right">8.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.54%</td>
    <td style="white-space: nowrap; text-align: right">8.58 ms</td>
    <td style="white-space: nowrap; text-align: right">9.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">96.02</td>
    <td style="white-space: nowrap; text-align: right">10.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.51%</td>
    <td style="white-space: nowrap; text-align: right">10.12 ms</td>
    <td style="white-space: nowrap; text-align: right">12.10 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">7355.82</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">816.93</td>
    <td style="white-space: nowrap; text-align: right">9.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">117.65</td>
    <td style="white-space: nowrap; text-align: right">62.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">96.02</td>
    <td style="white-space: nowrap; text-align: right">76.61x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0727 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.48 MB</td>
    <td>20.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">9.64 MB</td>
    <td>132.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">9.06 MB</td>
    <td>124.62x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4317.63</td>
    <td style="white-space: nowrap; text-align: right">0.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±88.11%</td>
    <td style="white-space: nowrap; text-align: right">0.141 ms</td>
    <td style="white-space: nowrap; text-align: right">0.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">387.73</td>
    <td style="white-space: nowrap; text-align: right">2.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±27.82%</td>
    <td style="white-space: nowrap; text-align: right">2.22 ms</td>
    <td style="white-space: nowrap; text-align: right">4.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">56.41</td>
    <td style="white-space: nowrap; text-align: right">17.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.02%</td>
    <td style="white-space: nowrap; text-align: right">17.68 ms</td>
    <td style="white-space: nowrap; text-align: right">18.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">37.96</td>
    <td style="white-space: nowrap; text-align: right">26.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.50%</td>
    <td style="white-space: nowrap; text-align: right">25.67 ms</td>
    <td style="white-space: nowrap; text-align: right">29.78 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">4317.63</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">387.73</td>
    <td style="white-space: nowrap; text-align: right">11.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">56.41</td>
    <td style="white-space: nowrap; text-align: right">76.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">37.96</td>
    <td style="white-space: nowrap; text-align: right">113.74x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.50 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">2.95 MB</td>
    <td>5.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">19.30 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">19.13 MB</td>
    <td>38.27x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">971.97</td>
    <td style="white-space: nowrap; text-align: right">1.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±31.60%</td>
    <td style="white-space: nowrap; text-align: right">1.19 ms</td>
    <td style="white-space: nowrap; text-align: right">1.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">196.88</td>
    <td style="white-space: nowrap; text-align: right">5.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.21%</td>
    <td style="white-space: nowrap; text-align: right">5.06 ms</td>
    <td style="white-space: nowrap; text-align: right">5.33 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">26.96</td>
    <td style="white-space: nowrap; text-align: right">37.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.57%</td>
    <td style="white-space: nowrap; text-align: right">37.11 ms</td>
    <td style="white-space: nowrap; text-align: right">37.78 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.06</td>
    <td style="white-space: nowrap; text-align: right">82.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.00%</td>
    <td style="white-space: nowrap; text-align: right">82.66 ms</td>
    <td style="white-space: nowrap; text-align: right">83.85 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">971.97</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">196.88</td>
    <td style="white-space: nowrap; text-align: right">4.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">26.96</td>
    <td style="white-space: nowrap; text-align: right">36.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.06</td>
    <td style="white-space: nowrap; text-align: right">80.6x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.43 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>15.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">41.45 MB</td>
    <td>97.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">40.79 MB</td>
    <td>95.47x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1750.03</td>
    <td style="white-space: nowrap; text-align: right">0.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.72%</td>
    <td style="white-space: nowrap; text-align: right">0.58 ms</td>
    <td style="white-space: nowrap; text-align: right">0.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">81.02</td>
    <td style="white-space: nowrap; text-align: right">12.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.92%</td>
    <td style="white-space: nowrap; text-align: right">12.48 ms</td>
    <td style="white-space: nowrap; text-align: right">12.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.71</td>
    <td style="white-space: nowrap; text-align: right">78.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.33%</td>
    <td style="white-space: nowrap; text-align: right">78.68 ms</td>
    <td style="white-space: nowrap; text-align: right">79.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.28</td>
    <td style="white-space: nowrap; text-align: right">159.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">159.32 ms</td>
    <td style="white-space: nowrap; text-align: right">159.32 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1750.03</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">81.02</td>
    <td style="white-space: nowrap; text-align: right">21.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.71</td>
    <td style="white-space: nowrap; text-align: right">137.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.28</td>
    <td style="white-space: nowrap; text-align: right">278.82x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">12.27 MB</td>
    <td>6.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">89.23 MB</td>
    <td>44.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">86.03 MB</td>
    <td>43.02x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">173.55</td>
    <td style="white-space: nowrap; text-align: right">5.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">5.76 ms</td>
    <td style="white-space: nowrap; text-align: right">5.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">34.49</td>
    <td style="white-space: nowrap; text-align: right">28.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">28.99 ms</td>
    <td style="white-space: nowrap; text-align: right">28.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.30</td>
    <td style="white-space: nowrap; text-align: right">158.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">158.70 ms</td>
    <td style="white-space: nowrap; text-align: right">158.70 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.44</td>
    <td style="white-space: nowrap; text-align: right">409.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">409.73 ms</td>
    <td style="white-space: nowrap; text-align: right">409.73 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">173.55</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">34.49</td>
    <td style="white-space: nowrap; text-align: right">5.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.30</td>
    <td style="white-space: nowrap; text-align: right">27.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.44</td>
    <td style="white-space: nowrap; text-align: right">71.11x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.15 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">25.25 MB</td>
    <td>21.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">178.46 MB</td>
    <td>154.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">179.20 MB</td>
    <td>155.61x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">86.54</td>
    <td style="white-space: nowrap; text-align: right">11.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">11.56 ms</td>
    <td style="white-space: nowrap; text-align: right">11.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.74</td>
    <td style="white-space: nowrap; text-align: right">50.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">50.66 ms</td>
    <td style="white-space: nowrap; text-align: right">50.66 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">312.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">312.95 ms</td>
    <td style="white-space: nowrap; text-align: right">312.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.09</td>
    <td style="white-space: nowrap; text-align: right">915.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">915.43 ms</td>
    <td style="white-space: nowrap; text-align: right">915.43 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">86.54</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.74</td>
    <td style="white-space: nowrap; text-align: right">4.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">27.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.09</td>
    <td style="white-space: nowrap; text-align: right">79.22x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2.98 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">50.26 MB</td>
    <td>16.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">361.37 MB</td>
    <td>121.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">374.79 MB</td>
    <td>125.9x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">213.98</td>
    <td style="white-space: nowrap; text-align: right">4.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.67 ms</td>
    <td style="white-space: nowrap; text-align: right">4.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.45</td>
    <td style="white-space: nowrap; text-align: right">105.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">105.80 ms</td>
    <td style="white-space: nowrap; text-align: right">105.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.19</td>
    <td style="white-space: nowrap; text-align: right">842.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">842.71 ms</td>
    <td style="white-space: nowrap; text-align: right">842.71 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.42</td>
    <td style="white-space: nowrap; text-align: right">2386.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2386.40 ms</td>
    <td style="white-space: nowrap; text-align: right">2386.40 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">213.98</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.45</td>
    <td style="white-space: nowrap; text-align: right">22.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.19</td>
    <td style="white-space: nowrap; text-align: right">180.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.42</td>
    <td style="white-space: nowrap; text-align: right">510.65x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.79 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">104.69 MB</td>
    <td>132.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">809.86 MB</td>
    <td>1021.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">789.24 MB</td>
    <td>995.89x</td>
  </tr>

</table>


<hr/>

