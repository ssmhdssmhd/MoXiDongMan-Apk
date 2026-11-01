package android.support.v4;

import androidx.core.net.MailTo;
import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class s60 extends oc1 {

    /* renamed from: case, reason: not valid java name */
    private final String f6016case;

    /* renamed from: for, reason: not valid java name */
    private final String[] f6017for;

    /* renamed from: if, reason: not valid java name */
    private final String[] f6018if;

    /* renamed from: new, reason: not valid java name */
    private final String[] f6019new;

    /* renamed from: try, reason: not valid java name */
    private final String f6020try;

    public s60(String str) {
        this(new String[]{str}, null, null, null, null);
    }

    /* renamed from: break, reason: not valid java name */
    public String m7266break() {
        return this.f6020try;
    }

    /* renamed from: case, reason: not valid java name */
    public String m7267case() {
        return this.f6016case;
    }

    /* renamed from: catch, reason: not valid java name */
    public String[] m7268catch() {
        return this.f6018if;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(30);
        oc1.m5550new(this.f6018if, sb);
        oc1.m5550new(this.f6017for, sb);
        oc1.m5550new(this.f6019new, sb);
        oc1.m5549for(this.f6020try, sb);
        oc1.m5549for(this.f6016case, sb);
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public String[] m7269else() {
        return this.f6017for;
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public String m7270goto() {
        String[] strArr = this.f6018if;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[0];
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public String m7271this() {
        return MailTo.MAILTO_SCHEME;
    }

    /* renamed from: try, reason: not valid java name */
    public String[] m7272try() {
        return this.f6019new;
    }

    public s60(String[] strArr, String[] strArr2, String[] strArr3, String str, String str2) {
        super(Celse.EMAIL_ADDRESS);
        this.f6018if = strArr;
        this.f6017for = strArr2;
        this.f6019new = strArr3;
        this.f6020try = str;
        this.f6016case = str2;
    }
}
