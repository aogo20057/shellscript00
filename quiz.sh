#!/bin/bash

QuizReq1() {
cat << EOF
[문제 01]. 차도가 없는 나라는?
1) 인도
2) 차도
3) 속도

EOF
}

QuizReq2() {
cat << EOF
[문제 02]. 세상에서 가장 빠른 차는?
1) 막차
2) 첫차
3) 차차차

EOF
}

QuizReq3() {
cat << EOF
[문제 03]. 세상에서 가장 가난한 왕은?
1) 막내임금
2) 첫째임금
3) 최저임금

EOF
}

cat << EOF > truekey.txt
1
2
3
EOF

> choice.txt

for i in $(seq 1 3)
do
    TRUE=$(sed -n "${i}p" truekey.txt)
    CHOICE=0
    while [ $TRUE != $CHOICE ]
    do
        "QuizReq${i}"
        echo -n "Enter you choice? (1|2|3): "
        read CHOICE
        case $CHOICE in
            1|2|3) 
                if [ $TRUE = $CHOICE ]; then
                    echo "[ OK ] 정답입니다!"
                else
                    echo "[ FAIL ] 오답입니다. 다시 풀어보세요!"
                fi
                ;;
            *) 
                echo "[ FAIL ] 잘못된 입력입니다. 다시 입력하세요."
                continue ;;
        esac
    done
done



