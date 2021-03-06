function GSRA(Global)
% <algorithm> <H-N>
% Gradient Stochastic Ranking Algorithm for Many-Objective Optimization Based on
% Multiple Indicators

%--------------------------------------------------------------------------
% The copyright of the PlatEMO belongs to the BIMK Group. You are free to
% use the PlatEMO for research purposes. All publications which use this
% platform or any code in the platform should acknowledge the use of
% "PlatEMO" and reference "Ye Tian, Ran Cheng, Xingyi Zhang, and Yaochu
% Jin, PlatEMO: A MATLAB Platform for Evolutionary Multi-Objective
% Optimization, 2016".
%--------------------------------------------------------------------------

% Copyright (c) 2016-2017 BIMK Group

    %% Generate random population
    Population = Global.Initialization();
    
    %% Optimization
    while Global.NotTermination(Population)
        MatingPool = randi(Global.N,1,2*Global.N);
        Offspring  = Global.Variation(Population(MatingPool),Global.N);
        Population = EnvironmentalSelection([Population,Offspring],Global,rand*0.2+0.4);
    end
end