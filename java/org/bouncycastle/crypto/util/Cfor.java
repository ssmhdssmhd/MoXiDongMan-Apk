package org.bouncycastle.crypto.util;

import android.support.v4.dr0;
import android.support.v4.rl;
import android.support.v4.tt;
import android.support.v4.xt;
import java.security.SecureRandom;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* renamed from: org.bouncycastle.crypto.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {
    private Cfor() {
    }

    /* renamed from: do, reason: not valid java name */
    private static rl m34489do(SecureRandom secureRandom, int i) {
        rl rlVar = new rl();
        rlVar.mo4915if(new dr0(secureRandom, i));
        return rlVar;
    }

    /* renamed from: if, reason: not valid java name */
    public static rl m34490if(Ccatch ccatch, SecureRandom secureRandom) throws IllegalArgumentException {
        if (NISTObjectIdentifiers.id_aes128_CBC.equals(ccatch)) {
            return m34489do(secureRandom, 128);
        }
        if (NISTObjectIdentifiers.id_aes192_CBC.equals(ccatch)) {
            return m34489do(secureRandom, 192);
        }
        if (NISTObjectIdentifiers.id_aes256_CBC.equals(ccatch)) {
            return m34489do(secureRandom, 256);
        }
        if (PKCSObjectIdentifiers.des_EDE3_CBC.equals(ccatch)) {
            xt xtVar = new xt();
            xtVar.mo4915if(new dr0(secureRandom, 192));
            return xtVar;
        }
        if (NTTObjectIdentifiers.id_camellia128_cbc.equals(ccatch)) {
            return m34489do(secureRandom, 128);
        }
        if (NTTObjectIdentifiers.id_camellia192_cbc.equals(ccatch)) {
            return m34489do(secureRandom, 192);
        }
        if (NTTObjectIdentifiers.id_camellia256_cbc.equals(ccatch)) {
            return m34489do(secureRandom, 256);
        }
        if (!KISAObjectIdentifiers.id_seedCBC.equals(ccatch) && !Cdo.f30877if.equals(ccatch)) {
            if (OIWObjectIdentifiers.desCBC.equals(ccatch)) {
                tt ttVar = new tt();
                ttVar.mo4915if(new dr0(secureRandom, 64));
                return ttVar;
            }
            if (!PKCSObjectIdentifiers.rc4.equals(ccatch) && !PKCSObjectIdentifiers.RC2_CBC.equals(ccatch)) {
                throw new IllegalArgumentException("cannot recognise cipher: " + ccatch);
            }
            return m34489do(secureRandom, 128);
        }
        return m34489do(secureRandom, 128);
    }
}
