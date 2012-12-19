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
void MREP_4640BAA20C7D49ED9BCC38C3628122B0(void *, void *);
void MREP_4E08EF29B4924B5DBF320C02E2C09EB2(void *, void *);
void MREP_751F33E7282F4073BE73173DB7D76726(void *, void *);
void MREP_29BEAE65537C4D9ABCB44A617436E05E(void *, void *);
void MREP_23F9E7F8F3B941E48D60F61B3AEECFE5(void *, void *);
void MREP_BDB7D6226D2F4E10A6D9AF1421084AFA(void *, void *);
void MREP_5CCD349A69C04A319128A51891420F4A(void *, void *);
void MREP_E22F009C5A6D463DADA025A11722D252(void *, void *);
void MREP_4C1ECDD9FA654FACBAB137FD53EF91C9(void *, void *);
void MREP_41E1645C7CE24BB7B36A23B74AE18140(void *, void *);
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
MREP_4640BAA20C7D49ED9BCC38C3628122B0(self, 0);
MREP_4E08EF29B4924B5DBF320C02E2C09EB2(self, 0);
MREP_751F33E7282F4073BE73173DB7D76726(self, 0);
MREP_29BEAE65537C4D9ABCB44A617436E05E(self, 0);
MREP_23F9E7F8F3B941E48D60F61B3AEECFE5(self, 0);
MREP_BDB7D6226D2F4E10A6D9AF1421084AFA(self, 0);
MREP_5CCD349A69C04A319128A51891420F4A(self, 0);
MREP_E22F009C5A6D463DADA025A11722D252(self, 0);
MREP_4C1ECDD9FA654FACBAB137FD53EF91C9(self, 0);
MREP_41E1645C7CE24BB7B36A23B74AE18140(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
