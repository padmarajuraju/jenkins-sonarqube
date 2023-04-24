import os
import getpass

def runMain():
    os.system("docker images")
    os.system("docker rmi -f mavenpipelines")
    os.system("docker images")
    userId = input("Enter the jenkins UserId : ")
    #password = input("Enter the jenkins password : ")
    password = getpass.getpass("Enter the jenkins password : ")
    print("Available Languages:")
    print("1. Java \n2. Python \n3. dotnet")
    option = int(input("Enter your choice:"))
    lang = ""
    if option == 1:
        lang = "java"
    elif option == 2:
        lang = "python"
    elif option == 3:
        lang = "dotnet"
    else:
        print("Enter a valid choice")
        runMain()

    GitHub_URL = input("Enter the valid GitHub URL : ")
    Branch = input("Enter the valid Branch Name : ")
    print(lang)
    os.system("java -jar jenkins-cli.jar -s http://localhost:8080/ -auth "+ userId+":"+password+" build MultiLangBuild -p lang="+lang+" -p GitHub_URL="+GitHub_URL+" -p Branch="+Branch)
    os.system("su -c \"firefox http://localhost:8080/job/MultiLangBuild/\" bhargav")

runMain()
