package android.support.v4;

import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@gf2(markerClass = {Cbreak.class})
@up0
@iz1(version = "1.5")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00014B\u0014\b\u0001\u0012\u0006\u0010T\u001a\u000208ø\u0001\u0000¢\u0006\u0004\bU\u0010/J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\n\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0087\nø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0005J\u001b\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\bJ\u001b\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u000bJ\u001b\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0005J\u001b\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\bJ\u001b\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u000bJ\u001b\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0013J\u001b\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0005J\u001b\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\bJ\u001b\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u000bJ\u001b\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0013J\u001b\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0005J\u001b\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\bJ\u001b\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u000bJ\u001b\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0013J\u001b\u0010 \u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b \u0010\u0005J\u001b\u0010!\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\nø\u0001\u0000¢\u0006\u0004\b!\u0010\bJ\u001b\u0010\"\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\nø\u0001\u0000¢\u0006\u0004\b\"\u0010\u000bJ\u001b\u0010#\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\nø\u0001\u0000¢\u0006\u0004\b#\u0010\u0013J\u001b\u0010$\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b$\u0010\u0005J\u001b\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010\bJ\u001b\u0010&\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\bø\u0001\u0000¢\u0006\u0004\b&\u0010\u000bJ\u001b\u0010'\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010\u0013J\u001b\u0010(\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010)J\u001b\u0010*\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u001b\u0010,\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\bø\u0001\u0000¢\u0006\u0004\b,\u0010\u000bJ\u001b\u0010-\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\u0013J\u0016\u0010.\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/J\u0016\u00100\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u0010/J\u001b\u00102\u001a\u0002012\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b2\u00103J\u001b\u00104\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b4\u0010)J\u001b\u00105\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b5\u0010)J\u001b\u00106\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b6\u0010)J\u0016\u00107\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u0010/J\u0010\u00109\u001a\u000208H\u0087\b¢\u0006\u0004\b9\u0010/J\u0010\u0010;\u001a\u00020:H\u0087\b¢\u0006\u0004\b;\u0010<J\u0010\u0010=\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\b=\u0010>J\u0010\u0010@\u001a\u00020?H\u0087\b¢\u0006\u0004\b@\u0010AJ\u0016\u0010B\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bB\u0010/J\u0016\u0010C\u001a\u00020\u0006H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010<J\u0016\u0010D\u001a\u00020\tH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bD\u0010>J\u0016\u0010E\u001a\u00020\fH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u0010AJ\u0010\u0010G\u001a\u00020FH\u0087\b¢\u0006\u0004\bG\u0010HJ\u0010\u0010J\u001a\u00020IH\u0087\b¢\u0006\u0004\bJ\u0010KJ\u000f\u0010M\u001a\u00020LH\u0016¢\u0006\u0004\bM\u0010NJ\u0010\u0010O\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\bO\u0010>J\u001a\u0010R\u001a\u00020Q2\b\u0010\u0002\u001a\u0004\u0018\u00010PHÖ\u0003¢\u0006\u0004\bR\u0010Sø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006V"}, d2 = {"Landroid/support/v4/ea2;", "", "other", "", "new", "(BB)I", "Landroid/support/v4/ab2;", "else", "(BS)I", "Landroid/support/v4/ja2;", "case", "(BI)I", "Landroid/support/v4/oa2;", "try", "(BJ)I", "volatile", "transient", "protected", "interface", "(BJ)J", "throws", "finally", "extends", "default", "c", "f", "e", "d", "break", "const", "class", "catch", "instanceof", "b", com.umeng.analytics.pro.ak.av, "synchronized", "throw", "native", "import", "while", "package", "(BB)B", "continue", "(BS)S", "abstract", "private", "static", "(B)B", "this", "Landroid/support/v4/na2;", "implements", "(BB)Landroid/support/v4/na2;", "do", "strictfp", com.umeng.analytics.pro.ak.aB, "switch", "", "g", "", "l", "(B)S", "j", "(B)I", "", "k", "(B)J", "n", "q", "o", com.umeng.analytics.pro.ak.ax, "", com.umeng.analytics.pro.ak.aC, "(B)F", "", "h", "(B)D", "", "m", "(B)Ljava/lang/String;", "return", "", "", "final", "(BLjava/lang/Object;)Z", "data", "goto", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ea2 implements Comparable<ea2> {

    /* renamed from: case, reason: not valid java name */
    @m41
    public static final Cdo f1335case = new Cdo(null);

    /* renamed from: for, reason: not valid java name */
    public static final byte f1336for = -1;

    /* renamed from: if, reason: not valid java name */
    public static final byte f1337if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f1338new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f1339try = 8;

    /* renamed from: do, reason: not valid java name */
    private final byte f1340do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\f"}, d2 = {"android/support/v4/ea2$do", "", "Landroid/support/v4/ea2;", "MAX_VALUE", "B", "MIN_VALUE", "", "SIZE_BITS", OptRuntime.GeneratorState.resumptionPoint_TYPE, "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.ea2$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    @wg1
    private /* synthetic */ ea2(byte b) {
        this.f1340do = b;
    }

    @um0
    private static final int a(byte b, int i) {
        return oc2.m5563try(ja2.m3772goto(b & 255), i);
    }

    @um0
    /* renamed from: abstract, reason: not valid java name */
    private static final int m1715abstract(byte b, int i) {
        return oc2.m5563try(ja2.m3772goto(b & 255), i);
    }

    @um0
    private static final int b(byte b, short s) {
        return oc2.m5563try(ja2.m3772goto(b & 255), ja2.m3772goto(s & ab2.f80for));
    }

    @um0
    /* renamed from: break, reason: not valid java name */
    private static final int m1716break(byte b, byte b2) {
        return oc2.m5561new(ja2.m3772goto(b & 255), ja2.m3772goto(b2 & 255));
    }

    @um0
    private static final int c(byte b, byte b2) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) * ja2.m3772goto(b2 & 255));
    }

    @um0
    /* renamed from: case, reason: not valid java name */
    private static final int m1717case(byte b, int i) {
        return oc2.m5558for(ja2.m3772goto(b & 255), i);
    }

    @um0
    /* renamed from: catch, reason: not valid java name */
    private static final long m1718catch(byte b, long j) {
        return oc2.m5559goto(oa2.m5524goto(b & 255), j);
    }

    @um0
    /* renamed from: class, reason: not valid java name */
    private static final int m1719class(byte b, int i) {
        return oc2.m5561new(ja2.m3772goto(b & 255), i);
    }

    @um0
    /* renamed from: const, reason: not valid java name */
    private static final int m1720const(byte b, short s) {
        return oc2.m5561new(ja2.m3772goto(b & 255), ja2.m3772goto(s & ab2.f80for));
    }

    @um0
    /* renamed from: continue, reason: not valid java name */
    private static final short m1721continue(byte b, short s) {
        return ab2.m140goto((short) oc2.m5563try(ja2.m3772goto(b & 255), ja2.m3772goto(s & ab2.f80for)));
    }

    @um0
    private static final long d(byte b, long j) {
        return oa2.m5524goto(oa2.m5524goto(b & 255) * j);
    }

    @um0
    /* renamed from: default, reason: not valid java name */
    private static final long m1722default(byte b, long j) {
        return oa2.m5524goto(oa2.m5524goto(b & 255) - j);
    }

    @um0
    /* renamed from: do, reason: not valid java name */
    private static final byte m1723do(byte b, byte b2) {
        return m1729goto((byte) (b & b2));
    }

    @um0
    private static final int e(byte b, int i) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) * i);
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final int m1724else(byte b, short s) {
        return Csuper.m30692public(b & 255, s & ab2.f80for);
    }

    @um0
    /* renamed from: extends, reason: not valid java name */
    private static final int m1725extends(byte b, int i) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) - i);
    }

    @um0
    private static final int f(byte b, short s) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) * ja2.m3772goto(s & ab2.f80for));
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m1726final(byte b, Object obj) {
        return (obj instanceof ea2) && b == ((ea2) obj).r();
    }

    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final int m1727finally(byte b, short s) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) - ja2.m3772goto(s & ab2.f80for));
    }

    @um0
    /* renamed from: for, reason: not valid java name */
    private int m1728for(byte b) {
        return m1736new(this.f1340do, b);
    }

    @um0
    private static final byte g(byte b) {
        return b;
    }

    @wg1
    /* renamed from: goto, reason: not valid java name */
    public static byte m1729goto(byte b) {
        return b;
    }

    @um0
    private static final double h(byte b) {
        return b & 255;
    }

    @um0
    private static final float i(byte b) {
        return b & 255;
    }

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ ea2 m1730if(byte b) {
        return new ea2(b);
    }

    @um0
    /* renamed from: implements, reason: not valid java name */
    private static final na2 m1731implements(byte b, byte b2) {
        return new na2(ja2.m3772goto(b & 255), ja2.m3772goto(b2 & 255), null);
    }

    @um0
    /* renamed from: import, reason: not valid java name */
    private static final int m1732import(byte b, int i) {
        return oc2.m5561new(ja2.m3772goto(b & 255), i);
    }

    @um0
    /* renamed from: instanceof, reason: not valid java name */
    private static final int m1733instanceof(byte b, byte b2) {
        return oc2.m5563try(ja2.m3772goto(b & 255), ja2.m3772goto(b2 & 255));
    }

    @um0
    /* renamed from: interface, reason: not valid java name */
    private static final long m1734interface(byte b, long j) {
        return oa2.m5524goto(oa2.m5524goto(b & 255) + j);
    }

    @um0
    private static final int j(byte b) {
        return b & 255;
    }

    @um0
    private static final long k(byte b) {
        return b & 255;
    }

    @um0
    private static final short l(byte b) {
        return (short) (b & 255);
    }

    @m41
    public static String m(byte b) {
        return String.valueOf(b & 255);
    }

    @um0
    private static final byte n(byte b) {
        return b;
    }

    @um0
    /* renamed from: native, reason: not valid java name */
    private static final int m1735native(byte b, short s) {
        return oc2.m5561new(ja2.m3772goto(b & 255), ja2.m3772goto(s & ab2.f80for));
    }

    @um0
    /* renamed from: new, reason: not valid java name */
    private static int m1736new(byte b, byte b2) {
        return Csuper.m30692public(b & 255, b2 & 255);
    }

    @um0
    private static final int o(byte b) {
        return ja2.m3772goto(b & 255);
    }

    @um0
    private static final long p(byte b) {
        return oa2.m5524goto(b & 255);
    }

    @um0
    /* renamed from: package, reason: not valid java name */
    private static final byte m1737package(byte b, byte b2) {
        return m1729goto((byte) oc2.m5563try(ja2.m3772goto(b & 255), ja2.m3772goto(b2 & 255)));
    }

    @um0
    /* renamed from: private, reason: not valid java name */
    private static final long m1738private(byte b, long j) {
        return oc2.m5562this(oa2.m5524goto(b & 255), j);
    }

    @um0
    /* renamed from: protected, reason: not valid java name */
    private static final int m1739protected(byte b, int i) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) + i);
    }

    @wg1
    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ void m1740public() {
    }

    @um0
    private static final short q(byte b) {
        return ab2.m140goto((short) (b & 255));
    }

    /* renamed from: return, reason: not valid java name */
    public static int m1741return(byte b) {
        return b;
    }

    @um0
    private static final byte s(byte b, byte b2) {
        return m1729goto((byte) (b ^ b2));
    }

    @um0
    /* renamed from: static, reason: not valid java name */
    private static final byte m1742static(byte b) {
        return m1729goto((byte) (b + 1));
    }

    @um0
    /* renamed from: strictfp, reason: not valid java name */
    private static final byte m1743strictfp(byte b, byte b2) {
        return m1729goto((byte) (b | b2));
    }

    /* renamed from: super, reason: not valid java name */
    public static final boolean m1744super(byte b, byte b2) {
        return b == b2;
    }

    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final byte m1745switch(byte b) {
        return m1729goto((byte) (b ^ (-1)));
    }

    @um0
    /* renamed from: synchronized, reason: not valid java name */
    private static final long m1746synchronized(byte b, long j) {
        return oc2.m5562this(oa2.m5524goto(b & 255), j);
    }

    @um0
    /* renamed from: this, reason: not valid java name */
    private static final byte m1747this(byte b) {
        return m1729goto((byte) (b - 1));
    }

    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final int m1748throw(byte b, byte b2) {
        return oc2.m5561new(ja2.m3772goto(b & 255), ja2.m3772goto(b2 & 255));
    }

    @um0
    /* renamed from: throws, reason: not valid java name */
    private static final int m1749throws(byte b, byte b2) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) - ja2.m3772goto(b2 & 255));
    }

    @um0
    /* renamed from: transient, reason: not valid java name */
    private static final int m1750transient(byte b, short s) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) + ja2.m3772goto(s & ab2.f80for));
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final int m1751try(byte b, long j) {
        return oc2.m5557else(oa2.m5524goto(b & 255), j);
    }

    @um0
    /* renamed from: volatile, reason: not valid java name */
    private static final int m1752volatile(byte b, byte b2) {
        return ja2.m3772goto(ja2.m3772goto(b & 255) + ja2.m3772goto(b2 & 255));
    }

    @um0
    /* renamed from: while, reason: not valid java name */
    private static final long m1753while(byte b, long j) {
        return oc2.m5559goto(oa2.m5524goto(b & 255), j);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ea2 ea2Var) {
        return m1728for(ea2Var.r());
    }

    public boolean equals(Object obj) {
        return m1726final(this.f1340do, obj);
    }

    public int hashCode() {
        return m1741return(this.f1340do);
    }

    public final /* synthetic */ byte r() {
        return this.f1340do;
    }

    @m41
    public String toString() {
        return m(this.f1340do);
    }
}
