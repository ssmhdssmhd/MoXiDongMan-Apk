package org.bouncycastle.crypto.util;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.b50;
import android.support.v4.cg0;
import android.support.v4.ck1;
import android.support.v4.dk1;
import android.support.v4.e40;
import android.support.v4.ek1;
import android.support.v4.fv;
import android.support.v4.g50;
import android.support.v4.h50;
import android.support.v4.hv;
import android.support.v4.jv;
import android.support.v4.l40;
import android.support.v4.rh2;
import android.support.v4.th2;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.Celse;
import org.bouncycastle.crypto.params.Cif;
import org.bouncycastle.crypto.params.Cnew;
import org.bouncycastle.crypto.params.Cthis;

/* renamed from: org.bouncycastle.crypto.util.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass {

    /* renamed from: do, reason: not valid java name */
    private static Set f30873do;

    static {
        HashSet hashSet = new HashSet(5);
        f30873do = hashSet;
        hashSet.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_A);
        f30873do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_B);
        f30873do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_C);
        f30873do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchA);
        f30873do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchB);
    }

    private Cclass() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m34470do(a4 a4Var) throws IOException {
        return m34472if(a4Var, null);
    }

    /* renamed from: for, reason: not valid java name */
    private static void m34471for(byte[] bArr, int i, int i2, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(byteArray, 0, bArr2, i - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i3 = 0; i3 != i; i3++) {
            bArr[i2 + i3] = byteArray[(byteArray.length - 1) - i3];
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m34472if(a4 a4Var, Cthrow cthrow) throws IOException {
        int iBitLength;
        rh2 rh2Var;
        BigInteger bigIntegerM1650try;
        Ccatch ccatch;
        if (a4Var instanceof ck1) {
            dk1 dk1Var = (dk1) a4Var;
            return new Cdo(new b1(PKCSObjectIdentifiers.rsaEncryption, h.f29080do), new ek1(dk1Var.m954for(), dk1Var.m1385goto(), dk1Var.m955if(), dk1Var.m1384else(), dk1Var.m1386this(), dk1Var.m1387try(), dk1Var.m1383case(), dk1Var.m1382break()), cthrow);
        }
        if (a4Var instanceof jv) {
            jv jvVar = (jv) a4Var;
            hv hvVarM2025if = jvVar.m2025if();
            return new Cdo(new b1(X9ObjectIdentifiers.id_dsa, new fv(hvVarM2025if.m3129if(), hvVarM2025if.m3128for(), hvVarM2025if.m3127do())), new Cgoto(jvVar.m4110for()), cthrow);
        }
        if (!(a4Var instanceof h50)) {
            if (a4Var instanceof Cthis) {
                Cthis cthis = (Cthis) a4Var;
                return new Cdo(new b1(EdECObjectIdentifiers.id_X448), new j(cthis.m33860try()), cthrow, cthis.m33857for().m33802for());
            }
            if (a4Var instanceof Celse) {
                Celse celse = (Celse) a4Var;
                return new Cdo(new b1(EdECObjectIdentifiers.id_X25519), new j(celse.m33844try()), cthrow, celse.m33841for().m33847for());
            }
            if (a4Var instanceof Cnew) {
                Cnew cnew = (Cnew) a4Var;
                return new Cdo(new b1(EdECObjectIdentifiers.id_Ed448), new j(cnew.m33855new()), cthrow, cnew.m33853for().m33861for());
            }
            if (!(a4Var instanceof Cif)) {
                throw new IOException("key parameters not recognized");
            }
            Cif cif = (Cif) a4Var;
            return new Cdo(new b1(EdECObjectIdentifiers.id_Ed25519), new j(cif.m33851new()), cthrow, cif.m33849for().m33845for());
        }
        h50 h50Var = (h50) a4Var;
        e40 e40VarM7258if = h50Var.m7258if();
        if (e40VarM7258if == null) {
            rh2Var = new rh2((org.bouncycastle.asn1.Cthis) h.f29080do);
            bigIntegerM1650try = h50Var.m2948for();
        } else {
            if (e40VarM7258if instanceof l40) {
                l40 l40Var = (l40) e40VarM7258if;
                cg0 cg0Var = new cg0(l40Var.m4589catch(), l40Var.m4590this(), l40Var.m4588break());
                if (f30873do.contains(cg0Var.m911goto())) {
                    ccatch = CryptoProObjectIdentifiers.gostR3410_2001;
                } else {
                    boolean z = h50Var.m2948for().bitLength() > 256;
                    Ccatch ccatch2 = z ? RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512 : RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256;
                    i = z ? 64 : 32;
                    ccatch = ccatch2;
                }
                byte[] bArr = new byte[i];
                m34471for(bArr, i, 0, h50Var.m2948for());
                return new Cdo(new b1(ccatch, cg0Var), new j(bArr));
            }
            if (!(e40VarM7258if instanceof b50)) {
                rh2 rh2Var2 = new rh2(new th2(e40VarM7258if.m1646do(), e40VarM7258if.m1648if(), e40VarM7258if.m1650try(), e40VarM7258if.m1647for(), e40VarM7258if.m1645case()));
                iBitLength = e40VarM7258if.m1650try().bitLength();
                rh2Var = rh2Var2;
                return new Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var), new g50(iBitLength, h50Var.m2948for(), new Cinstanceof(e40VarM7258if.m1648if().m35470package(h50Var.m2948for()).m35459const(false)), rh2Var), cthrow);
            }
            rh2Var = new rh2(((b50) e40VarM7258if).m446goto());
            bigIntegerM1650try = e40VarM7258if.m1650try();
        }
        iBitLength = bigIntegerM1650try.bitLength();
        return new Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var), new g50(iBitLength, h50Var.m2948for(), new Cinstanceof(e40VarM7258if.m1648if().m35470package(h50Var.m2948for()).m35459const(false)), rh2Var), cthrow);
    }
}
