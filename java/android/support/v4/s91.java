package android.support.v4;

/* loaded from: classes3.dex */
public class s91 {

    /* renamed from: do, reason: not valid java name */
    public byte[] f6049do;

    /* renamed from: for, reason: not valid java name */
    public String f6050for;

    /* renamed from: if, reason: not valid java name */
    public int f6051if;

    /* renamed from: new, reason: not valid java name */
    public String f6052new;

    /* renamed from: try, reason: not valid java name */
    public byte[] f6053try;

    public s91() {
        this.f6050for = null;
        this.f6052new = "UTF-8";
        this.f6049do = null;
        this.f6051if = 1000;
        this.f6053try = null;
    }

    /* renamed from: break, reason: not valid java name */
    public void m7308break(byte[] bArr) {
        this.f6049do = bArr;
    }

    /* renamed from: case, reason: not valid java name */
    public void m7309case(byte[] bArr) {
        this.f6053try = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m7310do() {
        return this.f6053try;
    }

    /* renamed from: else, reason: not valid java name */
    public void m7311else(String str) {
        this.f6050for = str;
    }

    /* renamed from: for, reason: not valid java name */
    public String m7312for() {
        return this.f6052new;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m7313goto(String str) {
        this.f6052new = str;
    }

    /* renamed from: if, reason: not valid java name */
    public String m7314if() {
        return this.f6050for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m7315new() {
        return this.f6051if;
    }

    /* renamed from: this, reason: not valid java name */
    public void m7316this(int i) {
        this.f6051if = i;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m7317try() {
        return this.f6049do;
    }

    public s91(String str, String str2, byte[] bArr, int i) {
        this(str, str2, bArr, i, null);
    }

    public s91(String str, String str2, byte[] bArr, int i, byte[] bArr2) {
        this.f6050for = str;
        this.f6052new = str2;
        this.f6049do = bArr;
        this.f6051if = i;
        this.f6053try = bArr2;
    }
}
