package org.bouncycastle.jcajce.provider.asymmetric.util;

import android.support.v4.a4;
import android.support.v4.a50;
import android.support.v4.b50;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.ec0;
import android.support.v4.h50;
import android.support.v4.k50;
import android.support.v4.q3;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.x40;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Enumeration;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.ec.Cdo;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {
    /* renamed from: break, reason: not valid java name */
    public static th2 m34729break(Ccatch ccatch) {
        th2 th2VarM33366this = Cdo.m33366this(ccatch);
        return th2VarM33366this == null ? a50.m47new(ccatch) : th2VarM33366this;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m34730case(Ccatch ccatch) {
        return a50.m48try(ccatch);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Ccatch m34731catch(d50 d50Var) {
        Enumeration enumerationM42case = a50.m42case();
        while (enumerationM42case.hasMoreElements()) {
            String str = (String) enumerationM42case.nextElement();
            th2 th2VarM45for = a50.m45for(str);
            if (th2VarM45for.m7903catch().equals(d50Var.m1145new()) && th2VarM45for.m7908this().equals(d50Var.m1143for()) && th2VarM45for.m7909try().m35427final(d50Var.m1142do()) && th2VarM45for.m7906goto().m35481try(d50Var.m1144if())) {
                return a50.m44else(str);
            }
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public static Ccatch m34732class(String str) {
        int iIndexOf = str.indexOf(32);
        if (iIndexOf > 0) {
            str = str.substring(iIndexOf + 1);
        }
        try {
            if (str.charAt(0) >= '0' && str.charAt(0) <= '2') {
                return new Ccatch(str);
            }
        } catch (IllegalArgumentException unused) {
        }
        return a50.m44else(str);
    }

    /* renamed from: const, reason: not valid java name */
    public static int m34733const(ProviderConfiguration providerConfiguration, BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        d50 ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
        return ecImplicitlyCa == null ? bigInteger2.bitLength() : ecImplicitlyCa.m1145new().bitLength();
    }

    /* renamed from: do, reason: not valid java name */
    private static Cnew m34734do(BigInteger bigInteger, d50 d50Var) {
        return d50Var.m1144if().m35470package(bigInteger).m35454abstract();
    }

    /* renamed from: else, reason: not valid java name */
    public static e40 m34735else(ProviderConfiguration providerConfiguration, d50 d50Var) {
        if (d50Var instanceof x40) {
            x40 x40Var = (x40) d50Var;
            return new b50(m34732class(x40Var.m9391case()), x40Var.m1142do(), x40Var.m1144if(), x40Var.m1145new(), x40Var.m1143for(), x40Var.m1146try());
        }
        if (d50Var != null) {
            return new e40(d50Var.m1142do(), d50Var.m1144if(), d50Var.m1145new(), d50Var.m1143for(), d50Var.m1146try());
        }
        d50 ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
        return new e40(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1144if(), ecImplicitlyCa.m1145new(), ecImplicitlyCa.m1143for(), ecImplicitlyCa.m1146try());
    }

    /* renamed from: final, reason: not valid java name */
    public static String m34736final(String str, BigInteger bigInteger, d50 d50Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        Cnew cnewM34734do = m34734do(bigInteger, d50Var);
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(m34737for(cnewM34734do, d50Var));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("            X: ");
        stringBuffer.append(cnewM34734do.m35456case().mo339static().toString(16));
        stringBuffer.append(strM36360new);
        stringBuffer.append("            Y: ");
        stringBuffer.append(cnewM34734do.m35462else().mo339static().toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m34737for(Cnew cnew, d50 d50Var) {
        Cif cifM1142do = d50Var.m1142do();
        return cifM1142do != null ? new ec0(q3.m6372finally(cnew.m35459const(false), cifM1142do.m35443throw().m35379try(), cifM1142do.m35432import().m35379try(), d50Var.m1144if().m35459const(false))).toString() : new ec0(cnew.m35459const(false)).toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static e40 m34738goto(ProviderConfiguration providerConfiguration, rh2 rh2Var) {
        e40 e40Var;
        if (rh2Var.m6992goto()) {
            Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2Var.m6990case());
            th2 th2VarM34729break = m34729break(ccatchM32790throw);
            if (th2VarM34729break == null) {
                th2VarM34729break = (th2) providerConfiguration.getAdditionalECParameters().get(ccatchM32790throw);
            }
            return new b50(ccatchM32790throw, th2VarM34729break.m7909try(), th2VarM34729break.m7906goto(), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this(), th2VarM34729break.m7904class());
        }
        if (rh2Var.m6991else()) {
            d50 ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
            e40Var = new e40(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1144if(), ecImplicitlyCa.m1145new(), ecImplicitlyCa.m1143for(), ecImplicitlyCa.m1146try());
        } else {
            th2 th2VarM7901break = th2.m7901break(rh2Var.m6990case());
            e40Var = new e40(th2VarM7901break.m7909try(), th2VarM7901break.m7906goto(), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this(), th2VarM7901break.m7904class());
        }
        return e40Var;
    }

    /* renamed from: if, reason: not valid java name */
    public static int[] m34739if(int[] iArr) {
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else {
            if (iArr.length != 3) {
                throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
            }
            if (iArr[0] < iArr[1] && iArr[0] < iArr[2]) {
                iArr2[0] = iArr[0];
                if (iArr[1] < iArr[2]) {
                    iArr2[1] = iArr[1];
                    iArr2[2] = iArr[2];
                } else {
                    iArr2[1] = iArr[2];
                    iArr2[2] = iArr[1];
                }
            } else if (iArr[1] < iArr[2]) {
                iArr2[0] = iArr[1];
                if (iArr[0] < iArr[2]) {
                    iArr2[1] = iArr[0];
                    iArr2[2] = iArr[2];
                } else {
                    iArr2[1] = iArr[2];
                    iArr2[2] = iArr[0];
                }
            } else {
                iArr2[0] = iArr[2];
                if (iArr[0] < iArr[1]) {
                    iArr2[1] = iArr[0];
                    iArr2[2] = iArr[1];
                } else {
                    iArr2[1] = iArr[1];
                    iArr2[2] = iArr[0];
                }
            }
        }
        return iArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static a4 m34740new(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) privateKey;
            d50 parameters = eCPrivateKey.getParameters();
            if (parameters == null) {
                parameters = org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa();
            }
            if (!(eCPrivateKey.getParameters() instanceof x40)) {
                return new h50(eCPrivateKey.getD(), new e40(parameters.m1142do(), parameters.m1144if(), parameters.m1145new(), parameters.m1143for(), parameters.m1146try()));
            }
            return new h50(eCPrivateKey.getD(), new b50(a50.m44else(((x40) eCPrivateKey.getParameters()).m9391case()), parameters.m1142do(), parameters.m1144if(), parameters.m1145new(), parameters.m1143for(), parameters.m1146try()));
        }
        if (privateKey instanceof java.security.interfaces.ECPrivateKey) {
            java.security.interfaces.ECPrivateKey eCPrivateKey2 = (java.security.interfaces.ECPrivateKey) privateKey;
            d50 d50VarM7702else = t30.m7702else(eCPrivateKey2.getParams(), false);
            return new h50(eCPrivateKey2.getS(), new e40(d50VarM7702else.m1142do(), d50VarM7702else.m1144if(), d50VarM7702else.m1145new(), d50VarM7702else.m1143for(), d50VarM7702else.m1146try()));
        }
        try {
            byte[] encoded = privateKey.getEncoded();
            if (encoded == null) {
                throw new InvalidKeyException("no encoding for EC private key");
            }
            PrivateKey privateKey2 = org.bouncycastle.jce.provider.Cdo.getPrivateKey(org.bouncycastle.asn1.pkcs.Cdo.m33100try(encoded));
            if (privateKey2 instanceof java.security.interfaces.ECPrivateKey) {
                return m34740new(privateKey2);
            }
            throw new InvalidKeyException("can't identify EC private key.");
        } catch (Exception e) {
            throw new InvalidKeyException("cannot identify EC private key: " + e.toString());
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static String m34741super(String str, Cnew cnew, d50 d50Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(m34737for(cnew, d50Var));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("            X: ");
        stringBuffer.append(cnew.m35456case().mo339static().toString(16));
        stringBuffer.append(strM36360new);
        stringBuffer.append("            Y: ");
        stringBuffer.append(cnew.m35462else().mo339static().toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static th2 m34742this(String str) {
        th2 th2VarM33363goto = Cdo.m33363goto(str);
        return th2VarM33363goto == null ? a50.m45for(str) : th2VarM33363goto;
    }

    /* renamed from: try, reason: not valid java name */
    public static a4 m34743try(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
            d50 parameters = eCPublicKey.getParameters();
            return new k50(eCPublicKey.getQ(), new e40(parameters.m1142do(), parameters.m1144if(), parameters.m1145new(), parameters.m1143for(), parameters.m1146try()));
        }
        if (publicKey instanceof java.security.interfaces.ECPublicKey) {
            java.security.interfaces.ECPublicKey eCPublicKey2 = (java.security.interfaces.ECPublicKey) publicKey;
            d50 d50VarM7702else = t30.m7702else(eCPublicKey2.getParams(), false);
            return new k50(t30.m7708try(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), new e40(d50VarM7702else.m1142do(), d50VarM7702else.m1144if(), d50VarM7702else.m1145new(), d50VarM7702else.m1143for(), d50VarM7702else.m1146try()));
        }
        try {
            byte[] encoded = publicKey.getEncoded();
            if (encoded == null) {
                throw new InvalidKeyException("no encoding for EC public key");
            }
            PublicKey publicKey2 = org.bouncycastle.jce.provider.Cdo.getPublicKey(Ctry.m33291case(encoded));
            if (publicKey2 instanceof java.security.interfaces.ECPublicKey) {
                return m34743try(publicKey2);
            }
            throw new InvalidKeyException("cannot identify EC public key.");
        } catch (Exception e) {
            throw new InvalidKeyException("cannot identify EC public key: " + e.toString());
        }
    }
}
