
#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE * file;
    char ch;
    int characters=0, words=0, lines=0;
    
    file = fopen("answer", "r");
    if (file == NULL)
    {
        printf("\nNO file called answer.\n");
        exit(EXIT_FAILURE);
    }

    while (1)
    {
        ch=fgetc(file);
        if (ch == EOF){
        break;
        }
        characters++;
        if (ch == '\n' || ch == '\0')
            lines++;
        if (ch == ' ' || ch == '\t' || ch == '\n' || ch == '\0')
            words++;
    

    }
 
    printf("\nnumber of characters = %d\n", characters);
    printf("number of words      = %d\n", words);
    printf("number of lines      = %d\n", lines);

    fclose(file);

    return 0;
}
