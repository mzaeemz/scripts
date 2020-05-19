echo "Creating file1 in task2 directory"
#create files
touch ./task2/file1
echo "Creating file2 in task2 directory"
touch ./task2/file2
echo "Creating file3 in task2 directory"
touch ./task2/file3
echo "Creating directory task_temp"
#create temp directory
mkdir ./task2_temp
echo "Copying file1 to task2_temp folder"
#copy all files form task2 to task2_temp
cp ./task2/file1 ./task2_temp
echo "Copying file2 to task2_temp folder"
cp ./task2/file2 ./task2_temp
echo "Copying file3 to task2_temp folder"
cp ./task2/file3 ./task2_temp
echo "Swapping Folder names"
#save task2 name as temporary
mv ./task2 ./temp_dir
#change name of temp dir
mv ./task2_temp ./task2
#change name of the previously task2 dir
mv ./temp_dir ./task2_temp
