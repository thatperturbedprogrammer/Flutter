// Defining class
class Student{
    var stdName;
    var stdAge;
    var stdRoll_nu;

    // defining class function
    showStdInfo(){
        print("Student Name is: ${stdName}");
        print("Student Age is: ${stdAge}");
        print("Student Roll Number is: ${stdRoll_nu}");
    }
}

void main(){
    // Creating object called std
    var std = new Student();
    std.stdName = "Sid";
    std.stdAge = 21;
    std.stdRoll_nu = 38;

    // Accessing class function
    std.showStdInfo();
}