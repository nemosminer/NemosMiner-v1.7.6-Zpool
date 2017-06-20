@echo off
SETLOCAL EnableExtensions
SET ADDY=1QGADhdMRpp9Pk5u5zG1TrHKRrdK5R81TE
SET GPUequihash=0 1 2 3 4 5
SET GPUccminer=0,1,2,3,4,5
SET A=ccminerAlexis78.exe
SET B=ccminerTanguy.exe
SET C=zminer.exe
SET D=ccminersp-mod.exe
SET POOL=mine.zpool.ca
SET A01=equihash
SET A02=lyra2z
SET A03=myr-gr
REM SET A04=x15
SET A05=lyra2v2
SET A06=neoscrypt
SET A07=decred
SET A08=blakecoin
SET A09=c11
SET A10=groestl
SET A11=blake2s
REM SET A12=x14
SET A13=x17
SET A14=nist5
SET A15=skein
SET A16=sib
SET A17=x11evo
SET A18=lbry
SET A19=timetravel
SET A20=veltor
SET A21=bitcore
SET A22=hmq1725
SET PASS=c=BTC,equihash=0.28,lyra2z=0.89,myr-gr=41.3,lyra2v2=23.25,neoscrypt=0.7,decred=1.53,blakecoin=2.85,c11=9.9,groestl=21.1,blake2s=2.3,x17=6.57,nist5=27.94,skein=308.2,sib=7.33,x11evo=9.26,lbry=167,timetravel=15.7,veltor=20.1,bitcore=10.06,hmq1725=2.78,stats
:start
ECHO Starting NemosMiner-v1.7.6 if this helped you please donate #Nemo....
%C% --cuda_devices %GPUequihash% --server %A01%.%POOL% --port 2142 --fee 0 --eexit 2 --user %ADDY% --pass %PASS%
%B% -d %GPUccminer% -r 0 -a %A02% -o stratum+tcp://%A02%.%POOL%:4553 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A03% -o stratum+tcp://%A03%.%POOL%:5433 -u %ADDY% -p %PASS% 
REM %A% -d %GPUccminer% -r 0 -a %A04% -o stratum+tcp://%A04%.%POOL%:3733 -u %ADDY% -p %PASS%
%A% -d %GPUccminer% -r 0 -a %A05% -o stratum+tcp://%A05%.%POOL%:4533 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A06% -o stratum+tcp://%A06%.%POOL%:4233 -u %ADDY% -p %PASS% -i 15 
%B% -d %GPUccminer% -r 0 -a %A07% -o stratum+tcp://%A07%.%POOL%:5744 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A08% -o stratum+tcp://%A08%.%POOL%:5743 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A09% -o stratum+tcp://%A09%.%POOL%:3573 -u %ADDY% -p %PASS% -i 21 
%B% -d %GPUccminer% -r 0 -a %A10% -o stratum+tcp://%A10%.%POOL%:5333 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A11% -o stratum+tcp://%A11%.%POOL%:5766 -u %ADDY% -p %PASS% 
REM %A% -d %GPUccminer% -r 0 -a %A12% -o stratum+tcp://%A12%.%POOL%:3933 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A13% -o stratum+tcp://%A13%.%POOL%:3737 -u %ADDY% -p %PASS% -i 21
%A% -d %GPUccminer% -r 0 -a %A14% -o stratum+tcp://%A14%.%POOL%:3833 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A15% -o stratum+tcp://%A15%.%POOL%:4933 -u %ADDY% -p %PASS%
%A% -d %GPUccminer% -r 0 -a %A16% -o stratum+tcp://%A16%.%POOL%:5033 -u %ADDY% -p %PASS% -i 21 
%A% -d %GPUccminer% -r 0 -a %A17% -o stratum+tcp://%A17%.%POOL%:3553 -u %ADDY% -p %PASS% -i 21
%A% -d %GPUccminer% -r 0 -a %A18% -o stratum+tcp://%A18%.%POOL%:3334 -u %ADDY% -p %PASS% 
%B% -d %GPUccminer% -r 0 -a %A19% -o stratum+tcp://%A19%.%POOL%:3555 -u %ADDY% -p %PASS% 
%A% -d %GPUccminer% -r 0 -a %A20% -o stratum+tcp://%A20%.%POOL%:5034 -u %ADDY% -p %PASS% -i 24
%B% -d %GPUccminer% -r 0 -a %A21% -o stratum+tcp://%A21%.%POOL%:3556 -u %ADDY% -p %PASS% 
%B% -d %GPUccminer% -r 0 -a %A22% -o stratum+tcp://%A22%.%POOL%:3747 -u %ADDY% -p %PASS%
ECHO Starting NemosMiner-v1.7.6 if this helped you please donate #Nemo....
GOTO start