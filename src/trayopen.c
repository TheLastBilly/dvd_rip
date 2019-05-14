#include <sys/ioctl.h>
#include <fcntl.h>
#include <linux/cdrom.h>

int main(int argc,char **argv) {
    int cdrom;
    int status=1;

    if(argc != 2){
	    printf("Error: No device specified\n");
	    exit(status);
    }
    if ((cdrom = open(argv[1],O_RDONLY | O_NONBLOCK)) < 0) {
        printf("Unable to open device %s\n",argv[1]);
        exit(status);
    }

    if (ioctl(cdrom,CDROM_DRIVE_STATUS) != CDS_TRAY_OPEN) {
	printf("Tray is closed\n");
        status=0;
    }
    close(cdrom);
    exit(status);
}
