package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Celse;
import org.bouncycastle.pqc.crypto.xmss.Ctry;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.extends, reason: invalid class name */
/* loaded from: classes3.dex */
class Cextends {
    /* renamed from: do, reason: not valid java name */
    public static Cdefault m35876do(Cthis cthis, Cconst cconst, Celse celse) {
        double d;
        Objects.requireNonNull(cconst, "publicKey == null");
        Objects.requireNonNull(celse, "address == null");
        int iM35844for = cthis.m36042try().m35844for();
        byte[][] bArrM35849do = cconst.m35849do();
        Cdefault[] cdefaultArr = new Cdefault[bArrM35849do.length];
        for (int i = 0; i < bArrM35849do.length; i++) {
            cdefaultArr[i] = new Cdefault(0, bArrM35849do[i]);
        }
        Celse.Cif cifM36051else = new Celse.Cif().m36052goto(celse.m36045if()).m36053this(celse.m36044for()).m35872final(celse.m35863case()).m35873super(0).m35874throw(celse.m35865goto()).m36051else(celse.m36043do());
        while (true) {
            Celse celse2 = (Celse) cifM36051else.mo35875try();
            if (iM35844for <= 1) {
                return cdefaultArr[0];
            }
            int i2 = 0;
            while (true) {
                d = iM35844for / 2;
                if (i2 >= ((int) Math.floor(d))) {
                    break;
                }
                celse2 = (Celse) new Celse.Cif().m36052goto(celse2.m36045if()).m36053this(celse2.m36044for()).m35872final(celse2.m35863case()).m35873super(celse2.m35864else()).m35874throw(i2).m36051else(celse2.m36043do()).mo35875try();
                int i3 = i2 * 2;
                cdefaultArr[i2] = m35877if(cthis, cdefaultArr[i3], cdefaultArr[i3 + 1], celse2);
                i2++;
            }
            if (iM35844for % 2 == 1) {
                cdefaultArr[(int) Math.floor(d)] = cdefaultArr[iM35844for - 1];
            }
            double d2 = iM35844for;
            Double.isNaN(d2);
            iM35844for = (int) Math.ceil(d2 / 2.0d);
            cifM36051else = new Celse.Cif().m36052goto(celse2.m36045if()).m36053this(celse2.m36044for()).m35872final(celse2.m35863case()).m35873super(celse2.m35864else() + 1).m35874throw(celse2.m35865goto()).m36051else(celse2.m36043do());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdefault m35877if(Cthis cthis, Cdefault cdefault, Cdefault cdefault2, Cthrow cthrow) {
        Objects.requireNonNull(cdefault, "left == null");
        Objects.requireNonNull(cdefault2, "right == null");
        if (cdefault.getHeight() != cdefault2.getHeight()) {
            throw new IllegalStateException("height of both nodes must be equal");
        }
        Objects.requireNonNull(cthrow, "address == null");
        byte[] bArrM36041this = cthis.m36041this();
        if (cthrow instanceof Celse) {
            Celse celse = (Celse) cthrow;
            cthrow = (Celse) new Celse.Cif().m36052goto(celse.m36045if()).m36053this(celse.m36044for()).m35872final(celse.m35863case()).m35873super(celse.m35864else()).m35874throw(celse.m35865goto()).m36051else(0).mo35875try();
        } else if (cthrow instanceof Ctry) {
            Ctry ctry = (Ctry) cthrow;
            cthrow = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36062const(ctry.m36057else()).m36063final(ctry.m36058goto()).m36051else(0).mo35875try();
        }
        byte[] bArrM35840new = cthis.m36040new().m35840new(bArrM36041this, cthrow.mo35866try());
        if (cthrow instanceof Celse) {
            Celse celse2 = (Celse) cthrow;
            cthrow = (Celse) new Celse.Cif().m36052goto(celse2.m36045if()).m36053this(celse2.m36044for()).m35872final(celse2.m35863case()).m35873super(celse2.m35864else()).m35874throw(celse2.m35865goto()).m36051else(1).mo35875try();
        } else if (cthrow instanceof Ctry) {
            Ctry ctry2 = (Ctry) cthrow;
            cthrow = (Ctry) new Ctry.Cif().m36052goto(ctry2.m36045if()).m36053this(ctry2.m36044for()).m36062const(ctry2.m36057else()).m36063final(ctry2.m36058goto()).m36051else(1).mo35875try();
        }
        byte[] bArrM35840new2 = cthis.m36040new().m35840new(bArrM36041this, cthrow.mo35866try());
        if (cthrow instanceof Celse) {
            Celse celse3 = (Celse) cthrow;
            cthrow = (Celse) new Celse.Cif().m36052goto(celse3.m36045if()).m36053this(celse3.m36044for()).m35872final(celse3.m35863case()).m35873super(celse3.m35864else()).m35874throw(celse3.m35865goto()).m36051else(2).mo35875try();
        } else if (cthrow instanceof Ctry) {
            Ctry ctry3 = (Ctry) cthrow;
            cthrow = (Ctry) new Ctry.Cif().m36052goto(ctry3.m36045if()).m36053this(ctry3.m36044for()).m36062const(ctry3.m36057else()).m36063final(ctry3.m36058goto()).m36051else(2).mo35875try();
        }
        byte[] bArrM35840new3 = cthis.m36040new().m35840new(bArrM36041this, cthrow.mo35866try());
        int iM35845if = cthis.m36042try().m35845if();
        byte[] bArr = new byte[iM35845if * 2];
        for (int i = 0; i < iM35845if; i++) {
            bArr[i] = (byte) (cdefault.getValue()[i] ^ bArrM35840new2[i]);
        }
        for (int i2 = 0; i2 < iM35845if; i2++) {
            bArr[i2 + iM35845if] = (byte) (cdefault2.getValue()[i2] ^ bArrM35840new3[i2]);
        }
        return new Cdefault(cdefault.getHeight(), cthis.m36040new().m35839if(bArrM35840new, bArr));
    }
}
