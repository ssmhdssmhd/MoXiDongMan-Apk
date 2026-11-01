package org.bouncycastle.crypto.util;

import android.support.v4.a4;
import android.support.v4.a50;
import android.support.v4.b1;
import android.support.v4.b50;
import android.support.v4.cg0;
import android.support.v4.dk1;
import android.support.v4.e40;
import android.support.v4.ek1;
import android.support.v4.fv;
import android.support.v4.g50;
import android.support.v4.h50;
import android.support.v4.hv;
import android.support.v4.j40;
import android.support.v4.j60;
import android.support.v4.jv;
import android.support.v4.l40;
import android.support.v4.l60;
import android.support.v4.m60;
import android.support.v4.nu;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.rh2;
import android.support.v4.th2;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.Cif;
import org.bouncycastle.crypto.params.Cnew;
import org.bouncycastle.crypto.params.Cthis;

/* renamed from: org.bouncycastle.crypto.util.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch {
    /* renamed from: do, reason: not valid java name */
    public static a4 m34466do(InputStream inputStream) throws IOException {
        return m34468if(Cdo.m33100try(new Celse(inputStream).m33002break()));
    }

    /* renamed from: for, reason: not valid java name */
    public static a4 m34467for(byte[] bArr) throws IOException {
        return m34468if(Cdo.m33100try(Cfinal.m33015else(bArr)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v8, types: [android.support.v4.e40] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.support.v4.l40] */
    /* JADX WARN: Type inference failed for: r9v2, types: [android.support.v4.l40] */
    /* JADX WARN: Type inference failed for: r9v4, types: [android.support.v4.l40] */
    /* renamed from: if, reason: not valid java name */
    public static a4 m34468if(Cdo cdo) throws IOException {
        BigInteger bigIntegerM33044final;
        ?? r2;
        hv l40Var;
        e40 e40Var;
        b1 b1VarM33104else = cdo.m33104else();
        org.bouncycastle.asn1.Ccatch ccatchM420new = b1VarM33104else.m420new();
        if (ccatchM420new.equals(PKCSObjectIdentifiers.rsaEncryption) || ccatchM420new.equals(PKCSObjectIdentifiers.id_RSASSA_PSS) || ccatchM420new.equals(X509ObjectIdentifiers.id_ea_rsa)) {
            ek1 ek1VarM1930else = ek1.m1930else(cdo.m33102catch());
            return new dk1(ek1VarM1930else.m1939this(), ek1VarM1930else.m1936const(), ek1VarM1930else.m1935class(), ek1VarM1930else.m1932break(), ek1VarM1930else.m1934catch(), ek1VarM1930else.m1940try(), ek1VarM1930else.m1933case(), ek1VarM1930else.m1938new());
        }
        hv l40Var2 = null;
        if (ccatchM420new.equals(PKCSObjectIdentifiers.dhKeyAgreement)) {
            nu nuVarM5370try = nu.m5370try(b1VarM33104else.m419else());
            Cgoto cgoto = (Cgoto) cdo.m33102catch();
            BigInteger bigIntegerM5371case = nuVarM5370try.m5371case();
            return new pu(cgoto.m33044final(), new ou(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), null, bigIntegerM5371case != null ? bigIntegerM5371case.intValue() : 0));
        }
        if (ccatchM420new.equals(OIWObjectIdentifiers.elGamalAlgorithm)) {
            j60 j60VarM3733try = j60.m3733try(b1VarM33104else.m419else());
            return new m60(((Cgoto) cdo.m33102catch()).m33044final(), new l60(j60VarM3733try.m3734case(), j60VarM3733try.m3735new()));
        }
        if (ccatchM420new.equals(X9ObjectIdentifiers.id_dsa)) {
            Cgoto cgoto2 = (Cgoto) cdo.m33102catch();
            ASN1Encodable aSN1EncodableM419else = b1VarM33104else.m419else();
            if (aSN1EncodableM419else != null) {
                fv fvVarM2433try = fv.m2433try(aSN1EncodableM419else.toASN1Primitive());
                l40Var2 = new hv(fvVarM2433try.m2434else(), fvVarM2433try.m2435goto(), fvVarM2433try.m2436new());
            }
            return new jv(cgoto2.m33044final(), l40Var2);
        }
        if (ccatchM420new.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
            rh2 rh2Var = new rh2((Cfinal) b1VarM33104else.m419else());
            if (rh2Var.m6992goto()) {
                org.bouncycastle.asn1.Ccatch ccatch = (org.bouncycastle.asn1.Ccatch) rh2Var.m6990case();
                th2 th2VarM33366this = org.bouncycastle.crypto.ec.Cdo.m33366this(ccatch);
                if (th2VarM33366this == null) {
                    th2VarM33366this = a50.m47new(ccatch);
                }
                e40Var = new b50(ccatch, th2VarM33366this.m7909try(), th2VarM33366this.m7906goto(), th2VarM33366this.m7903catch(), th2VarM33366this.m7908this(), th2VarM33366this.m7904class());
            } else {
                th2 th2VarM7901break = th2.m7901break(rh2Var.m6990case());
                e40Var = new e40(th2VarM7901break.m7909try(), th2VarM7901break.m7906goto(), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this(), th2VarM7901break.m7904class());
            }
            return new h50(g50.m2577new(cdo.m33102catch()).m2580try(), e40Var);
        }
        if (ccatchM420new.equals(EdECObjectIdentifiers.id_X25519)) {
            return new org.bouncycastle.crypto.params.Celse(m34469new(cdo, 32), 0);
        }
        if (ccatchM420new.equals(EdECObjectIdentifiers.id_X448)) {
            return new Cthis(m34469new(cdo, 56), 0);
        }
        if (ccatchM420new.equals(EdECObjectIdentifiers.id_Ed25519)) {
            return new Cif(m34469new(cdo, 32), 0);
        }
        if (ccatchM420new.equals(EdECObjectIdentifiers.id_Ed448)) {
            return new Cnew(m34469new(cdo, 57), 0);
        }
        if (!ccatchM420new.equals(CryptoProObjectIdentifiers.gostR3410_2001) && !ccatchM420new.equals(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512) && !ccatchM420new.equals(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256)) {
            throw new RuntimeException("algorithm identifier in private key not recognised");
        }
        cg0 cg0VarM909case = cg0.m909case(cdo.m33104else().m419else());
        Cfinal aSN1Primitive = cdo.m33104else().m419else().toASN1Primitive();
        if ((aSN1Primitive instanceof Csuper) && (Csuper.m33129catch(aSN1Primitive).size() == 2 || Csuper.m33129catch(aSN1Primitive).size() == 3)) {
            l40 l40Var3 = new l40(new b50(cg0VarM909case.m911goto(), j40.m3720if(cg0VarM909case.m911goto())), cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try());
            ASN1Encodable aSN1EncodableM33102catch = cdo.m33102catch();
            if (aSN1EncodableM33102catch instanceof Cgoto) {
                bigIntegerM33044final = Cgoto.m33040catch(aSN1EncodableM33102catch).m33043const();
                r2 = l40Var3;
            } else {
                byte[] bArrMo5490const = Cclass.m32796catch(aSN1EncodableM33102catch).mo5490const();
                byte[] bArr = new byte[bArrMo5490const.length];
                while (i != bArrMo5490const.length) {
                    bArr[i] = bArrMo5490const[(bArrMo5490const.length - 1) - i];
                    i++;
                }
                bigIntegerM33044final = new BigInteger(1, bArr);
                r2 = l40Var3;
            }
        } else {
            rh2 rh2VarM6988new = rh2.m6988new(cdo.m33104else().m419else());
            if (rh2VarM6988new.m6992goto()) {
                org.bouncycastle.asn1.Ccatch ccatchM32790throw = org.bouncycastle.asn1.Ccatch.m32790throw(rh2VarM6988new.m6990case());
                th2 th2VarM47new = a50.m47new(ccatchM32790throw);
                if (th2VarM47new == null) {
                    e40 e40VarM3720if = j40.m3720if(ccatchM32790throw);
                    l40Var = new l40(new b50(ccatchM32790throw, e40VarM3720if.m1646do(), e40VarM3720if.m1648if(), e40VarM3720if.m1650try(), e40VarM3720if.m1647for(), e40VarM3720if.m1645case()), cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try());
                } else {
                    l40Var = new l40(new b50(ccatchM32790throw, th2VarM47new.m7909try(), th2VarM47new.m7906goto(), th2VarM47new.m7903catch(), th2VarM47new.m7908this(), th2VarM47new.m7904class()), cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try());
                }
                l40Var2 = l40Var;
            } else if (!rh2VarM6988new.m6991else()) {
                th2 th2VarM7901break2 = th2.m7901break(rh2VarM6988new.m6990case());
                l40Var2 = new l40(new b50(ccatchM420new, th2VarM7901break2.m7909try(), th2VarM7901break2.m7906goto(), th2VarM7901break2.m7903catch(), th2VarM7901break2.m7908this(), th2VarM7901break2.m7904class()), cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try());
            }
            ASN1Encodable aSN1EncodableM33102catch2 = cdo.m33102catch();
            bigIntegerM33044final = aSN1EncodableM33102catch2 instanceof Cgoto ? Cgoto.m33040catch(aSN1EncodableM33102catch2).m33044final() : g50.m2577new(aSN1EncodableM33102catch2).m2580try();
            r2 = l40Var2;
        }
        return new h50(bigIntegerM33044final, new l40(r2, cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try()));
    }

    /* renamed from: new, reason: not valid java name */
    private static byte[] m34469new(Cdo cdo, int i) throws IOException {
        byte[] bArrMo5490const = Cclass.m32796catch(cdo.m33102catch()).mo5490const();
        if (i == bArrMo5490const.length) {
            return bArrMo5490const;
        }
        throw new RuntimeException("private key encoding has incorrect length");
    }
}
