package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class ew {

    /* renamed from: catch, reason: not valid java name */
    private static final int f1594catch = 1;

    /* renamed from: class, reason: not valid java name */
    private static final int f1595class = 0;

    /* renamed from: const, reason: not valid java name */
    private static final int f1596const = 1;

    /* renamed from: final, reason: not valid java name */
    private static final int f1597final = 2;

    /* renamed from: super, reason: not valid java name */
    private static final int f1598super = 3;

    /* renamed from: throw, reason: not valid java name */
    private static final int f1599throw = 4;

    /* renamed from: break, reason: not valid java name */
    private y90 f1600break;

    /* renamed from: case, reason: not valid java name */
    private ug0 f1601case;

    /* renamed from: do, reason: not valid java name */
    private int f1602do;

    /* renamed from: else, reason: not valid java name */
    private fe1 f1603else;

    /* renamed from: for, reason: not valid java name */
    private dw f1604for;

    /* renamed from: goto, reason: not valid java name */
    private ug0 f1605goto;

    /* renamed from: if, reason: not valid java name */
    private final hx1 f1606if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f1607new;

    /* renamed from: this, reason: not valid java name */
    private ug0 f1608this;

    /* renamed from: try, reason: not valid java name */
    private gw f1609try;

    public ew(dw dwVar) {
        this.f1602do = 1;
        this.f1604for = dwVar;
        this.f1606if = dwVar.m1557const();
        this.f1602do = dwVar.m1558final();
        this.f1607new = dwVar.m1560this();
        this.f1609try = dwVar.m1555catch();
        this.f1603else = dwVar.m1553break();
        this.f1605goto = dwVar.m1559new();
        this.f1608this = dwVar.m1561try();
    }

    public ew(hx1 hx1Var) {
        this.f1602do = 1;
        this.f1606if = hx1Var;
    }

    /* renamed from: break, reason: not valid java name */
    public void m2044break(tg0 tg0Var) {
        m2046catch(new ug0(tg0Var));
    }

    /* renamed from: case, reason: not valid java name */
    public void m2045case(y90 y90Var) {
        if (this.f1604for != null) {
            throw new IllegalStateException("cannot change extensions in existing DVCSRequestInformation");
        }
        this.f1600break = y90Var;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m2046catch(ug0 ug0Var) {
        this.f1601case = ug0Var;
    }

    /* renamed from: class, reason: not valid java name */
    public void m2047class(int i) {
        if (this.f1604for != null) {
            throw new IllegalStateException("cannot change version in existing DVCSRequestInformation");
        }
        this.f1602do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public dw m2048do() {
        Cimport cimport = new Cimport();
        int i = this.f1602do;
        if (i != 1) {
            cimport.m3516do(new Cgoto(i));
        }
        cimport.m3516do(this.f1606if);
        BigInteger bigInteger = this.f1607new;
        if (bigInteger != null) {
            cimport.m3516do(new Cgoto(bigInteger));
        }
        gw gwVar = this.f1609try;
        if (gwVar != null) {
            cimport.m3516do(gwVar);
        }
        int[] iArr = {0, 1, 2, 3, 4};
        ASN1Encodable[] aSN1EncodableArr = {this.f1601case, this.f1603else, this.f1605goto, this.f1608this, this.f1600break};
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            ASN1Encodable aSN1Encodable = aSN1EncodableArr[i2];
            if (aSN1Encodable != null) {
                cimport.m3516do(new org.bouncycastle.asn1.u(false, i3, aSN1Encodable));
            }
        }
        return dw.m1551else(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: else, reason: not valid java name */
    public void m2049else(BigInteger bigInteger) {
        dw dwVar = this.f1604for;
        if (dwVar != null) {
            if (dwVar.m1560this() == null) {
                this.f1607new = bigInteger;
            } else {
                byte[] byteArray = this.f1604for.m1560this().toByteArray();
                byte[] bArrM36313if = Cdo.m36313if(bigInteger);
                byte[] bArr = new byte[byteArray.length + bArrM36313if.length];
                System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                System.arraycopy(bArrM36313if, 0, bArr, byteArray.length, bArrM36313if.length);
                this.f1607new = new BigInteger(bArr);
            }
        }
        this.f1607new = bigInteger;
    }

    /* renamed from: for, reason: not valid java name */
    public void m2050for(ug0 ug0Var) {
        this.f1605goto = ug0Var;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m2051goto(fe1 fe1Var) {
        if (this.f1604for != null) {
            throw new IllegalStateException("cannot change request policy in existing DVCSRequestInformation");
        }
        this.f1603else = fe1Var;
    }

    /* renamed from: if, reason: not valid java name */
    public void m2052if(tg0 tg0Var) {
        m2050for(new ug0(tg0Var));
    }

    /* renamed from: new, reason: not valid java name */
    public void m2053new(tg0 tg0Var) {
        m2055try(new ug0(tg0Var));
    }

    /* renamed from: this, reason: not valid java name */
    public void m2054this(gw gwVar) {
        if (this.f1604for != null) {
            throw new IllegalStateException("cannot change request time in existing DVCSRequestInformation");
        }
        this.f1609try = gwVar;
    }

    /* renamed from: try, reason: not valid java name */
    public void m2055try(ug0 ug0Var) {
        this.f1608this = ug0Var;
    }
}
