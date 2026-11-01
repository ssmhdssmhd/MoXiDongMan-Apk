package org.bouncycastle.pqc.crypto.util;

import android.support.v4.a4;
import android.support.v4.ar1;
import android.support.v4.b1;
import android.support.v4.gi2;
import android.support.v4.ib1;
import android.support.v4.ji2;
import android.support.v4.li2;
import android.support.v4.oi2;
import android.support.v4.pi1;
import android.support.v4.r11;
import android.support.v4.yq1;
import java.io.IOException;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.crypto.xmss.Cvolatile;

/* renamed from: org.bouncycastle.pqc.crypto.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {
    private Cif() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m35812do(a4 a4Var) throws IOException {
        return m35814if(a4Var, null);
    }

    /* renamed from: for, reason: not valid java name */
    private static oi2 m35813for(Cpackage cpackage) {
        byte[] byteArray = cpackage.toByteArray();
        int iM35882for = cpackage.m35915case().m35882for();
        int iM35884new = cpackage.m35915case().m35884new();
        int iM36074if = (int) Cvolatile.m36074if(byteArray, 0, 4);
        if (!Cvolatile.m36071final(iM35884new, iM36074if)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] bArrM36080this = Cvolatile.m36080this(byteArray, 4, iM35882for);
        int i = 4 + iM35882for;
        byte[] bArrM36080this2 = Cvolatile.m36080this(byteArray, i, iM35882for);
        int i2 = i + iM35882for;
        byte[] bArrM36080this3 = Cvolatile.m36080this(byteArray, i2, iM35882for);
        int i3 = i2 + iM35882for;
        byte[] bArrM36080this4 = Cvolatile.m36080this(byteArray, i3, iM35882for);
        int i4 = i3 + iM35882for;
        return new oi2(iM36074if, bArrM36080this, bArrM36080this2, bArrM36080this3, bArrM36080this4, Cvolatile.m36080this(byteArray, i4, byteArray.length - i4));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m35814if(a4 a4Var, Cthrow cthrow) throws IOException {
        if (a4Var instanceof pi1) {
            pi1 pi1Var = (pi1) a4Var;
            return new Cdo(Ctry.m35820if(pi1Var.m6080for()), new j(pi1Var.m6081if()), cthrow);
        }
        if (a4Var instanceof ar1) {
            ar1 ar1Var = (ar1) a4Var;
            return new Cdo(new b1(PQCObjectIdentifiers.sphincs256, new yq1(Ctry.m35821new(ar1Var.m10264if()))), new j(ar1Var.m317for()));
        }
        if (!(a4Var instanceof r11)) {
            if (a4Var instanceof Cpackage) {
                Cpackage cpackage = (Cpackage) a4Var;
                return new Cdo(new b1(PQCObjectIdentifiers.xmss, new gi2(cpackage.m35915case().m35884new(), Ctry.m35817case(cpackage.m2303if()))), m35813for(cpackage));
            }
            if (!(a4Var instanceof Creturn)) {
                throw new IOException("key parameters not recognized");
            }
            Creturn creturn = (Creturn) a4Var;
            return new Cdo(new b1(PQCObjectIdentifiers.xmss_mt, new ji2(creturn.m35961case().m35955for(), creturn.m35961case().m35958new(), Ctry.m35817case(creturn.m3470if()))), m35815new(creturn));
        }
        b1 b1Var = new b1(PQCObjectIdentifiers.newHope);
        short[] sArrM6732if = ((r11) a4Var).m6732if();
        byte[] bArr = new byte[sArrM6732if.length * 2];
        for (int i = 0; i != sArrM6732if.length; i++) {
            ib1.m3352continue(sArrM6732if[i], bArr, i * 2);
        }
        return new Cdo(b1Var, new j(bArr));
    }

    /* renamed from: new, reason: not valid java name */
    private static li2 m35815new(Creturn creturn) {
        byte[] byteArray = creturn.toByteArray();
        int iM35957if = creturn.m35961case().m35957if();
        int iM35955for = creturn.m35961case().m35955for();
        int i = (iM35955for + 7) / 8;
        int iM36074if = (int) Cvolatile.m36074if(byteArray, 0, i);
        if (!Cvolatile.m36071final(iM35955for, iM36074if)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        int i2 = i + 0;
        byte[] bArrM36080this = Cvolatile.m36080this(byteArray, i2, iM35957if);
        int i3 = i2 + iM35957if;
        byte[] bArrM36080this2 = Cvolatile.m36080this(byteArray, i3, iM35957if);
        int i4 = i3 + iM35957if;
        byte[] bArrM36080this3 = Cvolatile.m36080this(byteArray, i4, iM35957if);
        int i5 = i4 + iM35957if;
        byte[] bArrM36080this4 = Cvolatile.m36080this(byteArray, i5, iM35957if);
        int i6 = i5 + iM35957if;
        return new li2(iM36074if, bArrM36080this, bArrM36080this2, bArrM36080this3, bArrM36080this4, Cvolatile.m36080this(byteArray, i6, byteArray.length - i6));
    }
}
