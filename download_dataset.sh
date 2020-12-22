#!/bin/bash

echo "[1/6] Downloading CIFAR10 dataset..."

fileid="1C1npRinwi5DLoWSD_AWEPNp1khwqCOV4"
filename="cifar10_test_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1SfvD7V1d04JXe9k2JUmygXUi4d83wujL"
filename="cifar10_test_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1W-7dyYS5szUCZT4M_8qKeaRKlv_rjqBI"
filename="cifar10_train_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1rI5KxWMoMF4r8a1w1jTzJdIzxRjmlKXz"
filename="cifar10_train_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

echo ""
echo "[2/6] Downloading Google Speech Command V2 dataset..."

fileid="1tqN3TQlAB0XUaNSR8Yvb0H6uhY5sJyML"
filename="GSC_v2_test_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="150ho5EfYFzdDChh0hc0xwpmmsO_bxzbO"
filename="GSC_v2_test_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1EIBfVVFN1IjEF5j4eO-g3SMsCnKktBar"
filename="GSC_v2_train_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="11GFXzBx35LgosSqARLh2w9qMXd1rzIUF"
filename="GSC_v2_train_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1frOtUfBrh64ML7VG1mTpCWfL9t31fK6A"
filename="GSC_v2_validation_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1jWXz2bQXkZZu9ZN-ebyzwr8vdSZjlU7C"
filename="GSC_v2_validation_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

echo ""
echo "[3/6] Downloading GTSRB dataset..."

fileid="1kup2bRDjRcr_Ofch8O95-LMIvlY_-R7x"
filename="GTSRB_test_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1cEMIUZeDZn4SqIVeI6y7eJ3t0EAw10dB"
filename="GTSRB_test_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1dp_PP2ipGwwR6wUt15mBejkPFilSG65t"
filename="GTSRB_train_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1nQBq1z3ncB1c6JxI-z2gre3m7SfoMtSp"
filename="GTSRB_train_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

echo ""
echo "[4/6] Downloading SVHN dataset..."

fileid="1QPFJkA-PLp5Ghcb1AG_hzEE9aIIeeY8A"
filename="svhn_test_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1TGeLsOzpZbWnrKWehZg_ZvRViJsHPn7g"
filename="svhn_test_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1Tqk2DqGAfdWLbQ6GpEoWnSe6HMwcctn9"
filename="svhn_train_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1sHdjz8_W5ZDaOxReZ54xVVLiwYEoED2J"
filename="svhn_train_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1XBMCZMEnHzQiU4qyXX4lx4HQxP0wfaj2"
filename="svhn_validation_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1Pp7tVKU3iJe52GISudYqPxi7Zow2c38y"
filename="svhn_validation_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

echo ""
echo "[5/6] Downloading US8K dataset..."

fileid="1hWtUljFOq2bvTb-BwS-qFBKP_vcKAPJv"
filename="US8K_test_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1m_GY_xt0zy3tJM3GgVTmHV1KgUUIQ3U9"
filename="US8K_test_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="16n1dVCtFOYckfp800o4i080F5h787CzY"
filename="US8K_train_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1p5FCC3uhdskNsTqrbO0FzWQMjJICpMor"
filename="US8K_train_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

echo ""
echo "[6/6] Downloading FMNIST dataset..."

fileid="1xIcFXcu9KsTOFpdRRrHfdPG3SniCdhhb"
filename="fmnist_test_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1K8SLjM7PeC0XIjNetJ8q4ZaDs3Se5T99"
filename="fmnist_test_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1tITHwmRwkTAGMCND5I4LIfxgy3Gn33xs"
filename="fmnist_train_data.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

fileid="1mtTjU1ib2whkleH2sgrUx7sMlgEz3suL"
filename="fmnist_train_label.npy"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

rm cookie


