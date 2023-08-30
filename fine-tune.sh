#lmqg-train-search -c "tmp_ckpt" -d "lmqg/qag_squad" -m "t5-base" -b 64 --epoch-partial 5 -e 15 --language "en" --n-max-config 1 \
#  -g 2 4 --lr 1e-04 5e-04 1e-03 --label-smoothing 0 0.15


lmqg-train-search -d "lmqg/qag_squad" -m "t5-base"  -b 8 -g 8 16 -c "lmqg_output/t5-base-squad-qag" -i 'paragraph' -o 'questions_answers' -p 'qag' --epoch-partial 10 -e 15 --max-length-output-eval 256 --max-length-output 256
#lmqg-eval -m "lmqg_output/t5-base-squad-qag/best_model" -e "lmqg_output/t5-base-squad-qag/best_model/eval" --language "en" -d "lmqg/qag_squad" -i "paragraph" -o 'questions_answers' --max-length-output 256 --max-length 256
#lmqg-push-to-hf -m "lmqg_output/t5-base-squad-qag/best_model" -a "t5-base-squad-qag" -o "lmqg"

