function [data] = loadData(participant_id, run_id)
    if nargin < 1
        participant_id = 1;
    end
    if nargin < 2
        run_id = 1;
    end

    filename = sprintf('../data/participant_%d_run_%d.pickle', participant_id, run_id);
    fid = py.open(filename,'rb');
    data = py.pickle.load(fid);
end