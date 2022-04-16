cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(Opus VERSION 1.3.1)

add_library(opus
        ${LIBRARY_TYPE}
        opus/opus-1.3.1/include/opus.h
        opus/opus-1.3.1/include/opus_custom.h
        opus/opus-1.3.1/include/opus_defines.h
        opus/opus-1.3.1/include/opus_multistream.h
        opus/opus-1.3.1/include/opus_types.h
        opus/opus-1.3.1/src/opus_multistream_decoder.c
        opus/opus-1.3.1/src/opus_multistream.c
        opus/opus-1.3.1/src/opus_encoder.c
        opus/opus-1.3.1/celt/celt_encoder.c
        opus/opus-1.3.1/celt/bands.c
        opus/opus-1.3.1/celt/entcode.c
        opus/opus-1.3.1/celt/entdec.c
        opus/opus-1.3.1/celt/entenc.c
        opus/opus-1.3.1/celt/mathops.c
        opus/opus-1.3.1/celt/vq.c
        opus/opus-1.3.1/celt/cwrs.c
        opus/opus-1.3.1/celt/celt.c
        opus/opus-1.3.1/celt/mdct.c
        opus/opus-1.3.1/celt/kiss_fft.c
        opus/opus-1.3.1/celt/bands.c
        opus/opus-1.3.1/celt/pitch.c
        opus/opus-1.3.1/celt/celt_lpc.c
        opus/opus-1.3.1/celt/quant_bands.c
        opus/opus-1.3.1/celt/laplace.c
        opus/opus-1.3.1/celt/modes.c
        opus/opus-1.3.1/celt/rate.c
        opus/opus-1.3.1/silk/lin2log.c
        opus/opus-1.3.1/silk/enc_API.c
        opus/opus-1.3.1/silk/resampler.c
        opus/opus-1.3.1/silk/resampler_private_IIR_FIR.c
        opus/opus-1.3.1/silk/resampler_private_up2_HQ.c
        opus/opus-1.3.1/silk/resampler_private_down_FIR.c
        opus/opus-1.3.1/silk/resampler_private_AR2.c
        opus/opus-1.3.1/silk/resampler_rom.c
        opus/opus-1.3.1/silk/float/encode_frame_FLP.c
        opus/opus-1.3.1/silk/gain_quant.c
        opus/opus-1.3.1/silk/log2lin.c
        opus/opus-1.3.1/silk/encode_pulses.c
        opus/opus-1.3.1/silk/code_signs.c
        opus/opus-1.3.1/silk/tables_pulses_per_block.c
        opus/opus-1.3.1/silk/tables_other.c
        opus/opus-1.3.1/silk/shell_coder.c
        opus/opus-1.3.1/silk/encode_indices.c
        opus/opus-1.3.1/silk/tables_LTP.c
        opus/opus-1.3.1/silk/tables_pitch_lag.c
        opus/opus-1.3.1/silk/NLSF_unpack.c
        opus/opus-1.3.1/silk/tables_gain.c
        opus/opus-1.3.1/silk/float/wrappers_FLP.c
        opus/opus-1.3.1/silk/quant_LTP_gains.c
        opus/opus-1.3.1/silk/VQ_WMat_EC.c
        opus/opus-1.3.1/silk/NSQ.c
        opus/opus-1.3.1/silk/LPC_analysis_filter.c
        opus/opus-1.3.1/silk/NSQ_del_dec.c
        opus/opus-1.3.1/silk/process_NLSFs.c
        opus/opus-1.3.1/silk/NLSF2A.c
        opus/opus-1.3.1/silk/bwexpander_32.c
        opus/opus-1.3.1/silk/LPC_inv_pred_gain.c
        opus/opus-1.3.1/silk/table_LSF_cos.c
        opus/opus-1.3.1/silk/NLSF_encode.c
        opus/opus-1.3.1/silk/NLSF_decode.c
        opus/opus-1.3.1/silk/NLSF_stabilize.c
        opus/opus-1.3.1/silk/sort.c
        opus/opus-1.3.1/silk/NLSF_VQ_weights_laroia.c
        opus/opus-1.3.1/silk/NLSF_del_dec_quant.c
        opus/opus-1.3.1/silk/NLSF_VQ.c
        opus/opus-1.3.1/silk/interpolate.c
        opus/opus-1.3.1/silk/float/wrappers_FLP.c
        opus/opus-1.3.1/silk/A2NLSF.c
        opus/opus-1.3.1/silk/float/process_gains_FLP.c
        opus/opus-1.3.1/silk/float/find_pred_coefs_FLP.c
        opus/opus-1.3.1/silk/float/residual_energy_FLP.c
        opus/opus-1.3.1/silk/float/energy_FLP.c
        opus/opus-1.3.1/silk/float/LPC_analysis_filter_FLP.c
        opus/opus-1.3.1/silk/float/find_LPC_FLP.c
        opus/opus-1.3.1/silk/float/burg_modified_FLP.c
        opus/opus-1.3.1/silk/float/inner_product_FLP.c
        opus/opus-1.3.1/silk/float/scale_copy_vector_FLP.c
        opus/opus-1.3.1/silk/float/LTP_analysis_filter_FLP.c
        opus/opus-1.3.1/silk/float/LTP_scale_ctrl_FLP.c
        opus/opus-1.3.1/silk/float/find_LTP_FLP.c
        opus/opus-1.3.1/silk/float/scale_vector_FLP.c
        opus/opus-1.3.1/silk/float/regularize_correlations_FLP.c
        opus/opus-1.3.1/silk/float/corrMatrix_FLP.c
        opus/opus-1.3.1/silk/float/noise_shape_analysis_FLP.c
        opus/opus-1.3.1/silk/float/bwexpander_FLP.c
        opus/opus-1.3.1/silk/float/LPC_inv_pred_gain_FLP.c
        opus/opus-1.3.1/silk/float/autocorrelation_FLP.c
        opus/opus-1.3.1/silk/float/warped_autocorrelation_FLP.c
        opus/opus-1.3.1/silk/float/apply_sine_window_FLP.c
        opus/opus-1.3.1/silk/float/find_pitch_lags_FLP.c
        opus/opus-1.3.1/silk/float/pitch_analysis_core_FLP.c
        opus/opus-1.3.1/silk/pitch_est_tables.c
        opus/opus-1.3.1/silk/float/sort_FLP.c
        opus/opus-1.3.1/silk/resampler_down2.c
        opus/opus-1.3.1/silk/resampler_down2_3.c
        opus/opus-1.3.1/silk/float/k2a_FLP.c
        opus/opus-1.3.1/silk/float/schur_FLP.c
        opus/opus-1.3.1/silk/LP_variable_cutoff.c
        opus/opus-1.3.1/silk/biquad_alt.c
        opus/opus-1.3.1/silk/VAD.c
        opus/opus-1.3.1/silk/sigm_Q15.c
        opus/opus-1.3.1/silk/ana_filt_bank_1.c
        opus/opus-1.3.1/silk/control_SNR.c
        opus/opus-1.3.1/silk/stereo_encode_pred.c
        opus/opus-1.3.1/silk/stereo_LR_to_MS.c
        opus/opus-1.3.1/silk/stereo_quant_pred.c
        opus/opus-1.3.1/silk/stereo_find_predictor.c
        opus/opus-1.3.1/silk/inner_prod_aligned.c
        opus/opus-1.3.1/silk/sum_sqr_shift.c
        opus/opus-1.3.1/silk/HP_variable_cutoff.c
        opus/opus-1.3.1/silk/control_codec.c
        opus/opus-1.3.1/silk/tables_NLSF_CB_NB_MB.c
        opus/opus-1.3.1/silk/tables_NLSF_CB_WB.c
        opus/opus-1.3.1/silk/control_audio_bandwidth.c
        opus/opus-1.3.1/silk/init_encoder.c
        opus/opus-1.3.1/silk/check_control_input.c
        opus/opus-1.3.1/src/analysis.c
        opus/opus-1.3.1/src/repacketizer.c
        opus/opus-1.3.1/src/opus.c
        opus/opus-1.3.1/src/opus_decoder.c
        opus/opus-1.3.1/celt/celt_decoder.c
        opus/opus-1.3.1/silk/dec_API.c
        opus/opus-1.3.1/silk/stereo_MS_to_LR.c
        opus/opus-1.3.1/silk/decode_frame.c
        opus/opus-1.3.1/silk/PLC.c
        opus/opus-1.3.1/silk/bwexpander.c
        opus/opus-1.3.1/silk/CNG.c
        opus/opus-1.3.1/silk/decode_core.c
        opus/opus-1.3.1/silk/decode_parameters.c
        opus/opus-1.3.1/silk/decode_pitch.c
        opus/opus-1.3.1/silk/decode_pulses.c
        opus/opus-1.3.1/silk/decode_indices.c
        opus/opus-1.3.1/silk/stereo_decode_pred.c
        opus/opus-1.3.1/silk/decoder_set_fs.c
        opus/opus-1.3.1/silk/init_decoder.c
        opus/opus-1.3.1/src/mlp.c
        opus/opus-1.3.1/src/mlp_data.c
        opus/opus-1.3.1/silk/LPC_fit.c)

include_directories(opus/opus-1.3.1/src opus/opus-1.3.1/include opus/opus-1.3.1/celt opus/opus-1.3.1/silk opus/opus-1.3.1/silk/float)

target_include_directories(opus PUBLIC opus/opus-1.3.1/include)

add_definitions(-DOPUS_BUILD -DSTDC_HEADERS -DVAR_ARRAYS)
set_target_properties(opus PROPERTIES 
        PUBLIC_HEADER "opus/opus-1.3.1/include/opus.h;opus/opus-1.3.1/include/opus_custom.h;opus/opus-1.3.1/include/opus_defines.h;opus/opus-1.3.1/include/opus_multistream.h;opus/opus-1.3.1/include/opus_types.h"
        FRAMEWORK TRUE
        FRAMEWORK_VERSION C
        MACOSX_FRAMEWORK_IDENTIFIER org.opus.codec
        # "current version" in semantic format in Mach-O binary file
        VERSION 1.3.1
        # "compatibility version" in semantic format in Mach-O binary file
        SOVERSION 1.3.1
        XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
)
