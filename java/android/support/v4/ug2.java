package android.support.v4;

import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: classes3.dex */
public class ug2 {

    /* renamed from: do, reason: not valid java name */
    private X500NameStyle f6884do;

    /* renamed from: if, reason: not valid java name */
    private Vector f6885if;

    public ug2() {
        this(j6.b);
    }

    public ug2(X500NameStyle x500NameStyle) {
        this.f6885if = new Vector();
        this.f6884do = x500NameStyle;
    }

    /* renamed from: case, reason: not valid java name */
    public ug2 m8442case(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f6885if.addElement(new oj1(ccatch, aSN1Encodable));
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public ug2 m8443do(u4[] u4VarArr) {
        this.f6885if.addElement(new oj1(u4VarArr));
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public tg2 m8444else() {
        int size = this.f6885if.size();
        oj1[] oj1VarArr = new oj1[size];
        for (int i = 0; i != size; i++) {
            oj1VarArr[i] = (oj1) this.f6885if.elementAt(i);
        }
        return new tg2(this.f6884do, oj1VarArr);
    }

    /* renamed from: for, reason: not valid java name */
    public ug2 m8445for(Ccatch[] ccatchArr, ASN1Encodable[] aSN1EncodableArr) {
        u4[] u4VarArr = new u4[ccatchArr.length];
        for (int i = 0; i != ccatchArr.length; i++) {
            u4VarArr[i] = new u4(ccatchArr[i], aSN1EncodableArr[i]);
        }
        return m8443do(u4VarArr);
    }

    /* renamed from: if, reason: not valid java name */
    public ug2 m8446if(Ccatch[] ccatchArr, String[] strArr) {
        int length = strArr.length;
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[length];
        for (int i = 0; i != length; i++) {
            aSN1EncodableArr[i] = this.f6884do.stringToValue(ccatchArr[i], strArr[i]);
        }
        return m8445for(ccatchArr, aSN1EncodableArr);
    }

    /* renamed from: new, reason: not valid java name */
    public ug2 m8447new(u4 u4Var) {
        this.f6885if.addElement(new oj1(u4Var));
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public ug2 m8448try(Ccatch ccatch, String str) {
        m8442case(ccatch, this.f6884do.stringToValue(ccatch, str));
        return this;
    }
}
