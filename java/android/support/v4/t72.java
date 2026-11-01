package android.support.v4;

import org.apache.commons.lang3.Cgoto;
import org.apache.commons.lang3.builder.Builder;
import org.apache.commons.lang3.builder.Ccase;
import org.apache.commons.lang3.builder.Ctry;

/* loaded from: classes3.dex */
public class t72 implements Builder<String> {

    /* renamed from: new, reason: not valid java name */
    private static volatile Ccase f6435new = Ccase.DEFAULT_STYLE;

    /* renamed from: do, reason: not valid java name */
    private final StringBuffer f6436do;

    /* renamed from: for, reason: not valid java name */
    private final Ccase f6437for;

    /* renamed from: if, reason: not valid java name */
    private final Object f6438if;

    public t72(Object obj) {
        this(obj, null, null);
    }

    public static Ccase l() {
        return f6435new;
    }

    public static String p(Object obj) {
        return Ctry.I(obj);
    }

    public static String q(Object obj, Ccase ccase) {
        return Ctry.J(obj, ccase);
    }

    public static String r(Object obj, Ccase ccase, boolean z) {
        return Ctry.M(obj, ccase, z, false, null);
    }

    public static <T> String s(T t, Ccase ccase, boolean z, Class<? super T> cls) {
        return Ctry.M(t, ccase, z, false, cls);
    }

    public static void t(Ccase ccase) {
        if (ccase == null) {
            throw new IllegalArgumentException("The style must not be null");
        }
        f6435new = ccase;
    }

    public t72 a(double[] dArr) {
        this.f6437for.append(this.f6436do, (String) null, dArr, (Boolean) null);
        return this;
    }

    /* renamed from: abstract, reason: not valid java name */
    public t72 m7741abstract(String str, Object[] objArr) {
        this.f6437for.append(this.f6436do, str, objArr, (Boolean) null);
        return this;
    }

    public t72 b(float[] fArr) {
        this.f6437for.append(this.f6436do, (String) null, fArr, (Boolean) null);
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public t72 m7742break(String str, double d) {
        this.f6437for.append(this.f6436do, str, d);
        return this;
    }

    public t72 c(int[] iArr) {
        this.f6437for.append(this.f6436do, (String) null, iArr, (Boolean) null);
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public t72 m7743case(long j) {
        this.f6437for.append(this.f6436do, (String) null, j);
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public t72 m7744catch(String str, float f) {
        this.f6437for.append(this.f6436do, str, f);
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public t72 m7745class(String str, int i) {
        this.f6437for.append(this.f6436do, str, i);
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public t72 m7746const(String str, long j) {
        this.f6437for.append(this.f6436do, str, j);
        return this;
    }

    /* renamed from: continue, reason: not valid java name */
    public t72 m7747continue(String str, Object[] objArr, boolean z) {
        this.f6437for.append(this.f6436do, str, objArr, Boolean.valueOf(z));
        return this;
    }

    public t72 d(long[] jArr) {
        this.f6437for.append(this.f6436do, (String) null, jArr, (Boolean) null);
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public t72 m7748default(String str, float[] fArr, boolean z) {
        this.f6437for.append(this.f6436do, str, fArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public t72 m7749do(byte b) {
        this.f6437for.append(this.f6436do, (String) null, b);
        return this;
    }

    public t72 e(Object[] objArr) {
        this.f6437for.append(this.f6436do, (String) null, objArr, (Boolean) null);
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public t72 m7750else(Object obj) {
        this.f6437for.append(this.f6436do, (String) null, obj, (Boolean) null);
        return this;
    }

    /* renamed from: extends, reason: not valid java name */
    public t72 m7751extends(String str, int[] iArr) {
        this.f6437for.append(this.f6436do, str, iArr, (Boolean) null);
        return this;
    }

    public t72 f(short[] sArr) {
        this.f6437for.append(this.f6436do, (String) null, sArr, (Boolean) null);
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public t72 m7752final(String str, Object obj) {
        this.f6437for.append(this.f6436do, str, obj, (Boolean) null);
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public t72 m7753finally(String str, int[] iArr, boolean z) {
        this.f6437for.append(this.f6436do, str, iArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public t72 m7754for(double d) {
        this.f6437for.append(this.f6436do, (String) null, d);
        return this;
    }

    public t72 g(boolean[] zArr) {
        this.f6437for.append(this.f6436do, (String) null, zArr, (Boolean) null);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public t72 m7755goto(String str, byte b) {
        this.f6437for.append(this.f6436do, str, b);
        return this;
    }

    public t72 h(Object obj) {
        Cgoto.m32398switch(n(), obj);
        return this;
    }

    public t72 i(String str) {
        if (str != null) {
            this.f6437for.appendSuper(this.f6436do, str);
        }
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public t72 m7756if(char c) {
        this.f6437for.append(this.f6436do, (String) null, c);
        return this;
    }

    /* renamed from: implements, reason: not valid java name */
    public t72 m7757implements(boolean z) {
        this.f6437for.append(this.f6436do, (String) null, z);
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public t72 m7758import(String str, byte[] bArr) {
        this.f6437for.append(this.f6436do, str, bArr, (Boolean) null);
        return this;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public t72 m7759instanceof(byte[] bArr) {
        this.f6437for.append(this.f6436do, (String) null, bArr, (Boolean) null);
        return this;
    }

    /* renamed from: interface, reason: not valid java name */
    public t72 m7760interface(String str, boolean[] zArr) {
        this.f6437for.append(this.f6436do, str, zArr, (Boolean) null);
        return this;
    }

    public t72 j(String str) {
        if (str != null) {
            this.f6437for.appendToString(this.f6436do, str);
        }
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public String build() {
        return toString();
    }

    public Object m() {
        return this.f6438if;
    }

    public StringBuffer n() {
        return this.f6436do;
    }

    /* renamed from: native, reason: not valid java name */
    public t72 m7761native(String str, byte[] bArr, boolean z) {
        this.f6437for.append(this.f6436do, str, bArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public t72 m7762new(float f) {
        this.f6437for.append(this.f6436do, (String) null, f);
        return this;
    }

    public Ccase o() {
        return this.f6437for;
    }

    /* renamed from: package, reason: not valid java name */
    public t72 m7763package(String str, long[] jArr) {
        this.f6437for.append(this.f6436do, str, jArr, (Boolean) null);
        return this;
    }

    /* renamed from: private, reason: not valid java name */
    public t72 m7764private(String str, long[] jArr, boolean z) {
        this.f6437for.append(this.f6436do, str, jArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: protected, reason: not valid java name */
    public t72 m7765protected(String str, boolean[] zArr, boolean z) {
        this.f6437for.append(this.f6436do, str, zArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public t72 m7766public(String str, char[] cArr) {
        this.f6437for.append(this.f6436do, str, cArr, (Boolean) null);
        return this;
    }

    /* renamed from: return, reason: not valid java name */
    public t72 m7767return(String str, char[] cArr, boolean z) {
        this.f6437for.append(this.f6436do, str, cArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: static, reason: not valid java name */
    public t72 m7768static(String str, double[] dArr) {
        this.f6437for.append(this.f6436do, str, dArr, (Boolean) null);
        return this;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public t72 m7769strictfp(String str, short[] sArr) {
        this.f6437for.append(this.f6436do, str, sArr, (Boolean) null);
        return this;
    }

    /* renamed from: super, reason: not valid java name */
    public t72 m7770super(String str, Object obj, boolean z) {
        this.f6437for.append(this.f6436do, str, obj, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: switch, reason: not valid java name */
    public t72 m7771switch(String str, double[] dArr, boolean z) {
        this.f6437for.append(this.f6436do, str, dArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public t72 m7772synchronized(char[] cArr) {
        this.f6437for.append(this.f6436do, (String) null, cArr, (Boolean) null);
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public t72 m7773this(String str, char c) {
        this.f6437for.append(this.f6436do, str, c);
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public t72 m7774throw(String str, short s) {
        this.f6437for.append(this.f6436do, str, s);
        return this;
    }

    /* renamed from: throws, reason: not valid java name */
    public t72 m7775throws(String str, float[] fArr) {
        this.f6437for.append(this.f6436do, str, fArr, (Boolean) null);
        return this;
    }

    public String toString() {
        if (m() == null) {
            n().append(o().getNullText());
        } else {
            this.f6437for.appendEnd(n(), m());
        }
        return n().toString();
    }

    /* renamed from: transient, reason: not valid java name */
    public t72 m7776transient(short s) {
        this.f6437for.append(this.f6436do, (String) null, s);
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public t72 m7777try(int i) {
        this.f6437for.append(this.f6436do, (String) null, i);
        return this;
    }

    /* renamed from: volatile, reason: not valid java name */
    public t72 m7778volatile(String str, short[] sArr, boolean z) {
        this.f6437for.append(this.f6436do, str, sArr, Boolean.valueOf(z));
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public t72 m7779while(String str, boolean z) {
        this.f6437for.append(this.f6436do, str, z);
        return this;
    }

    public t72(Object obj, Ccase ccase) {
        this(obj, ccase, null);
    }

    public t72(Object obj, Ccase ccase, StringBuffer stringBuffer) {
        ccase = ccase == null ? l() : ccase;
        stringBuffer = stringBuffer == null ? new StringBuffer(512) : stringBuffer;
        this.f6436do = stringBuffer;
        this.f6437for = ccase;
        this.f6438if = obj;
        ccase.appendStart(stringBuffer, obj);
    }
}
