function [] = data_streaming_simulator(file_dir_in,file_dir_out,varargin)

% Simulate streaming epsi data by slowly copying the contents of one raw
% file directory into a new one. This way, you can test realtime scripts on
% old data sets without needing to have an epsi actively collecting data.
%
% Nicole Couto | February 2022
% -------------------------------------------------------------------------
% Change these parameters to adjust how quickly data "streams" in. 
%   block_length:           number of lines that get copied before pausing
%   seconds_between_blocks: amount of time in seconds to pause before copying
%                           the next block
block_length = 100;
seconds_between_blocks = 1;

if ~exist(file_dir_out,'dir')
    eval([ '!mkdir ' strrep(file_dir_out,' ','\ ')]);
end

% Check for suffix. If nothing is specified, use all files
if nargin<3
    suffixSearch = '*.*';
    suffixStr = '.';
else
    suffixStr = varargin{1};
    suffixSearch = ['*',suffixSearch];
end

% List the ascii files in the directory
myASCIIfiles = dir(fullfile(file_dir_in, suffixSearch));

% Loop through files and copy contents into new files in a file_dir_out
for idx=1:length(myASCIIfiles)

    myRAWfile = fullfile(file_dir_in,myASCIIfiles(idx).name);
    fid = fopen(myRAWfile);

    if fid>0
        % Initialize a line counter
        line_count = 0;
        
        % Create the new raw file
        newRAWfile = fullfile(file_dir_out,myASCIIfiles(idx).name);
        new_fid = fopen(newRAWfile,'wt');
        % loop until end of file is reached
        while ~feof(fid)
            % read the current line
            line = fgetl(fid);
            % Save data in new file
            fprintf(new_fid,'\n%s',line);
            line_count = line_count+1;

            if mod(line_count,block_length)==0  
                pause(seconds_between_blocks);
            end
        end
        
        % close the files
        fclose(fid);
        fclose(new_fid);
    end

end
