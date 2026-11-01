package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class sq1 extends oc1 {

    /* renamed from: for, reason: not valid java name */
    private final String[] f6232for;

    /* renamed from: if, reason: not valid java name */
    private final String[] f6233if;

    /* renamed from: new, reason: not valid java name */
    private final String f6234new;

    /* renamed from: try, reason: not valid java name */
    private final String f6235try;

    public sq1(String str, String str2, String str3, String str4) {
        super(Celse.SMS);
        this.f6233if = new String[]{str};
        this.f6232for = new String[]{str2};
        this.f6234new = str3;
        this.f6235try = str4;
    }

    /* renamed from: case, reason: not valid java name */
    public String[] m7557case() {
        return this.f6233if;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(100);
        oc1.m5550new(this.f6233if, sb);
        oc1.m5549for(this.f6234new, sb);
        oc1.m5549for(this.f6235try, sb);
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public String m7558else() {
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        boolean z = true;
        for (int i = 0; i < this.f6233if.length; i++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(this.f6233if[i]);
            String[] strArr = this.f6232for;
            if (strArr != null && strArr[i] != null) {
                sb.append(";via=");
                sb.append(this.f6232for[i]);
            }
        }
        boolean z2 = this.f6235try != null;
        boolean z3 = this.f6234new != null;
        if (z2 || z3) {
            sb.append('?');
            if (z2) {
                sb.append("body=");
                sb.append(this.f6235try);
            }
            if (z3) {
                if (z2) {
                    sb.append(ca2.f679for);
                }
                sb.append("subject=");
                sb.append(this.f6234new);
            }
        }
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public String m7559goto() {
        return this.f6234new;
    }

    /* renamed from: this, reason: not valid java name */
    public String[] m7560this() {
        return this.f6232for;
    }

    /* renamed from: try, reason: not valid java name */
    public String m7561try() {
        return this.f6235try;
    }

    public sq1(String[] strArr, String[] strArr2, String str, String str2) {
        super(Celse.SMS);
        this.f6233if = strArr;
        this.f6232for = strArr2;
        this.f6234new = str;
        this.f6235try = str2;
    }
}
