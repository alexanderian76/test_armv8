#include <stdio.h>
#include "utils.h"
#include <sys/syscall.h>
#include <unistd.h>

int main() {
//print_helloworld("Heelllooooo nooooob\n", 21);
int fd = 0;
    int result = mult(5);
    printf("Result: %d\n", result);
    long resultAdd = add(1,2, 3,4,5,6,7,8, 9000000000,1000000, 11,12,13,14,15,16, 17,18, 19,20,21,22,23,24);
    printf("Result add: %ld\n", resultAdd);
    
    char str[] = "1234567890qwerty and hello nigger\n";
    char *str1 = "asdf\n";
    char *str2 = "qwert\n";
    
    //write(fd, str1, 6);
    //write(fd, str2, 7);
    try {
      //  socket(str, sizeof(str)/sizeof(char));
    }
    catch(...) {
        printf("asd");
    }
    print(str1, 6);
    print(str, sizeof(str));
    int arr[] =  {0,0,0,0,0,1,1,1};
    printf("From bin: %d\n", binary_array_to_number(sizeof(arr) / sizeof(int), arr));
    //socket(str, sizeof(str)/sizeof(char)); 
    exit();
    return 0;
}