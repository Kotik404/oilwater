#define DEF_HEIGHT 640.0
#define DEF_WIDTH 800.0
#define CONFIG_PATH "res/.config"

class Kernel
{
public:
	Kernel(int argc, char **argv);

    float width;
    float height;
private:
	char* map_name;
};
