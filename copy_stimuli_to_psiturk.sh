current_exp=exp14
current_audio=audio_for_exp14_06_19_20
current_audio=audio_for_exp14_09_17_20_saima

function make_dir(){
  if [ -d $@ ];
  then rm -Rf $@;
fi
mkdir $@
}


make_dir $current_exp/audio

cp $current_audio/responses_to_analyze/* $current_exp/audio/

psiturk_stimuli_dir=psiturk-prosody_study_exp0/static/stimuli
rm -r ../$psiturk_stimuli_dir/*
cp tAll_exps.csv  ../$psiturk_stimuli_dir

mkdir ../$psiturk_stimuli_dir/$current_exp

cp -r $current_exp/ ../$psiturk_stimuli_dir/$current_exp
