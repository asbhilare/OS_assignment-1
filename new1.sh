echo "Directory you want to work with:"
read dname
if [ -d $dname ]
then
        echo "Directory Found"
        cd $dname
else
        echo "Making new Directory.."
        mkdir $dname
        cd $dname
        echo "Directory made"
fi

i="y"
 while [ $i="y" ]
do
	echo "             "
        echo "1.Create file"
        echo "2.Search file"
        echo "3.Delete file"
	echo "4.Rename file"
        echo "5.View Directory"
        echo "6.Copy one file to another"
        echo "7.View content of particular file"
        echo "8.Exit"
        echo "Enter your choice"
	read choice
	case $choice in
		1)
			echo "Enter file name"
                        read fname
                        if [ -f $fname ]
                        then
				echo "file already exists"
                        else
				touch $fname
                                echo "File sucessfully created"
			fi;;
		2)
			echo "Enter file name"
                        read sname
                        if [ -f $sname ]
                        then
				echo "File Found Sucessfully"
                        else
				echo "No such file exist"
			fi;;;
                3)
                        echo "Enter file to be delete"
                        read dname1
                        if [ -f $dname1 ]
                        then
				rm $dname1
                                echo "File deleted Sucessfully"
                        else
                                echo " No such file exist"
                        fi;;
                4)
                        echo "Enter old file name"
                        read old_fname
                        echo "Enter new file name"
			read new_fname                                                                          mv $old_fname $new_fname;;
                5)
                        echo "files in directory" $dname
                        ls;;
                6)
                        echo "File name to be copied"
                        read cp_fname1
                        if [ -f $cp_fname1 ]
                        then
				echo "File name into be copied"
                                read cp_fname2
                                if [ -f $cp_fname2 ]
                                then
					cp $cp_fname1 $cp_fname2
					echo "Copied"
                                else
                                        touch $cp_fname2
                                        cp $cp_fname1 $cp_fname2
                                        echo "Copied"
                                fi
                        else
                                echo "No file Exist"
                        fi;;
                7)
                        echo "Enter File name"
                        read cname
                        if [ -f $cname ]
                        then
				cat $cname
                        else
				echo "No file exist"
                        fi;;
                8)
                        i="n";;


        esac
done                  
