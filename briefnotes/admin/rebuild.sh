cd /home/dlcmh/repos/distributed-workflow
git fetch origin master
git reset --hard origin/master
cd briefnotes
bundle
kill $(cat tmp/pids/server.pid)
rails s -p 30175 -d -e production
