package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class e52 extends oc1 {

    /* renamed from: for, reason: not valid java name */
    private final String f1258for;

    /* renamed from: if, reason: not valid java name */
    private final String f1259if;

    /* renamed from: new, reason: not valid java name */
    private final String f1260new;

    public e52(String str, String str2, String str3) {
        super(Celse.TEL);
        this.f1259if = str;
        this.f1258for = str2;
        this.f1260new = str3;
    }

    /* renamed from: case, reason: not valid java name */
    public String m1659case() {
        return this.f1258for;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(20);
        oc1.m5549for(this.f1259if, sb);
        oc1.m5549for(this.f1260new, sb);
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public String m1660else() {
        return this.f1260new;
    }

    /* renamed from: try, reason: not valid java name */
    public String m1661try() {
        return this.f1259if;
    }
}
