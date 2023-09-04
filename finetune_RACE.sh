#lmqg-train-search -d "lmqg/qg_squadshifts/all" -m "t5-base"  -b 8 -g 8 16 -c "lmqg_squadshifts_output/t5-base-squadshifts-qag" -i 'paragraph' -o 'questions_answers' -p 'qag' --epoch-partial 10 -e 15 --max-length-output-eval 256 --max-length-output 256

#lmqg-train-search -d "lmqg/qg_squadshifts/all" -m "t5-base" -b 8 -g 8 16 -c "lmqg_squadshifts_output/t5-base-squadshifts-qag" -i 'paragraph' -o 'questions_answers' -p 'qag' --epoch-partial 10 -e 15 --max-length-output-eval 256 --max-length-output 256


###RACE
#lmqg-train-search -d "dataset_race/train.json" -m "t5-base" -b 8 -g 8 16 -c "t5-base-RACE-qag_output" -i 'paragraph' -o 'questions_answers' -p 'qag' --epoch-partial 10 -e 15 --max-length-output-eval 256 --max-length-output 256

lmqg-train-search -c "tmp_ckpt" -d "dataset_race/train.json" -m "t5-base" -b 64 --epoch-partial 5 -e 15 --language "en" --n-max-config 1 \
  -g 2 4 --lr 1e-04 5e-04 1e-03 --label-smoothing 0 0.15
