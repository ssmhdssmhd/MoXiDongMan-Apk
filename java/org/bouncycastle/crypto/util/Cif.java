package org.bouncycastle.crypto.util;

import android.support.v4.Ccase;
import android.support.v4.b1;
import android.support.v4.bc1;
import android.support.v4.gj1;
import android.support.v4.gr0;
import android.support.v4.he;
import android.support.v4.hj1;
import android.support.v4.ie;
import android.support.v4.ij1;
import android.support.v4.jj1;
import android.support.v4.rt;
import android.support.v4.sl;
import android.support.v4.wt;
import android.support.v4.z0;
import java.io.OutputStream;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cthis;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.modes.Cdo;
import org.bouncycastle.crypto.paddings.Cnew;
import org.mozilla.classfile.Cfor;

/* renamed from: org.bouncycastle.crypto.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final short[] f30883do = {93, 190, 155, 139, 17, 153, z0.f8388default, 77, 89, 243, 133, 166, 63, 183, 131, 197, 228, z0.f8381abstract, 107, 58, 104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 22, 13, 56, z0.f8401private, 47, 137, 193, 249, Cfor.f33825synchronized, 196, 109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 199, 184, 80, 232, 36, 23, 252, 37, z0.f8391extends, 187, 106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 220, 255, 6, 164, 234, 66, 8, 218, 180, z0.f8400package, 176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 81, 75, 76, 251, 2, 211, z0.f8393finally, 134, 49, 231, 59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 95, 50, 136, 14, 53, 253};

    /* renamed from: do, reason: not valid java name */
    private static org.bouncycastle.crypto.Cif m34494do(Ccatch ccatch) throws IllegalArgumentException {
        Cdo cdo;
        if (NISTObjectIdentifiers.id_aes128_CBC.equals(ccatch) || NISTObjectIdentifiers.id_aes192_CBC.equals(ccatch) || NISTObjectIdentifiers.id_aes256_CBC.equals(ccatch)) {
            cdo = new Cdo(new Ccase());
        } else if (PKCSObjectIdentifiers.des_EDE3_CBC.equals(ccatch)) {
            cdo = new Cdo(new wt());
        } else if (OIWObjectIdentifiers.desCBC.equals(ccatch)) {
            cdo = new Cdo(new rt());
        } else if (PKCSObjectIdentifiers.RC2_CBC.equals(ccatch)) {
            cdo = new Cdo(new hj1());
        } else {
            if (!MiscObjectIdentifiers.cast5CBC.equals(ccatch)) {
                throw new IllegalArgumentException("cannot recognise cipher: " + ccatch);
            }
            cdo = new Cdo(new ie());
        }
        return new Cnew(cdo, new org.bouncycastle.crypto.paddings.Cfor());
    }

    /* renamed from: for, reason: not valid java name */
    public static sl m34495for(OutputStream outputStream, Object obj) {
        if (obj instanceof org.bouncycastle.crypto.Cif) {
            return new sl(outputStream, (org.bouncycastle.crypto.Cif) obj);
        }
        if (obj instanceof StreamCipher) {
            return new sl(outputStream, (StreamCipher) obj);
        }
        if (obj instanceof AEADBlockCipher) {
            return new sl(outputStream, (AEADBlockCipher) obj);
        }
        throw new IllegalArgumentException("unknown cipher object: " + obj);
    }

    /* renamed from: if, reason: not valid java name */
    public static Object m34496if(boolean z, CipherParameters cipherParameters, b1 b1Var) throws IllegalArgumentException {
        bc1 bc1Var;
        Ccatch ccatchM420new = b1Var.m420new();
        if (ccatchM420new.equals(PKCSObjectIdentifiers.rc4)) {
            jj1 jj1Var = new jj1();
            jj1Var.init(z, cipherParameters);
            return jj1Var;
        }
        org.bouncycastle.crypto.Cif cifM34494do = m34494do(b1Var.m420new());
        Cfinal aSN1Primitive = b1Var.m419else().toASN1Primitive();
        if (aSN1Primitive != null && !(aSN1Primitive instanceof Cthis)) {
            if (ccatchM420new.equals(PKCSObjectIdentifiers.des_EDE3_CBC) || ccatchM420new.equals(Cdo.f30875do) || ccatchM420new.equals(NISTObjectIdentifiers.id_aes128_CBC) || ccatchM420new.equals(NISTObjectIdentifiers.id_aes192_CBC) || ccatchM420new.equals(NISTObjectIdentifiers.id_aes256_CBC) || ccatchM420new.equals(NTTObjectIdentifiers.id_camellia128_cbc) || ccatchM420new.equals(NTTObjectIdentifiers.id_camellia192_cbc) || ccatchM420new.equals(NTTObjectIdentifiers.id_camellia256_cbc) || ccatchM420new.equals(KISAObjectIdentifiers.id_seedCBC) || ccatchM420new.equals(OIWObjectIdentifiers.desCBC)) {
                bc1Var = new bc1(cipherParameters, Cclass.m32796catch(aSN1Primitive).mo5490const());
            } else if (ccatchM420new.equals(Cdo.f30877if)) {
                bc1Var = new bc1(cipherParameters, he.m2995try(aSN1Primitive).m2997new());
            } else {
                if (!ccatchM420new.equals(PKCSObjectIdentifiers.RC2_CBC)) {
                    throw new IllegalArgumentException("cannot match parameters");
                }
                gj1 gj1VarM2716try = gj1.m2716try(aSN1Primitive);
                bc1Var = new bc1(new ij1(((gr0) cipherParameters).m2770do(), f30883do[gj1VarM2716try.m2717case().intValue()]), gj1VarM2716try.m2718new());
            }
            cifM34494do.mo7550case(z, bc1Var);
        } else if (ccatchM420new.equals(PKCSObjectIdentifiers.des_EDE3_CBC) || ccatchM420new.equals(Cdo.f30875do) || ccatchM420new.equals(Cdo.f30877if)) {
            cifM34494do.mo7550case(z, new bc1(cipherParameters, new byte[8]));
        } else {
            cifM34494do.mo7550case(z, cipherParameters);
        }
        return cifM34494do;
    }
}
