# 1. git merge
1. 새로운 브랜치 생성 - `git branch 브랜치이름`
2. 브랜치 헤드 이동 - `git checkout 브랜치이름`
```text
참고
git checkout -b 브랜치이름

# 위의 명령어는 아래의 두 명령어를 합한 것 
git branch 브랜치이름
git checkout 브랜치이름
```
- 헤드 이동 후 add / commit
- master(main) 브랜치로 head 이동(`git checkout master(main)`)
- `git merge 합칠브랜치이름`
3. git push
4. 브랜치 삭제 - `git branch -d 제거할브랜치이름`

