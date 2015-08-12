## The MIT License (MIT)

## Copyright (c) 2013-2015 Samuele Carcagno <sam.carcagno@gmail.com>

## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:

## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.

## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
## THE SOFTWARE.
    
#SndLib.jls is a module to generate sounds in julia
module SndLib

export addSounds, AMTone, AMToneIPD,
broadbandNoise,
centDistance, complexTone,
delayAdd!,
fir2Filt!, freqFromCentInterval, freqFromERBInterval,
ERBDistance,
gate!, getRMS,
IRN, ITDToIPD,
makePink!, 
pureTone, pureToneILD, pureToneIPD, pureToneIPDILD, pureToneITD, pureToneITDILD,
scaleLevel, silence, sound, steepNoise

VERSION < v"0.4-" && using Docile
using PyCall, WAV
#pyinitialize("python3")
@pyimport scipy.signal as scisig

include("snd_generate.jl")
include("snd_process.jl")
include("utils.jl")

end #module
