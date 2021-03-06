#===============================================================================
#
#                                                        author: Adam Zsarnóczay
#                                                        created:  2014. 10. 23.
#
# Copyright (c) 2013 Adam Zsarnóczay
# 
# Redistribution and use of this file in source and binary forms, with or 
# without modification, are permitted provided that the following conditions 
# are met:
#
# 1. Redistributions of source code must retain the above copyright notice, 
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, 
# this list of conditions and the following disclaimer in the documentation 
# and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors 
# may be used to endorse or promote products derived from this software without 
# specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
# POSSIBILITY OF SUCH DAMAGE.
# 
# You should have received a copy of the BSD 3-Clause License along with 
# this file. If not, see <http://www.opensource.org/licenses/>.
#_______________________________________________________________________________

# T_1 = 0.732
# design PGA: 0.4 g
# design spectrum: EC8 Type I.  Soil D

set stories 4
set bays 2
set modelType "BRBF"
set colDir 90
set column_base 0

#_______________________________________________________________________________
#                                                                   geometry [m]
set H1  4.0
set H2  8.0
set H3 12.0
set H4 16.0

set X1  6.0

#_______________________________________________________________________________
#                                                                    masses [kg]
set w_self 6.5
set w_selfB 17.0
set w_trib [expr (5.0 + 3.0 * 0.3)*1000.0/9.80665]

# leaning column
set M100 [expr 234.0 * ($w_self + $w_trib)]
set M200 [expr 234.0 * ($w_self + $w_trib)]
set M300 [expr 234.0 * ($w_self + $w_trib)]
set M400 [expr 234.0 * ($w_self + $w_trib)]

# perimeter columns
set M110 [expr 18.0 * ($w_selfB + $w_trib)]
set M210 [expr 18.0 * ($w_selfB + $w_trib)]
set M310 [expr 18.0 * ($w_selfB + $w_trib)]
set M410 [expr 18.0 * ($w_selfB + $w_trib)]

# inner columns
set M120 [expr 18.0 * ($w_selfB + $w_trib)]
set M220 [expr 18.0 * ($w_selfB + $w_trib)]
set M320 [expr 18.0 * ($w_selfB + $w_trib)]
set M420 [expr 18.0 * ($w_selfB + $w_trib)]

# beams /not considered
set M130 0.0
set M230 0.0
set M330 0.0
set M430 0.0

#_______________________________________________________________________________
#                                                           modification factors
set SMF4  1.21
set SMF3  1.24
set SMF2  1.22
set SMF1  1.23
set DMF4  1.36
set DMF3  1.42
set DMF2  1.37
set DMF1  1.39

#_______________________________________________________________________________
#                                                             BRB cross sections
set E341A 0.001240
set E331A 0.002100
set E321A 0.002640
set E311A 0.002930

#_______________________________________________________________________________
#                                                              perimeter columns
# cross section
set E141S HEB160
set E131S HEB160
set E121S HEM200
set E111S HEM200

# moment-resistance modification factor to consider N-M interaction
set E141M 1.000
set E131M 0.994
set E121M 0.939
set E111M 0.918

#_______________________________________________________________________________
#                                                                  inner columns
# cross section
set E142S HEB160
set E132S HEB160
set E122S HEM200
set E112S HEM200

# moment-resistance modification factor to consider N-M interaction
set E142M 1.000
set E132M 1.000
set E122M 1.000
set E112M 1.000