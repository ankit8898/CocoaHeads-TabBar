#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_2EFD95F1E34B4A28982B8ACF26A46752(void *, void *);
void MREP_10F4882A9FA44FB39F931D6DEC663428(void *, void *);
void MREP_A545C4B6E5774800A6992362C411E01A(void *, void *);
void MREP_361EDD1A916C4CE582543A9D7DA6B45E(void *, void *);
void MREP_DDACF79AAF7448DEB694D08A344845C0(void *, void *);
void MREP_B6846D73B5864D59AAAAE291E3D65F5F(void *, void *);
void MREP_3F53C3B19EE14D39A243F6A83541DF7B(void *, void *);
void MREP_687D8E4CCA41488FB2DF389A1025DB87(void *, void *);
void MREP_FF4E55D1AD7C4BD9BE9F8A1AAE587EA9(void *, void *);
void MREP_0D3B46035E28440D8D9B80708CE192E4(void *, void *);
void MREP_4BFADD8F7A314AD79B67CC96231D542A(void *, void *);
void MREP_426F78E4EDA84108B736DE36A01F0FDA(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_2EFD95F1E34B4A28982B8ACF26A46752(self, 0);
MREP_10F4882A9FA44FB39F931D6DEC663428(self, 0);
MREP_A545C4B6E5774800A6992362C411E01A(self, 0);
MREP_361EDD1A916C4CE582543A9D7DA6B45E(self, 0);
MREP_DDACF79AAF7448DEB694D08A344845C0(self, 0);
MREP_B6846D73B5864D59AAAAE291E3D65F5F(self, 0);
MREP_3F53C3B19EE14D39A243F6A83541DF7B(self, 0);
MREP_687D8E4CCA41488FB2DF389A1025DB87(self, 0);
MREP_FF4E55D1AD7C4BD9BE9F8A1AAE587EA9(self, 0);
MREP_0D3B46035E28440D8D9B80708CE192E4(self, 0);
MREP_4BFADD8F7A314AD79B67CC96231D542A(self, 0);
MREP_426F78E4EDA84108B736DE36A01F0FDA(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
