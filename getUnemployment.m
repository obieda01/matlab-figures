%% getUnemployment
% 
% Return quarterly unemployment rate in the United States, 1930–2022
%
%% Syntax
%
%   u = getUnemployment()
%
%% Output arguments
%
% * u – 372-by-1 column vector
%
%% Description
%
% This function returns the quarterly unemployment rate in the United States, 1930–2022. 
%

function u = getUnemployment()

%% Input quarterly unemployment rate for three subperiods

% 1930–1950
uDepression = getUnemploymentDepression();

% 1951–2019
uPostwar = getUnemploymentPostwar();

% 2020–2022
uPandemic = getUnemploymentPandemic();

%% Splice three series into a long series

u = [uDepression; uPostwar; uPandemic];