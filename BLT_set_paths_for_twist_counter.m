% Add Epsi library
Epsi_library = '/Volumes/FCTD Softwares used in BLT 2022/FCTD_MATLAB/';
addpath(genpath(Epsi_library));

% Remove archived scripts
rmpath(genpath(fullfile(Epsi_library,'archived_scripts')));

% Remove realtime_fctd scripts
rmpath(genpath(fullfile(Epsi_library,'realtime','realtime_epsi')));
