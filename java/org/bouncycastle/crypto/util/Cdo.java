package org.bouncycastle.crypto.util;

import android.support.v4.b1;
import android.support.v4.gj1;
import android.support.v4.he;
import android.support.v4.z0;
import java.security.SecureRandom;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.mozilla.classfile.Cfor;

/* renamed from: org.bouncycastle.crypto.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final Ccatch f30875do = new Ccatch("1.3.6.1.4.1.188.7.1.1.2").m32793import();

    /* renamed from: if, reason: not valid java name */
    public static final Ccatch f30877if = new Ccatch("1.2.840.113533.7.66.10").m32793import();

    /* renamed from: for, reason: not valid java name */
    private static final short[] f30876for = {189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 160, 104, 44, 195, 39, 95, Cfor.f33825synchronized, 54, 62, 238, 251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 72, 230, 30, 83, 243, 146, 164, z0.f8401private, 140, 8, 21, z0.f8388default, 134, 0, 132, 250, 244, 127, 138, 66, 25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 148, 153, 183, z0.f8400package, 116, 211, 228, 191, 58, 222, 150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 194, 87, 99, 202, 61, 108, 180, 197, 204, z0.f8393finally, 178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 1, 226, 22, 56, 196, z0.f8391extends, 59, 15, 101, 70, 190, 126, 45, 123, 130, 249, 64, 181, 29, z0.f8381abstract, 248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 185, 233, 76, 255, 67, 171};

    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static b1 m34481do(Ccatch ccatch, int i, SecureRandom secureRandom) throws IllegalArgumentException {
        if (ccatch.equals(NISTObjectIdentifiers.id_aes128_CBC) || ccatch.equals(NISTObjectIdentifiers.id_aes192_CBC) || ccatch.equals(NISTObjectIdentifiers.id_aes256_CBC) || ccatch.equals(NTTObjectIdentifiers.id_camellia128_cbc) || ccatch.equals(NTTObjectIdentifiers.id_camellia192_cbc) || ccatch.equals(NTTObjectIdentifiers.id_camellia256_cbc) || ccatch.equals(KISAObjectIdentifiers.id_seedCBC)) {
            byte[] bArr = new byte[16];
            secureRandom.nextBytes(bArr);
            return new b1(ccatch, new j(bArr));
        }
        if (ccatch.equals(PKCSObjectIdentifiers.des_EDE3_CBC) || ccatch.equals(f30875do) || ccatch.equals(OIWObjectIdentifiers.desCBC)) {
            byte[] bArr2 = new byte[8];
            secureRandom.nextBytes(bArr2);
            return new b1(ccatch, new j(bArr2));
        }
        if (ccatch.equals(f30877if)) {
            byte[] bArr3 = new byte[8];
            secureRandom.nextBytes(bArr3);
            return new b1(ccatch, new he(bArr3, i));
        }
        if (ccatch.equals(PKCSObjectIdentifiers.rc4)) {
            return new b1(ccatch, h.f29080do);
        }
        if (!ccatch.equals(PKCSObjectIdentifiers.RC2_CBC)) {
            throw new IllegalArgumentException("unable to match algorithm");
        }
        byte[] bArr4 = new byte[8];
        secureRandom.nextBytes(bArr4);
        return new b1(ccatch, new gj1(f30876for[128], bArr4));
    }
}
