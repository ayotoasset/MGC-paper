function run_1d_sims(rep1,rep2)
% run 1-dimensional simulations

%%% File path searching
fpath = mfilename('fullpath');
fpath=strrep(fpath,'\','/');
findex=strfind(fpath,'/');
rootDir=fpath(1:findex(end-2));
strcat(rootDir,'Code/');
addpath(genpath(strcat(rootDir,'Code/')));

if nargin < 1
    rep1=2000; % number of MC replicates for MGC scale estimation
end
if nargin < 2
    rep2=10000; % number of MC replicates for power computation
end

%Ind
n=100;lim=20;dim=1;
for i=1:20
    CorrIndTest(i,n,dim,lim,rep1,rep2); % the output are saved to ../../data/results
end