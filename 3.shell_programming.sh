# 쉘스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh  -> Ctrl+O, X
echo "hello world"
chmod u+x myscript.sh
# 스크립트 실행
./myscript.sh

#########실습#########
# 터미널창에 "script practice start" 문구 출력 -> echo
# 홈디렉토리에서 mydir이라는 폴더 생성 -> cd -> mkdir
# mydir로 이동해서 file1.txt, file2.txt 파일생성 -> touch
# file1.txt에는 hello from file1이라는 문구 입력 -> echo >
# file2.txt에는 hello from file2이라는 문구 입력
# file1.txt파일을 백업본(copy본)을 생성. 이름은 file1_backup.txt -> cp
# file2.txt파일은 이름을 file2_rename.txt로 변경 -> mv
# 터미널창에 "script practice end" 문구 출력 -> echo
-> nano myscript.sh 해서(파일자동생성됨) 편집기 내부에서 스크립트 작성 -> Ctrl+O, X
-> 실행: ./myscript.sh
-> permission denied 될 경우: chmod u+x myscript2.sh
-> cat file1.txt 등으로 확인하기

# myscript2 생성 후 아래 코드 작성 및 실행
# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f "$file_name" ]; then
 echo "$file_name file exists"
else
 echo "$file_name file doesn't exists"
fi

# for문
for a in {1..100}
do
 echo "hello world$a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
 echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
 let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용 : 현재폴더에서 파일개수와 디렉토리개수 계산
file_count=0
dir_count=0
for a in *
do
 if [ -f "$i" ]; then
  let file_count=file_count+1
 else
  let dir_count=dir_count+1
done
echo "filecount is $file_count"
echo "dircount is $dir_count"