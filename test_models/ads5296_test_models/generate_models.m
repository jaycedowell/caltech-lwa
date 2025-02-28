
template_model = 'ads5296_dual_template'
load_system(template_model);
filename = get_param(template_model, 'FileName');
[filepath, name, ext] = fileparts(filename);
for clock=[0 1]
    for fmc_bver = [1 2]
        load_system(template_model);
        new_model = [filepath '/ads5296_fmca_r2_fmcb_r' num2str(fmc_bver) '_clk' num2str(clock)]
        %system(['cp' ' ' filename ' ' new_model]);
        %model_handle = load(new_model)
        set_param([template_model '/clk_source_const'], 'const', num2str(clock));
        set_param([template_model '/SNAP2'], 'clk_src', ['adc' num2str(clock) '_clk']);
        set_param([template_model '/fmca'], ...
            'fmc_clock', num2str(clock), ...
            'fmc_port', '0', ...
            'board_version', '2' ...
            );
        set_param([template_model '/fmcb'], ...
            'fmc_clock', num2str(clock), ...
            'fmc_port', '1', ...
            'board_version', num2str(fmc_bver) ...
            );
        save_system(template_model, new_model);
        close_system(new_model);
    end
end
