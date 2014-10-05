#! /bin/bash -
mkdir ~/demo
cd ~/demo
echo ---------------------init repo---------------------
git init
echo ---------------------create file a---------------------
echo commit a0 > a0.txt
echo ---------------------add file a---------------------
git add a0.txt
echo ---------------------check status---------------------
git status 
echo ---------------------modify file a ---------------------
echo modify a0 >> a0.txt
echo ---------------------check status---------------------
git status 
echo ---------------------update/stage file---------------------
git add -u
echo ---------------------check status---------------------
git status 
echo ---------------------create file b---------------------
echo commit b0 > b0.txt
echo ---------------------add file b---------------------
git add b0.txt
echo ---------------------check status---------------------
git status 
echo ---------------------first commit add file b---------------------
git commit -m "git demo commit 0"
echo ---------------------check status---------------------
git status
echo ---------------------remove file b---------------------
git rm b0.txt
echo ---------------------second commit add file b---------------------
git commit -m "git demo remove the b0.txt"

# for i in `seq 2 5` do ./repeat_commit.sh -n $i; done 