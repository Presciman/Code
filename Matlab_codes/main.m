function main()
    %read the file
    file_path = '/home1/07827/sunbaixi/data/512x512x512/baryon_density.dat';
    fileID = fopen(file_path);
    in_array = fread(fileID,'float');
    size_tens = [512 512 512];
    tensor = reshape(in_array,size_tens);
    disp('Reading tensor finished!');
    one_core_size = [2 2 2];
    size_core = {one_core_size, one_core_size, one_core_size};
    
end