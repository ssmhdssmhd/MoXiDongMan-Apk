package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class zf2 extends oc1 {

    /* renamed from: case, reason: not valid java name */
    private final String f8531case;

    /* renamed from: else, reason: not valid java name */
    private final String f8532else;

    /* renamed from: for, reason: not valid java name */
    private final String f8533for;

    /* renamed from: goto, reason: not valid java name */
    private final String f8534goto;

    /* renamed from: if, reason: not valid java name */
    private final String f8535if;

    /* renamed from: new, reason: not valid java name */
    private final String f8536new;

    /* renamed from: this, reason: not valid java name */
    private final String f8537this;

    /* renamed from: try, reason: not valid java name */
    private final boolean f8538try;

    public zf2(String str, String str2, String str3) {
        this(str, str2, str3, false);
    }

    /* renamed from: break, reason: not valid java name */
    public String m10173break() {
        return this.f8537this;
    }

    /* renamed from: case, reason: not valid java name */
    public String m10174case() {
        return this.f8534goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m10175catch() {
        return this.f8535if;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m10176class() {
        return this.f8538try;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(80);
        oc1.m5549for(this.f8535if, sb);
        oc1.m5549for(this.f8533for, sb);
        oc1.m5549for(this.f8536new, sb);
        oc1.m5549for(Boolean.toString(this.f8538try), sb);
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public String m10177else() {
        return this.f8531case;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m10178goto() {
        return this.f8533for;
    }

    /* renamed from: this, reason: not valid java name */
    public String m10179this() {
        return this.f8536new;
    }

    /* renamed from: try, reason: not valid java name */
    public String m10180try() {
        return this.f8532else;
    }

    public zf2(String str, String str2, String str3, boolean z) {
        this(str, str2, str3, z, null, null, null, null);
    }

    public zf2(String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7) {
        super(Celse.WIFI);
        this.f8535if = str2;
        this.f8533for = str;
        this.f8536new = str3;
        this.f8538try = z;
        this.f8531case = str4;
        this.f8532else = str5;
        this.f8534goto = str6;
        this.f8537this = str7;
    }
}
