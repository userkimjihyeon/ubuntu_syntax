# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudo passwd newuser1
-> permission denied되면 sudo 사용하기

# 사용자 변경 : 변경하고자 하는 계정의 비밀번호
# sudo의 경우 현재 사용자의 비밀번호
su - newuser1
# 루트계정으로 변경
su -


# chmod는 권한부여 : r(4), w(2), x(1) -> u(소유자), g(그룹), o(그외)로 구성
chmod 644 파일명 => rw-r--r--
chmod u+x 파일명 => rwx
chmod u-x 파일명 => rw-
chmod u=r 파일명 => r--

# 소유자:그룹 변경
chown newuser1:newuser1 파일명