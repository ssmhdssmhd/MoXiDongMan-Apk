package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class xd2 extends oc1 {

    /* renamed from: break, reason: not valid java name */
    private final String f7880break;

    /* renamed from: case, reason: not valid java name */
    private final String f7881case;

    /* renamed from: else, reason: not valid java name */
    private final String f7882else;

    /* renamed from: for, reason: not valid java name */
    private final String f7883for;

    /* renamed from: goto, reason: not valid java name */
    private final int f7884goto;

    /* renamed from: if, reason: not valid java name */
    private final String f7885if;

    /* renamed from: new, reason: not valid java name */
    private final String f7886new;

    /* renamed from: this, reason: not valid java name */
    private final char f7887this;

    /* renamed from: try, reason: not valid java name */
    private final String f7888try;

    public xd2(String str, String str2, String str3, String str4, String str5, String str6, int i, char c, String str7) {
        super(Celse.VIN);
        this.f7885if = str;
        this.f7883for = str2;
        this.f7886new = str3;
        this.f7888try = str4;
        this.f7881case = str5;
        this.f7882else = str6;
        this.f7884goto = i;
        this.f7887this = c;
        this.f7880break = str7;
    }

    /* renamed from: break, reason: not valid java name */
    public String m9462break() {
        return this.f7882else;
    }

    /* renamed from: case, reason: not valid java name */
    public int m9463case() {
        return this.f7884goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m9464catch() {
        return this.f7886new;
    }

    /* renamed from: class, reason: not valid java name */
    public String m9465class() {
        return this.f7888try;
    }

    /* renamed from: const, reason: not valid java name */
    public String m9466const() {
        return this.f7883for;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(50);
        sb.append(this.f7883for);
        sb.append(' ');
        sb.append(this.f7886new);
        sb.append(' ');
        sb.append(this.f7888try);
        sb.append('\n');
        String str = this.f7881case;
        if (str != null) {
            sb.append(str);
            sb.append(' ');
        }
        sb.append(this.f7884goto);
        sb.append(' ');
        sb.append(this.f7887this);
        sb.append(' ');
        sb.append(this.f7880break);
        sb.append('\n');
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public char m9467else() {
        return this.f7887this;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m9468goto() {
        return this.f7880break;
    }

    /* renamed from: this, reason: not valid java name */
    public String m9469this() {
        return this.f7885if;
    }

    /* renamed from: try, reason: not valid java name */
    public String m9470try() {
        return this.f7881case;
    }
}
