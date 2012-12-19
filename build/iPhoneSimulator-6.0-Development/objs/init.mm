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
void MREP_6CC2F83028974E9E99FAC1E816BDCDD3(void *, void *);
void MREP_38826B190E4B4D20A413A88629AAA35D(void *, void *);
void MREP_A545C4B6E5774800A6992362C411E01A(void *, void *);
void MREP_361EDD1A916C4CE582543A9D7DA6B45E(void *, void *);
void MREP_DDACF79AAF7448DEB694D08A344845C0(void *, void *);
void MREP_B6846D73B5864D59AAAAE291E3D65F5F(void *, void *);
void MREP_3F53C3B19EE14D39A243F6A83541DF7B(void *, void *);
void MREP_D100059534D94B9CB80DD2CD28487F1B(void *, void *);
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
MREP_6CC2F83028974E9E99FAC1E816BDCDD3(self, 0);
MREP_38826B190E4B4D20A413A88629AAA35D(self, 0);
MREP_A545C4B6E5774800A6992362C411E01A(self, 0);
MREP_361EDD1A916C4CE582543A9D7DA6B45E(self, 0);
MREP_DDACF79AAF7448DEB694D08A344845C0(self, 0);
MREP_B6846D73B5864D59AAAAE291E3D65F5F(self, 0);
MREP_3F53C3B19EE14D39A243F6A83541DF7B(self, 0);
MREP_D100059534D94B9CB80DD2CD28487F1B(self, 0);
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
