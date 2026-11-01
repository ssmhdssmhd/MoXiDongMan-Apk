package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class r0 extends oc1 {

    /* renamed from: break, reason: not valid java name */
    private final String f5557break;

    /* renamed from: case, reason: not valid java name */
    private final String[] f5558case;

    /* renamed from: catch, reason: not valid java name */
    private final String[] f5559catch;

    /* renamed from: class, reason: not valid java name */
    private final String[] f5560class;

    /* renamed from: const, reason: not valid java name */
    private final String f5561const;

    /* renamed from: else, reason: not valid java name */
    private final String[] f5562else;

    /* renamed from: final, reason: not valid java name */
    private final String f5563final;

    /* renamed from: for, reason: not valid java name */
    private final String[] f5564for;

    /* renamed from: goto, reason: not valid java name */
    private final String[] f5565goto;

    /* renamed from: if, reason: not valid java name */
    private final String[] f5566if;

    /* renamed from: new, reason: not valid java name */
    private final String f5567new;

    /* renamed from: super, reason: not valid java name */
    private final String f5568super;

    /* renamed from: this, reason: not valid java name */
    private final String f5569this;

    /* renamed from: throw, reason: not valid java name */
    private final String[] f5570throw;

    /* renamed from: try, reason: not valid java name */
    private final String[] f5571try;

    /* renamed from: while, reason: not valid java name */
    private final String[] f5572while;

    public r0(String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String[] strArr7) {
        this(strArr, null, null, strArr2, strArr3, strArr4, strArr5, null, null, strArr6, strArr7, null, null, null, null, null);
    }

    /* renamed from: break, reason: not valid java name */
    public String[] m6703break() {
        return this.f5572while;
    }

    /* renamed from: case, reason: not valid java name */
    public String[] m6704case() {
        return this.f5559catch;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m6705catch() {
        return this.f5569this;
    }

    /* renamed from: class, reason: not valid java name */
    public String[] m6706class() {
        return this.f5566if;
    }

    /* renamed from: const, reason: not valid java name */
    public String[] m6707const() {
        return this.f5564for;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(100);
        oc1.m5550new(this.f5566if, sb);
        oc1.m5550new(this.f5564for, sb);
        oc1.m5549for(this.f5567new, sb);
        oc1.m5549for(this.f5568super, sb);
        oc1.m5549for(this.f5561const, sb);
        oc1.m5550new(this.f5559catch, sb);
        oc1.m5550new(this.f5571try, sb);
        oc1.m5550new(this.f5562else, sb);
        oc1.m5549for(this.f5569this, sb);
        oc1.m5550new(this.f5570throw, sb);
        oc1.m5549for(this.f5563final, sb);
        oc1.m5550new(this.f5572while, sb);
        oc1.m5549for(this.f5557break, sb);
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public String m6708else() {
        return this.f5563final;
    }

    /* renamed from: final, reason: not valid java name */
    public String m6709final() {
        return this.f5557break;
    }

    /* renamed from: goto, reason: not valid java name */
    public String[] m6710goto() {
        return this.f5565goto;
    }

    /* renamed from: import, reason: not valid java name */
    public String m6711import() {
        return this.f5567new;
    }

    /* renamed from: native, reason: not valid java name */
    public String m6712native() {
        return this.f5568super;
    }

    /* renamed from: public, reason: not valid java name */
    public String[] m6713public() {
        return this.f5570throw;
    }

    /* renamed from: super, reason: not valid java name */
    public String m6714super() {
        return this.f5561const;
    }

    /* renamed from: this, reason: not valid java name */
    public String[] m6715this() {
        return this.f5562else;
    }

    /* renamed from: throw, reason: not valid java name */
    public String[] m6716throw() {
        return this.f5571try;
    }

    /* renamed from: try, reason: not valid java name */
    public String[] m6717try() {
        return this.f5560class;
    }

    /* renamed from: while, reason: not valid java name */
    public String[] m6718while() {
        return this.f5558case;
    }

    public r0(String[] strArr, String[] strArr2, String str, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String str2, String str3, String[] strArr7, String[] strArr8, String str4, String str5, String str6, String[] strArr9, String[] strArr10) {
        super(Celse.ADDRESSBOOK);
        if (strArr3 != null && strArr4 != null && strArr3.length != strArr4.length) {
            throw new IllegalArgumentException("Phone numbers and types lengths differ");
        }
        if (strArr5 != null && strArr6 != null && strArr5.length != strArr6.length) {
            throw new IllegalArgumentException("Emails and types lengths differ");
        }
        if (strArr7 != null && strArr8 != null && strArr7.length != strArr8.length) {
            throw new IllegalArgumentException("Addresses and types lengths differ");
        }
        this.f5566if = strArr;
        this.f5564for = strArr2;
        this.f5567new = str;
        this.f5571try = strArr3;
        this.f5558case = strArr4;
        this.f5562else = strArr5;
        this.f5565goto = strArr6;
        this.f5569this = str2;
        this.f5557break = str3;
        this.f5559catch = strArr7;
        this.f5560class = strArr8;
        this.f5561const = str4;
        this.f5563final = str5;
        this.f5568super = str6;
        this.f5570throw = strArr9;
        this.f5572while = strArr10;
    }
}
