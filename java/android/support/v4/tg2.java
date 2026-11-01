package android.support.v4;

import java.util.Enumeration;
import java.util.Objects;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: classes3.dex */
public class tg2 extends Cbreak implements ASN1Choice {

    /* renamed from: try, reason: not valid java name */
    private static X500NameStyle f6519try = j6.b;

    /* renamed from: do, reason: not valid java name */
    private boolean f6520do;

    /* renamed from: for, reason: not valid java name */
    private X500NameStyle f6521for;

    /* renamed from: if, reason: not valid java name */
    private int f6522if;

    /* renamed from: new, reason: not valid java name */
    private oj1[] f6523new;

    public tg2(String str) {
        this(f6519try, str);
    }

    private tg2(Csuper csuper) {
        this(f6519try, csuper);
    }

    public tg2(X500NameStyle x500NameStyle, tg2 tg2Var) {
        this.f6523new = tg2Var.f6523new;
        this.f6521for = x500NameStyle;
    }

    public tg2(X500NameStyle x500NameStyle, String str) {
        this(x500NameStyle.fromString(str));
        this.f6521for = x500NameStyle;
    }

    private tg2(X500NameStyle x500NameStyle, Csuper csuper) {
        this.f6521for = x500NameStyle;
        this.f6523new = new oj1[csuper.size()];
        Enumeration enumerationMo33076super = csuper.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            this.f6523new[i] = oj1.m5671try(enumerationMo33076super.nextElement());
            i++;
        }
    }

    public tg2(X500NameStyle x500NameStyle, oj1[] oj1VarArr) {
        this.f6523new = m7886new(oj1VarArr);
        this.f6521for = x500NameStyle;
    }

    public tg2(oj1[] oj1VarArr) {
        this(f6519try, oj1VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static X500NameStyle m7882case() {
        return f6519try;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m7883class(X500NameStyle x500NameStyle) {
        Objects.requireNonNull(x500NameStyle, "cannot set style to null");
        f6519try = x500NameStyle;
    }

    /* renamed from: else, reason: not valid java name */
    public static tg2 m7884else(Object obj) {
        if (obj instanceof tg2) {
            return (tg2) obj;
        }
        if (obj != null) {
            return new tg2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static tg2 m7885goto(Cimport cimport, boolean z) {
        return m7884else(Csuper.m33130class(cimport, true));
    }

    /* renamed from: new, reason: not valid java name */
    private oj1[] m7886new(oj1[] oj1VarArr) {
        int length = oj1VarArr.length;
        oj1[] oj1VarArr2 = new oj1[length];
        System.arraycopy(oj1VarArr, 0, oj1VarArr2, 0, length);
        return oj1VarArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public static tg2 m7887this(X500NameStyle x500NameStyle, Object obj) {
        if (obj instanceof tg2) {
            return new tg2(x500NameStyle, (tg2) obj);
        }
        if (obj != null) {
            return new tg2(x500NameStyle, Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public oj1[] m7888break() {
        oj1[] oj1VarArr = this.f6523new;
        int length = oj1VarArr.length;
        oj1[] oj1VarArr2 = new oj1[length];
        System.arraycopy(oj1VarArr, 0, oj1VarArr2, 0, length);
        return oj1VarArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    public oj1[] m7889catch(Ccatch ccatch) {
        int i;
        oj1[] oj1VarArr = new oj1[this.f6523new.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            oj1[] oj1VarArr2 = this.f6523new;
            if (i2 == oj1VarArr2.length) {
                oj1[] oj1VarArr3 = new oj1[i3];
                System.arraycopy(oj1VarArr, 0, oj1VarArr3, 0, i3);
                return oj1VarArr3;
            }
            oj1 oj1Var = oj1VarArr2[i2];
            if (!oj1Var.m5673else()) {
                if (oj1Var.m5674new().m8232try().equals(ccatch)) {
                    i = i3 + 1;
                    oj1VarArr[i3] = oj1Var;
                    i3 = i;
                    break;
                    break;
                }
            } else {
                u4[] u4VarArrM5672case = oj1Var.m5672case();
                for (int i4 = 0; i4 != u4VarArrM5672case.length; i4++) {
                    if (u4VarArrM5672case[i4].m8232try().equals(ccatch)) {
                        i = i3 + 1;
                        oj1VarArr[i3] = oj1Var;
                        i3 = i;
                        break;
                    }
                }
            }
            i2++;
        }
    }

    @Override // org.bouncycastle.asn1.Cbreak
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tg2) && !(obj instanceof Csuper)) {
            return false;
        }
        if (toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive())) {
            return true;
        }
        try {
            return this.f6521for.areEqual(this, new tg2(Csuper.m33129catch(((ASN1Encodable) obj).toASN1Primitive())));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        if (this.f6520do) {
            return this.f6522if;
        }
        this.f6520do = true;
        int iCalculateHashCode = this.f6521for.calculateHashCode(this);
        this.f6522if = iCalculateHashCode;
        return iCalculateHashCode;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f6523new);
    }

    public String toString() {
        return this.f6521for.toString(this);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch[] m7890try() {
        int i = 0;
        int size = 0;
        while (true) {
            oj1[] oj1VarArr = this.f6523new;
            if (i == oj1VarArr.length) {
                break;
            }
            size += oj1VarArr[i].size();
            i++;
        }
        Ccatch[] ccatchArr = new Ccatch[size];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            oj1[] oj1VarArr2 = this.f6523new;
            if (i2 == oj1VarArr2.length) {
                return ccatchArr;
            }
            oj1 oj1Var = oj1VarArr2[i2];
            if (oj1Var.m5673else()) {
                u4[] u4VarArrM5672case = oj1Var.m5672case();
                int i4 = 0;
                while (i4 != u4VarArrM5672case.length) {
                    ccatchArr[i3] = u4VarArrM5672case[i4].m8232try();
                    i4++;
                    i3++;
                }
            } else if (oj1Var.size() != 0) {
                ccatchArr[i3] = oj1Var.m5674new().m8232try();
                i3++;
            }
            i2++;
        }
    }
}
