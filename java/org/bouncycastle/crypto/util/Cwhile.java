package org.bouncycastle.crypto.util;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.b50;
import android.support.v4.cg0;
import android.support.v4.ck1;
import android.support.v4.e40;
import android.support.v4.fv;
import android.support.v4.gk1;
import android.support.v4.hv;
import android.support.v4.k50;
import android.support.v4.kv;
import android.support.v4.l40;
import android.support.v4.rh2;
import android.support.v4.th2;
import android.support.v4.vh2;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cthis;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.Cbreak;
import org.bouncycastle.crypto.params.Cfor;

/* renamed from: org.bouncycastle.crypto.util.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile {

    /* renamed from: do, reason: not valid java name */
    private static Set f30912do;

    static {
        HashSet hashSet = new HashSet(5);
        f30912do = hashSet;
        hashSet.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_A);
        f30912do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_B);
        f30912do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_C);
        f30912do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchA);
        f30912do.add(CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchB);
    }

    private Cwhile() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Ctry m34524do(a4 a4Var) throws IOException {
        rh2 rh2Var;
        Ccatch ccatch;
        if (a4Var instanceof ck1) {
            ck1 ck1Var = (ck1) a4Var;
            return new Ctry(new b1(PKCSObjectIdentifiers.rsaEncryption, h.f29080do), new gk1(ck1Var.m954for(), ck1Var.m955if()));
        }
        if (a4Var instanceof kv) {
            kv kvVar = (kv) a4Var;
            hv hvVarM2025if = kvVar.m2025if();
            return new Ctry(new b1(X9ObjectIdentifiers.id_dsa, hvVarM2025if != null ? new fv(hvVarM2025if.m3129if(), hvVarM2025if.m3128for(), hvVarM2025if.m3127do()) : null), new Cgoto(kvVar.m4514for()));
        }
        if (!(a4Var instanceof k50)) {
            if (a4Var instanceof Cbreak) {
                return new Ctry(new b1(EdECObjectIdentifiers.id_X448), ((Cbreak) a4Var).m33802for());
            }
            if (a4Var instanceof org.bouncycastle.crypto.params.Cgoto) {
                return new Ctry(new b1(EdECObjectIdentifiers.id_X25519), ((org.bouncycastle.crypto.params.Cgoto) a4Var).m33847for());
            }
            if (a4Var instanceof org.bouncycastle.crypto.params.Ctry) {
                return new Ctry(new b1(EdECObjectIdentifiers.id_Ed448), ((org.bouncycastle.crypto.params.Ctry) a4Var).m33861for());
            }
            if (a4Var instanceof Cfor) {
                return new Ctry(new b1(EdECObjectIdentifiers.id_Ed25519), ((Cfor) a4Var).m33845for());
            }
            throw new IOException("key parameters not recognized");
        }
        k50 k50Var = (k50) a4Var;
        e40 e40VarM7258if = k50Var.m7258if();
        if (e40VarM7258if == null) {
            rh2Var = new rh2((Cthis) h.f29080do);
        } else {
            if (e40VarM7258if instanceof l40) {
                l40 l40Var = (l40) e40VarM7258if;
                BigInteger bigIntegerMo339static = k50Var.m4252for().m35456case().mo339static();
                BigInteger bigIntegerMo339static2 = k50Var.m4252for().m35462else().mo339static();
                cg0 cg0Var = new cg0(l40Var.m4589catch(), l40Var.m4590this());
                int i = 32;
                int i2 = 64;
                if (f30912do.contains(l40Var.m4589catch())) {
                    ccatch = CryptoProObjectIdentifiers.gostR3410_2001;
                } else {
                    if (bigIntegerMo339static.bitLength() > 256) {
                        ccatch = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512;
                        i = 64;
                        i2 = 128;
                    } else {
                        ccatch = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256;
                    }
                }
                byte[] bArr = new byte[i2];
                int i3 = i2 / 2;
                m34525if(bArr, i3, 0, bigIntegerMo339static);
                m34525if(bArr, i3, i, bigIntegerMo339static2);
                try {
                    return new Ctry(new b1(ccatch, cg0Var), new j(bArr));
                } catch (IOException unused) {
                    return null;
                }
            }
            rh2Var = e40VarM7258if instanceof b50 ? new rh2(((b50) e40VarM7258if).m446goto()) : new rh2(new th2(e40VarM7258if.m1646do(), e40VarM7258if.m1648if(), e40VarM7258if.m1650try(), e40VarM7258if.m1647for(), e40VarM7258if.m1645case()));
        }
        return new Ctry(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var), ((Cclass) new vh2(k50Var.m4252for()).toASN1Primitive()).mo5490const());
    }

    /* renamed from: if, reason: not valid java name */
    private static void m34525if(byte[] bArr, int i, int i2, BigInteger bigInteger) {
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
}
