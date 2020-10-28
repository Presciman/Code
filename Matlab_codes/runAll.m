function runAll()
    core_sizes = {[24 20 13], [134 116 73], [342 293 146], [472 453 179], [510 504 209], ...
        [512 512 235], [512 512 254], [512 512 256]};
    %file_path = '/home1/07827/sunbaixi/data/512x512x512/baryon_density.dat';
    file_path = '/home1/07827/sunbaixi/data/512x512x512/velocity_x.dat';
    %file_path = '/Users/ericsun/Documents/HPClab/512x512x512/baryon_density.dat';
    parfor i=1:length(core_sizes)
        size_core = core_sizes{i};
        %disp(size_core);
        main(file_path,size_core);
    end
end