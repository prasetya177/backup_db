DAYOFWEEK=$(date +"%u")
namafile=saba-dump
serverPath=/home/sabaindomedika/Documents/tuah/saba_dump/
db_path=/home/devops/Documents/backup_db/icare-db-production.sql
case $DAYOFWEEK in
        1)
                hari="senin"
                break
                ;;
        2)
                hari="selasa"
                break
                ;;
        3)
                hari="rabu"
                break
                ;;
        4)
                hari="kamis"
                break
                ;;
        5)
                hari="jumat"
                break
                ;;
        6)
                hari="sabtu"
                break
                ;;
        7)
                hari="minggu"
                break
                ;;

esac
serverPath=$serverPath-$namafile-$hari.sql
#command=$(scp_icare "$hari")  && echo $namafile-$hari SUKSES backup di : $(date)   || echo $namafile-$hari GAGAL : $(date)
command=$(scp -P 9014 sabaindomedika@192.168.7.213:/home/sabaindomedika/Documents/tuah/saba_dump/saba-dump-"$hari".sql /home/devops/database/i_care/icare-production.sql)  && echo $namafile-$hari SUKSES backup di : $(date)   || echo $namafile-$hari GAGAL : $(date)
#scp_icare $hari
