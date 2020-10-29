function errTucker()
	%Add tensorlab to path
	cd tensorlab
	addpath(pwd)
	cd ..
	result_dir = './results_tucker';
	
	%Read tensor
	origin_file_path = '/home1/07827/sunbaixi/data/512x512x512/baryon_density.dat';
	%recon_file_path = '/home1/07827/sunbaixi/code/build/mpi/drivers/bin/reconstructed1e-9.mpi';
	recon_file_path = '/home1/07827/sunbaixi/code/build/mpi/drivers/bin/compressed_baryon_density/sthosvd_mat_0.mpi';
	origin_fid = fopen(origin_file_path);
	recon_fid = fopen(origin_file_path);
	origin_array = fread(origin_fid,'float');
	recon_array = fread(recon_fid,'float');
	%disp(length(origin_array));
	%disp(length(recon_array));
	size_tens = [512 512 512];
	origin_tensor = reshape(origin_array,size_tens);
	disp(length(recon_array));
	%recon_tensor = reshape(recon_array,[2 2 2]);
	disp('Tensors done!');
	
	normo = norm(origin_tensor(:));
	normr = norm(econ_tensor(:));
	disp(normo);
	disp(normr);


	%Compute the error
	%k=origin_tensor-recon_tensor;
	%disp(recon_tensor);
	%{
	origin_tensor = origin_tensor(:);
	recon_tensor = recon_tensor(:);
	frobo = norm(origin_tensor);
	frobdiff = norm(recon_tensor-origin_tensor);
	disp(frobdiff);
	relerr = single(frobdiff/frobo);
	disp('Error Computing finished!');
	disp(relerr);
	%}

end
