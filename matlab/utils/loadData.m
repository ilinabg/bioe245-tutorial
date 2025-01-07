function [data] = loadData(participant_id, sent_id)
    % Load data from a pickle file
    % Inputs:
    %   participant_id: int, participant id
    % Outputs:
    %   data: struct, data from the pickle file
    
    if nargin < 1
        participant_id = 1;
    end

    %P1_data
    filename = sprintf('../data/P%d_data.pkl', participant_id);
    fid = py.open(filename,'rb');
    data = py.pickle.load(fid);
    data = struct(data);

    for field = {'sentence1', 'sentence2'}
        data.(field{1}) = struct(data.(field{1}));
        % convert numpy arrays to matlab arrays
        for subfield = {'sound', 'ecog', 'electrodes', 'sound_sr', 'ecog_sr'}
            if isfield(data.(field{1}), subfield{1})
                data.(field{1}).(subfield{1}) = double(data.(field{1}).(subfield{1}));
            end
        end

        % convert python strings to matlab strings
        data.(field{1}).text = string(data.(field{1}).text);
    end

    if sent_id==1
        data = data.sentence1;
    else
        data = data.sentence2;
    end
end