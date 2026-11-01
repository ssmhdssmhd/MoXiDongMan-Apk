package android.support.v4;

import java.util.List;

/* loaded from: classes2.dex */
public final class mx {

    /* renamed from: break, reason: not valid java name */
    private final int f4063break;

    /* renamed from: case, reason: not valid java name */
    private Integer f4064case;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f4065do;

    /* renamed from: else, reason: not valid java name */
    private Integer f4066else;

    /* renamed from: for, reason: not valid java name */
    private final String f4067for;

    /* renamed from: goto, reason: not valid java name */
    private Object f4068goto;

    /* renamed from: if, reason: not valid java name */
    private int f4069if;

    /* renamed from: new, reason: not valid java name */
    private final List<byte[]> f4070new;

    /* renamed from: this, reason: not valid java name */
    private final int f4071this;

    /* renamed from: try, reason: not valid java name */
    private final String f4072try;

    public mx(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    /* renamed from: break, reason: not valid java name */
    public String m5029break() {
        return this.f4067for;
    }

    /* renamed from: case, reason: not valid java name */
    public Object m5030case() {
        return this.f4068goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m5031catch() {
        return this.f4071this >= 0 && this.f4063break >= 0;
    }

    /* renamed from: class, reason: not valid java name */
    public void m5032class(Integer num) {
        this.f4066else = num;
    }

    /* renamed from: const, reason: not valid java name */
    public void m5033const(Integer num) {
        this.f4064case = num;
    }

    /* renamed from: do, reason: not valid java name */
    public List<byte[]> m5034do() {
        return this.f4070new;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m5035else() {
        return this.f4065do;
    }

    /* renamed from: final, reason: not valid java name */
    public void m5036final(int i) {
        this.f4069if = i;
    }

    /* renamed from: for, reason: not valid java name */
    public Integer m5037for() {
        return this.f4066else;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m5038goto() {
        return this.f4071this;
    }

    /* renamed from: if, reason: not valid java name */
    public String m5039if() {
        return this.f4072try;
    }

    /* renamed from: new, reason: not valid java name */
    public Integer m5040new() {
        return this.f4064case;
    }

    /* renamed from: super, reason: not valid java name */
    public void m5041super(Object obj) {
        this.f4068goto = obj;
    }

    /* renamed from: this, reason: not valid java name */
    public int m5042this() {
        return this.f4063break;
    }

    /* renamed from: try, reason: not valid java name */
    public int m5043try() {
        return this.f4069if;
    }

    public mx(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2) {
        this.f4065do = bArr;
        this.f4069if = bArr == null ? 0 : bArr.length * 8;
        this.f4067for = str;
        this.f4070new = list;
        this.f4072try = str2;
        this.f4071this = i2;
        this.f4063break = i;
    }
}
