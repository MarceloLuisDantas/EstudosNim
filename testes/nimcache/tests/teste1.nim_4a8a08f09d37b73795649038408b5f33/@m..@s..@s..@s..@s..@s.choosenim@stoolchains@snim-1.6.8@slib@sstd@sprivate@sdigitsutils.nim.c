/* Generated by Nim Compiler v1.6.8 */
/* Compiled for: Linux, amd64, gcc */
/* Command for C compiler:
   gcc -c  -w -fmax-errors=3   -I/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib -I/home/marcelo/Documents/codigos/Nim/testes/tests -o /home/marcelo/Documents/codigos/Nim/testes/nimcache/tests/teste1.nim_4a8a08f09d37b73795649038408b5f33/@m..@s..@s..@s..@s..@s.choosenim@stoolchains@snim-1.6.8@slib@sstd@sprivate@sdigitsutils.nim.c.o /home/marcelo/Documents/codigos/Nim/testes/nimcache/tests/teste1.nim_4a8a08f09d37b73795649038408b5f33/@m..@s..@s..@s..@s..@s.choosenim@stoolchains@snim-1.6.8@slib@sstd@sprivate@sdigitsutils.nim.c */
#define NIM_INTBITS 64

#include "nimbase.h"
#include <string.h>
#undef LANGUAGE_C
#undef MIPSEB
#undef MIPSEL
#undef PPC
#undef R3000
#undef R4000
#undef i386
#undef linux
#undef mips
#undef near
#undef far
#undef powerpc
#undef unix
  #  define nimfr_(proc, file) \
      TFrame FR_; \
      FR_.procname = proc; FR_.filename = file; FR_.line = 0; FR_.len = 0; nimFrame(&FR_);

  #  define nimfrs_(proc, file, slots, length) \
      struct {TFrame* prev;NCSTRING procname;NI line;NCSTRING filename; NI len; VarSlot s[slots];} FR_; \
      FR_.procname = proc; FR_.filename = file; FR_.line = 0; FR_.len = length; nimFrame((TFrame*)&FR_);

  #  define nimln_(n, file) \
      FR_.line = n; FR_.filename = file;
  typedef struct NimStringDesc NimStringDesc;
typedef struct TGenericSeq TGenericSeq;
struct TGenericSeq {
NI len;
NI reserved;
};
struct NimStringDesc {
  TGenericSeq Sup;
NIM_CHAR data[SEQ_DECL_SIZE];
};
typedef NIM_CHAR tyArray__PbS9a6gkxCuxWEnFq4lOU9aw[24];
typedef NIM_CHAR tyArray__38Z69amCaoywES5tRmClBSw[200];
N_LIB_PRIVATE N_NOINLINE(void, raiseOverflow)(void);
N_LIB_PRIVATE N_NOINLINE(void, raiseRangeErrorI)(NI64 i, NI64 a, NI64 b);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, setLengthStr)(NimStringDesc* s, NI newLen);
N_LIB_PRIVATE N_NIMCALL(void, unsureAsgnRef)(void** dest, void* src);
N_LIB_PRIVATE N_NOINLINE(void, raiseIndexError2)(NI i, NI n);
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_164)(NimStringDesc** result, NU64 x);
static N_INLINE(void, addIntImpl__stdZprivateZdigitsutils_59)(NimStringDesc** result, NU64 x);
N_LIB_PRIVATE N_NOINLINE(void, raiseRangeErrorNoArgs)(void);
static N_INLINE(void, addChars__stdZprivateZdigitsutils_100)(NimStringDesc** result, tyArray__PbS9a6gkxCuxWEnFq4lOU9aw x, NI start, NI n);
static N_INLINE(void, copyMem__system_1727)(void* dest, void* source, NI size);
static N_INLINE(void, nimCopyMem)(void* dest, void* source, NI size);
static N_INLINE(void, nimFrame)(TFrame* s);
N_LIB_PRIVATE N_NOINLINE(void, callDepthLimitReached__system_2997)(void);
static N_INLINE(void, popFrame)(void);
N_LIB_PRIVATE NIM_CONST tyArray__38Z69amCaoywES5tRmClBSw digits100__stdZprivateZdigitsutils_2 = {48,
48,
48,
49,
48,
50,
48,
51,
48,
52,
48,
53,
48,
54,
48,
55,
48,
56,
48,
57,
49,
48,
49,
49,
49,
50,
49,
51,
49,
52,
49,
53,
49,
54,
49,
55,
49,
56,
49,
57,
50,
48,
50,
49,
50,
50,
50,
51,
50,
52,
50,
53,
50,
54,
50,
55,
50,
56,
50,
57,
51,
48,
51,
49,
51,
50,
51,
51,
51,
52,
51,
53,
51,
54,
51,
55,
51,
56,
51,
57,
52,
48,
52,
49,
52,
50,
52,
51,
52,
52,
52,
53,
52,
54,
52,
55,
52,
56,
52,
57,
53,
48,
53,
49,
53,
50,
53,
51,
53,
52,
53,
53,
53,
54,
53,
55,
53,
56,
53,
57,
54,
48,
54,
49,
54,
50,
54,
51,
54,
52,
54,
53,
54,
54,
54,
55,
54,
56,
54,
57,
55,
48,
55,
49,
55,
50,
55,
51,
55,
52,
55,
53,
55,
54,
55,
55,
55,
56,
55,
57,
56,
48,
56,
49,
56,
50,
56,
51,
56,
52,
56,
53,
56,
54,
56,
55,
56,
56,
56,
57,
57,
48,
57,
49,
57,
50,
57,
51,
57,
52,
57,
53,
57,
54,
57,
55,
57,
56,
57,
57}
;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
static N_INLINE(void, nimCopyMem)(void* dest, void* source, NI size) {
	void* T1_;
	T1_ = (void*)0;
	T1_ = memcpy(dest, source, ((size_t) (size)));
}
static N_INLINE(void, copyMem__system_1727)(void* dest, void* source, NI size) {
	nimCopyMem(dest, source, size);
}
static N_INLINE(void, nimFrame)(TFrame* s) {
	{
		if (!(framePtr__system_2564 == ((TFrame*) NIM_NIL))) goto LA3_;
		(*s).calldepth = ((NI16) 0);
	}
	goto LA1_;
	LA3_: ;
	{
		(*s).calldepth = (NI16)((*framePtr__system_2564).calldepth + ((NI16) 1));
	}
	LA1_: ;
	(*s).prev = framePtr__system_2564;
	framePtr__system_2564 = s;
	{
		if (!((*s).calldepth == ((NI16) 2000))) goto LA8_;
		callDepthLimitReached__system_2997();
	}
	LA8_: ;
}
static N_INLINE(void, popFrame)(void) {
	framePtr__system_2564 = (*framePtr__system_2564).prev;
}
static N_INLINE(void, addChars__stdZprivateZdigitsutils_100)(NimStringDesc** result, tyArray__PbS9a6gkxCuxWEnFq4lOU9aw x, NI start, NI n) {
	NI old;
	NI TM__J7BLF9cgvwzEso7aEL9cCOKw_7;
	nimfr_("addChars", "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	nimln_(43, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	old = ((*result) ? (*result)->Sup.len : 0);
	nimln_(44, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	if (nimAddInt(old, n, &TM__J7BLF9cgvwzEso7aEL9cCOKw_7)) { raiseOverflow(); };
	if (((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7)) < ((NI) 0) || ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7)) > ((NI) IL64(9223372036854775807))){ raiseRangeErrorI((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7), ((NI) 0), ((NI) IL64(9223372036854775807))); }
	unsureAsgnRef((void**) (&(*result)), setLengthStr((*result), ((NI) ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7)))));
	nimln_(52, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	if (old < 0 || old >= ((*result) ? (*result)->Sup.len : 0)){ raiseIndexError2(old,((*result) ? (*result)->Sup.len : 0)-1); }
	if ((NU)(start) > (NU)(23)){ raiseIndexError2(start, 23); }
	if ((n) < ((NI) 0) || (n) > ((NI) IL64(9223372036854775807))){ raiseRangeErrorI(n, ((NI) 0), ((NI) IL64(9223372036854775807))); }
	copyMem__system_1727(((void*) ((&(*result)->data[old]))), ((void*) ((&x[(start)- 0]))), ((NI) (n)));
	popFrame();
}
static N_INLINE(void, addIntImpl__stdZprivateZdigitsutils_59)(NimStringDesc** result, NU64 x) {
	tyArray__PbS9a6gkxCuxWEnFq4lOU9aw tmp;
	NU64 num;
	NI next;
	NI TM__J7BLF9cgvwzEso7aEL9cCOKw_8;
	nimfr_("addIntImpl", "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	nimln_(59, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	num = x;
	nimln_(60, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	next = ((NI) 23);
	{
		nimln_(63, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		while (1) {
			NU64 originNum;
			NU64 index;
			NI TM__J7BLF9cgvwzEso7aEL9cCOKw_3;
			NI TM__J7BLF9cgvwzEso7aEL9cCOKw_4;
			if (!((NU64)(100ULL) <= (NU64)(num))) goto LA2;
			nimln_(64, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			originNum = num;
			nimln_(65, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			num = (NU64)((NU64)(num) / (NU64)(100ULL));
			nimln_(66, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			index = (NU64)((NU64)((NU64)((NU64)(originNum) - (NU64)((NU64)((NU64)(num) * (NU64)(100ULL))))) << (NU64)(((NI) 1)));
			if ((NU)(next) > (NU)(23)){ raiseIndexError2(next, 23); }
			nimln_(67, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			if ((NU)((NU64)((NU64)(index) + (NU64)(1ULL))) > (NU)(199)){ raiseIndexError2((NU64)((NU64)(index) + (NU64)(1ULL)), 199); }
			tmp[(next)- 0] = digits100__stdZprivateZdigitsutils_2[((NU64)((NU64)(index) + (NU64)(1ULL)))- 0];
			nimln_(68, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			if (nimSubInt(next, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_3)) { raiseOverflow(); };
			if ((NU)((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_3)) > (NU)(23)){ raiseIndexError2((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_3), 23); }
			if ((NU)(index) > (NU)(199)){ raiseIndexError2(index, 199); }
			tmp[((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_3))- 0] = digits100__stdZprivateZdigitsutils_2[(index)- 0];
			nimln_(69, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			if (nimSubInt(next, ((NI) 2), &TM__J7BLF9cgvwzEso7aEL9cCOKw_4)) { raiseOverflow(); };
			next = (NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_4);
		} LA2: ;
	}
	nimln_(72, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	{
		if (!((NU64)(num) < (NU64)(10ULL))) goto LA5_;
		if ((NU)(next) > (NU)(23)){ raiseIndexError2(next, 23); }
		nimln_(73, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		if ((NU64)((NU64)(48ULL) + (NU64)(num)) > (NU64)(((NI) 255))){ raiseRangeErrorNoArgs(); }
		tmp[(next)- 0] = ((NIM_CHAR) (((NI) ((NU64)((NU64)(48ULL) + (NU64)(num))))));
	}
	goto LA3_;
	LA5_: ;
	{
		NU64 index_2;
		NI TM__J7BLF9cgvwzEso7aEL9cCOKw_5;
		NI TM__J7BLF9cgvwzEso7aEL9cCOKw_6;
		nimln_(75, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		index_2 = (NU64)((NU64)(num) * (NU64)(2ULL));
		if ((NU)(next) > (NU)(23)){ raiseIndexError2(next, 23); }
		nimln_(76, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		if ((NU)((NU64)((NU64)(index_2) + (NU64)(1ULL))) > (NU)(199)){ raiseIndexError2((NU64)((NU64)(index_2) + (NU64)(1ULL)), 199); }
		tmp[(next)- 0] = digits100__stdZprivateZdigitsutils_2[((NU64)((NU64)(index_2) + (NU64)(1ULL)))- 0];
		nimln_(77, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		if (nimSubInt(next, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_5)) { raiseOverflow(); };
		if ((NU)((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_5)) > (NU)(23)){ raiseIndexError2((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_5), 23); }
		if ((NU)(index_2) > (NU)(199)){ raiseIndexError2(index_2, 199); }
		tmp[((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_5))- 0] = digits100__stdZprivateZdigitsutils_2[(index_2)- 0];
		nimln_(78, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		if (nimSubInt(next, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_6)) { raiseOverflow(); };
		next = (NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_6);
	}
	LA3_: ;
	nimln_(79, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	if (nimSubInt(((NI) 24), next, &TM__J7BLF9cgvwzEso7aEL9cCOKw_8)) { raiseOverflow(); };
	addChars__stdZprivateZdigitsutils_100(result, tmp, next, (NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_8));
	popFrame();
}
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_164)(NimStringDesc** result, NU64 x) {
	nimfr_("addInt", "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	nimln_(87, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	addIntImpl__stdZprivateZdigitsutils_59(result, x);
	popFrame();
}
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_167)(NimStringDesc** result, NI64 x) {
	NU64 numX60gensym3_;
	nimfr_("addInt", "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	numX60gensym3_ = (NU64)0;
	nimln_(99, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	{
		NI baseX60gensym3_;
		NI TM__J7BLF9cgvwzEso7aEL9cCOKw_2;
		if (!(x < IL64(0))) goto LA3_;
		nimln_(100, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		{
			if (!(x == (IL64(-9223372036854775807) - IL64(1)))) goto LA7_;
			nimln_(101, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			numX60gensym3_ = ((NU64) (x));
		}
		goto LA5_;
		LA7_: ;
		{
			nimln_(103, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
			if (x == (IL64(-9223372036854775807) - IL64(1))){ raiseOverflow(); }
			numX60gensym3_ = ((NU64) (-(x)));
		}
		LA5_: ;
		nimln_(104, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		baseX60gensym3_ = ((*result) ? (*result)->Sup.len : 0);
		nimln_(105, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		if (nimAddInt(baseX60gensym3_, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_2)) { raiseOverflow(); };
		if (((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2)) < ((NI) 0) || ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2)) > ((NI) IL64(9223372036854775807))){ raiseRangeErrorI((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2), ((NI) 0), ((NI) IL64(9223372036854775807))); }
		unsureAsgnRef((void**) (&(*result)), setLengthStr((*result), ((NI) ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2)))));
		if (baseX60gensym3_ < 0 || baseX60gensym3_ >= ((*result) ? (*result)->Sup.len : 0)){ raiseIndexError2(baseX60gensym3_,((*result) ? (*result)->Sup.len : 0)-1); }
		nimln_(106, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		(*result)->data[baseX60gensym3_] = 45;
	}
	goto LA1_;
	LA3_: ;
	{
		nimln_(108, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
		numX60gensym3_ = ((NU64) (x));
	}
	LA1_: ;
	nimln_(114, "/home/marcelo/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	addInt__stdZprivateZdigitsutils_164(result, numX60gensym3_);
	popFrame();
}
