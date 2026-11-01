package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Celse;
import org.bouncycastle.pqc.crypto.xmss.Ctry;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.interface, reason: invalid class name */
/* loaded from: classes3.dex */
class Cinterface {
    /* renamed from: do, reason: not valid java name */
    public static Cdefault m35907do(Cthis cthis, int i, byte[] bArr, Cabstract cabstract, Cgoto cgoto, int i2) {
        Ctry.Cif cif;
        if (bArr.length != cthis.m36042try().m35845if()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cabstract, "signature == null");
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        Celse celse = (Celse) new Celse.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35872final(cgoto.m35888goto()).mo35875try();
        Ctry ctry = (Ctry) new Ctry.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m36063final(cgoto.m35888goto()).mo35875try();
        Cdefault[] cdefaultArr = new Cdefault[2];
        cdefaultArr[0] = Cextends.m35876do(cthis, cthis.m36039goto(bArr, cabstract.m35824for(), cgoto), celse);
        for (int i3 = 0; i3 < i; i3++) {
            Ctry ctry2 = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36062const(i3).m36063final(ctry.m36058goto()).m36051else(ctry.m36043do()).mo35875try();
            if (Math.floor(i2 / (1 << i3)) % 2.0d == 0.0d) {
                cif = new Ctry.Cif();
                ctry = (Ctry) cif.m36052goto(ctry2.m36045if()).m36053this(ctry2.m36044for()).m36062const(ctry2.m36057else()).m36063final(ctry2.m36058goto() / 2).m36051else(ctry2.m36043do()).mo35875try();
                cdefaultArr[1] = Cextends.m35877if(cthis, cdefaultArr[0], cabstract.m35823do().get(i3), ctry);
                cdefaultArr[1] = new Cdefault(cdefaultArr[1].getHeight() + 1, cdefaultArr[1].getValue());
            } else {
                cif = new Ctry.Cif();
                ctry = (Ctry) cif.m36052goto(ctry2.m36045if()).m36053this(ctry2.m36044for()).m36062const(ctry2.m36057else()).m36063final((ctry2.m36058goto() - 1) / 2).m36051else(ctry2.m36043do()).mo35875try();
                cdefaultArr[1] = Cextends.m35877if(cthis, cabstract.m35823do().get(i3), cdefaultArr[0], ctry);
                cdefaultArr[1] = new Cdefault(cdefaultArr[1].getHeight() + 1, cdefaultArr[1].getValue());
            }
            cdefaultArr[0] = cdefaultArr[1];
        }
        return cdefaultArr[0];
    }
}
