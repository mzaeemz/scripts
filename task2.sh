echo "Creating file1 in task2 directory"
touch ./task2/file1
echo "Creating file2 in task2 directory"
touch ./task2/file2
echo "Creating file3 in task2 directory"
touch ./task2/file3
echo "Creating directory task_temp"
mkdir ./task2_temp
echo "Copying file1 to task2_temp folder"
cp ./task2/file1 ./task2_temp
echo "Copying file2 to task2_temp folder"
cp ./task2/file2 ./task2_temp
echo "Copying file3 to task2_temp folder"
cp ./task2/file3 ./task2_temp
echo "Swapping Folder names"
mv ./task2 ./temp_dir
mv ./task2_temp ./task2
mv ./temp_dir ./task2_temp
