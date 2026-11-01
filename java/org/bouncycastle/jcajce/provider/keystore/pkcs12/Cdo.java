package org.bouncycastle.jcajce.provider.keystore.pkcs12;

import android.support.v4.Cimport;
import android.support.v4.Cwhile;
import android.support.v4.a5;
import android.support.v4.b1;
import android.support.v4.c5;
import android.support.v4.ca1;
import android.support.v4.ea1;
import android.support.v4.er;
import android.support.v4.ha1;
import android.support.v4.hn0;
import android.support.v4.i70;
import android.support.v4.id1;
import android.support.v4.jo0;
import android.support.v4.m91;
import android.support.v4.o70;
import android.support.v4.of0;
import android.support.v4.or1;
import android.support.v4.pf0;
import android.support.v4.q3;
import android.support.v4.q91;
import android.support.v4.t91;
import android.support.v4.u00;
import android.support.v4.v00;
import android.support.v4.w22;
import android.support.v4.w5;
import android.support.v4.xf;
import android.support.v4.yw0;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Vector;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfinally;
import org.bouncycastle.asn1.Cimplements;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.Cthrows;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.l;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.q;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.BCKeyStore;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends KeyStoreSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers, BCKeyStore {

    /* renamed from: default, reason: not valid java name */
    public static final int f31372default = 2;

    /* renamed from: final, reason: not valid java name */
    public static final String f31373final = "org.bouncycastle.pkcs12.max_it_count";

    /* renamed from: import, reason: not valid java name */
    public static final int f31374import = 0;

    /* renamed from: native, reason: not valid java name */
    public static final int f31375native = 1;

    /* renamed from: public, reason: not valid java name */
    public static final int f31376public = 2;

    /* renamed from: return, reason: not valid java name */
    public static final int f31377return = 3;

    /* renamed from: static, reason: not valid java name */
    public static final int f31378static = 4;

    /* renamed from: super, reason: not valid java name */
    private static final int f31379super = 20;

    /* renamed from: switch, reason: not valid java name */
    public static final int f31380switch = 0;

    /* renamed from: throw, reason: not valid java name */
    private static final int f31381throw = 51200;

    /* renamed from: throws, reason: not valid java name */
    public static final int f31382throws = 1;

    /* renamed from: while, reason: not valid java name */
    private static final Celse f31383while = new Celse();

    /* renamed from: break, reason: not valid java name */
    private Ccatch f31384break;

    /* renamed from: goto, reason: not valid java name */
    private CertificateFactory f31392goto;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f31393if;

    /* renamed from: new, reason: not valid java name */
    private Cgoto f31394new;

    /* renamed from: this, reason: not valid java name */
    private Ccatch f31395this;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31389do = new w5();

    /* renamed from: for, reason: not valid java name */
    private Hashtable f31391for = new Hashtable();

    /* renamed from: try, reason: not valid java name */
    private Hashtable f31396try = new Hashtable();

    /* renamed from: case, reason: not valid java name */
    private Hashtable f31385case = new Hashtable();

    /* renamed from: else, reason: not valid java name */
    public SecureRandom f31390else = org.bouncycastle.crypto.Cfor.m33599case();

    /* renamed from: catch, reason: not valid java name */
    private b1 f31386catch = new b1(OIWObjectIdentifiers.idSHA1, h.f29080do);

    /* renamed from: class, reason: not valid java name */
    private int f31387class = 102400;

    /* renamed from: const, reason: not valid java name */
    private int f31388const = 20;

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$case, reason: invalid class name */
    public static class Ccase extends Cdo {
        public Ccase() {
            super(new org.bouncycastle.jcajce.util.Cif(), PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: do, reason: not valid java name */
        private final Map f31397do;

        public Celse() {
            HashMap map = new HashMap();
            map.put(new Ccatch("1.2.840.113533.7.66.10"), hn0.m3072for(128));
            map.put(PKCSObjectIdentifiers.des_EDE3_CBC, hn0.m3072for(192));
            map.put(NISTObjectIdentifiers.id_aes128_CBC, hn0.m3072for(128));
            map.put(NISTObjectIdentifiers.id_aes192_CBC, hn0.m3072for(192));
            map.put(NISTObjectIdentifiers.id_aes256_CBC, hn0.m3072for(256));
            map.put(NTTObjectIdentifiers.id_camellia128_cbc, hn0.m3072for(128));
            map.put(NTTObjectIdentifiers.id_camellia192_cbc, hn0.m3072for(192));
            map.put(NTTObjectIdentifiers.id_camellia256_cbc, hn0.m3072for(256));
            map.put(CryptoProObjectIdentifiers.gostR28147_gcfb, hn0.m3072for(256));
            this.f31397do = Collections.unmodifiableMap(map);
        }

        /* renamed from: do, reason: not valid java name */
        public int m34852do(b1 b1Var) {
            Integer num = (Integer) this.f31397do.get(b1Var.m420new());
            if (num != null) {
                return num.intValue();
            }
            return -1;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$for, reason: invalid class name */
    public static class Cfor extends Cdo {
        public Cfor() {
            super(new w5(), PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: do, reason: not valid java name */
        private Hashtable f31398do;

        /* renamed from: if, reason: not valid java name */
        private Hashtable f31399if;

        private Cgoto() {
            this.f31398do = new Hashtable();
            this.f31399if = new Hashtable();
        }

        /* renamed from: do, reason: not valid java name */
        public Enumeration m34853do() {
            return this.f31398do.elements();
        }

        /* renamed from: for, reason: not valid java name */
        public Enumeration m34854for() {
            return this.f31398do.keys();
        }

        /* renamed from: if, reason: not valid java name */
        public Object m34855if(String str) {
            String str2 = (String) this.f31399if.get(str == null ? null : org.bouncycastle.util.Cfor.m36349break(str));
            if (str2 == null) {
                return null;
            }
            return this.f31398do.get(str2);
        }

        /* renamed from: new, reason: not valid java name */
        public void m34856new(String str, Object obj) {
            String strM36349break = str == null ? null : org.bouncycastle.util.Cfor.m36349break(str);
            String str2 = (String) this.f31399if.get(strM36349break);
            if (str2 != null) {
                this.f31398do.remove(str2);
            }
            this.f31399if.put(strM36349break, str);
            this.f31398do.put(str, obj);
        }

        /* renamed from: try, reason: not valid java name */
        public Object m34857try(String str) {
            String str2 = (String) this.f31399if.remove(str == null ? null : org.bouncycastle.util.Cfor.m36349break(str));
            if (str2 == null) {
                return null;
            }
            return this.f31398do.remove(str2);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$if, reason: invalid class name */
    public static class Cif extends Cdo {
        public Cif() {
            w5 w5Var = new w5();
            Ccatch ccatch = PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC;
            super(w5Var, ccatch, ccatch);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: do, reason: not valid java name */
        public byte[] f31400do;

        public Cnew(PublicKey publicKey) {
            this.f31400do = Cdo.this.m34848new(publicKey).m9024else();
        }

        public Cnew(byte[] bArr) {
            this.f31400do = bArr;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Cnew) {
                return q3.m6362case(this.f31400do, ((Cnew) obj).f31400do);
            }
            return false;
        }

        public int hashCode() {
            return q3.n(this.f31400do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.pkcs12.do$try, reason: invalid class name */
    public static class Ctry extends Cdo {
        public Ctry() {
            org.bouncycastle.jcajce.util.Cif cif = new org.bouncycastle.jcajce.util.Cif();
            Ccatch ccatch = PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC;
            super(cif, ccatch, ccatch);
        }
    }

    public Cdo(JcaJceHelper jcaJceHelper, Ccatch ccatch, Ccatch ccatch2) {
        this.f31393if = new Cgoto();
        this.f31394new = new Cgoto();
        this.f31395this = ccatch;
        this.f31384break = ccatch2;
        try {
            this.f31392goto = jcaJceHelper.createCertificateFactory("X.509");
        } catch (Exception e) {
            throw new IllegalArgumentException("can't create cert factory - " + e.toString());
        }
    }

    /* renamed from: break, reason: not valid java name */
    private int m34841break(BigInteger bigInteger) {
        int iIntValue = bigInteger.intValue();
        if (iIntValue < 0) {
            throw new IllegalStateException("negative iteration count found");
        }
        BigInteger bigIntegerM36368if = org.bouncycastle.util.Cif.m36368if(f31373final);
        if (bigIntegerM36368if == null || bigIntegerM36368if.intValue() >= iIntValue) {
            return iIntValue;
        }
        throw new IllegalStateException("iteration count " + iIntValue + " greater than " + bigIntegerM36368if.intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01ad A[Catch: CertificateEncodingException -> 0x024f, TryCatch #3 {CertificateEncodingException -> 0x024f, blocks: (B:26:0x015e, B:28:0x0181, B:30:0x018e, B:34:0x019d, B:35:0x01a5, B:37:0x01ad, B:38:0x01b8, B:39:0x01bd, B:41:0x01c3, B:44:0x01f2, B:45:0x0233), top: B:124:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c3 A[Catch: CertificateEncodingException -> 0x024f, LOOP:3: B:39:0x01bd->B:41:0x01c3, LOOP_END, TryCatch #3 {CertificateEncodingException -> 0x024f, blocks: (B:26:0x015e, B:28:0x0181, B:30:0x018e, B:34:0x019d, B:35:0x01a5, B:37:0x01ad, B:38:0x01b8, B:39:0x01bd, B:41:0x01c3, B:44:0x01f2, B:45:0x0233), top: B:124:0x015e }] */
    /* JADX WARN: Type inference failed for: r13v11, types: [java.lang.Object, java.security.cert.Certificate] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.Hashtable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.Hashtable] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r7v11, types: [java.lang.Object, java.security.cert.Certificate] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object, java.security.cert.Certificate] */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m34842case(OutputStream outputStream, char[] cArr, boolean z) throws IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        Enumeration enumeration;
        boolean z2;
        Enumeration enumeration2;
        boolean z3;
        Ccatch ccatch;
        Enumeration bagAttributeKeys;
        boolean z4;
        Objects.requireNonNull(cArr, "No password supplied for PKCS#12 KeyStore.");
        Cimport cimport = new Cimport();
        Enumeration enumerationM34854for = this.f31393if.m34854for();
        while (enumerationM34854for.hasMoreElements()) {
            byte[] bArr = new byte[20];
            this.f31390else.nextBytes(bArr);
            String str = (String) enumerationM34854for.nextElement();
            PrivateKey privateKey = (PrivateKey) this.f31393if.m34855if(str);
            ea1 ea1Var = new ea1(bArr, f31381throw);
            o70 o70Var = new o70(new b1(this.f31395this, ea1Var.toASN1Primitive()), m34849catch(this.f31395this.m32795super(), privateKey, ea1Var, cArr));
            Cimport cimport2 = new Cimport();
            if (privateKey instanceof PKCS12BagAttributeCarrier) {
                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) privateKey;
                Ccatch ccatch2 = PKCSObjectIdentifiers.pkcs_9_at_friendlyName;
                Cimplements cimplements = (Cimplements) pKCS12BagAttributeCarrier.getBagAttribute(ccatch2);
                if (cimplements == null || !cimplements.getString().equals(str)) {
                    pKCS12BagAttributeCarrier.setBagAttribute(ccatch2, new Cimplements(str));
                }
                Ccatch ccatch3 = PKCSObjectIdentifiers.pkcs_9_at_localKeyId;
                if (pKCS12BagAttributeCarrier.getBagAttribute(ccatch3) == null) {
                    pKCS12BagAttributeCarrier.setBagAttribute(ccatch3, m34848new(engineGetCertificate(str).getPublicKey()));
                }
                Enumeration bagAttributeKeys2 = pKCS12BagAttributeCarrier.getBagAttributeKeys();
                z4 = false;
                while (bagAttributeKeys2.hasMoreElements()) {
                    Ccatch ccatch4 = (Ccatch) bagAttributeKeys2.nextElement();
                    Cimport cimport3 = new Cimport();
                    cimport3.m3516do(ccatch4);
                    cimport3.m3516do(new q(pKCS12BagAttributeCarrier.getBagAttribute(ccatch4)));
                    cimport2.m3516do(new n(cimport3));
                    z4 = true;
                }
            } else {
                z4 = false;
            }
            if (!z4) {
                Cimport cimport4 = new Cimport();
                Certificate certificateEngineGetCertificate = engineGetCertificate(str);
                cimport4.m3516do(PKCSObjectIdentifiers.pkcs_9_at_localKeyId);
                cimport4.m3516do(new q(m34848new(certificateEngineGetCertificate.getPublicKey())));
                cimport2.m3516do(new n(cimport4));
                Cimport cimport5 = new Cimport();
                cimport5.m3516do(PKCSObjectIdentifiers.pkcs_9_at_friendlyName);
                cimport5.m3516do(new q(new Cimplements(str)));
                cimport2.m3516do(new n(cimport5));
            }
            cimport.m3516do(new or1(PKCSObjectIdentifiers.pkcs8ShroudedKeyBag, o70Var.toASN1Primitive(), new q(cimport2)));
        }
        Cthrows cthrows = new Cthrows(new n(cimport).m32764do(ASN1Encoding.DER));
        byte[] bArr2 = new byte[20];
        this.f31390else.nextBytes(bArr2);
        Cimport cimport6 = new Cimport();
        b1 b1Var = new b1(this.f31384break, new ea1(bArr2, f31381throw).toASN1Primitive());
        Object hashtable = new Hashtable();
        Enumeration enumerationM34854for2 = this.f31393if.m34854for();
        while (enumerationM34854for2.hasMoreElements()) {
            try {
                String str2 = (String) enumerationM34854for2.nextElement();
                ?? EngineGetCertificate = engineGetCertificate(str2);
                xf xfVar = new xf(PKCSObjectIdentifiers.x509Certificate, new j(EngineGetCertificate.getEncoded()));
                Cimport cimport7 = new Cimport();
                if (EngineGetCertificate instanceof PKCS12BagAttributeCarrier) {
                    PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) EngineGetCertificate;
                    Ccatch ccatch5 = PKCSObjectIdentifiers.pkcs_9_at_friendlyName;
                    Cimplements cimplements2 = (Cimplements) pKCS12BagAttributeCarrier2.getBagAttribute(ccatch5);
                    if (cimplements2 != null) {
                        enumeration2 = enumerationM34854for2;
                        if (!cimplements2.getString().equals(str2)) {
                        }
                        ccatch = PKCSObjectIdentifiers.pkcs_9_at_localKeyId;
                        if (pKCS12BagAttributeCarrier2.getBagAttribute(ccatch) == null) {
                            pKCS12BagAttributeCarrier2.setBagAttribute(ccatch, m34848new(EngineGetCertificate.getPublicKey()));
                        }
                        bagAttributeKeys = pKCS12BagAttributeCarrier2.getBagAttributeKeys();
                        z3 = false;
                        while (bagAttributeKeys.hasMoreElements()) {
                            Ccatch ccatch6 = (Ccatch) bagAttributeKeys.nextElement();
                            Enumeration enumeration3 = bagAttributeKeys;
                            Cimport cimport8 = new Cimport();
                            cimport8.m3516do(ccatch6);
                            cimport8.m3516do(new q(pKCS12BagAttributeCarrier2.getBagAttribute(ccatch6)));
                            cimport7.m3516do(new n(cimport8));
                            bagAttributeKeys = enumeration3;
                            z3 = true;
                        }
                    } else {
                        enumeration2 = enumerationM34854for2;
                    }
                    pKCS12BagAttributeCarrier2.setBagAttribute(ccatch5, new Cimplements(str2));
                    ccatch = PKCSObjectIdentifiers.pkcs_9_at_localKeyId;
                    if (pKCS12BagAttributeCarrier2.getBagAttribute(ccatch) == null) {
                    }
                    bagAttributeKeys = pKCS12BagAttributeCarrier2.getBagAttributeKeys();
                    z3 = false;
                    while (bagAttributeKeys.hasMoreElements()) {
                    }
                } else {
                    enumeration2 = enumerationM34854for2;
                    z3 = false;
                }
                if (!z3) {
                    Cimport cimport9 = new Cimport();
                    cimport9.m3516do(PKCSObjectIdentifiers.pkcs_9_at_localKeyId);
                    cimport9.m3516do(new q(m34848new(EngineGetCertificate.getPublicKey())));
                    cimport7.m3516do(new n(cimport9));
                    Cimport cimport10 = new Cimport();
                    cimport10.m3516do(PKCSObjectIdentifiers.pkcs_9_at_friendlyName);
                    cimport10.m3516do(new q(new Cimplements(str2)));
                    cimport7.m3516do(new n(cimport10));
                }
                cimport6.m3516do(new or1(PKCSObjectIdentifiers.certBag, xfVar.toASN1Primitive(), new q(cimport7)));
                hashtable.put(EngineGetCertificate, EngineGetCertificate);
                enumerationM34854for2 = enumeration2;
            } catch (CertificateEncodingException e) {
                throw new IOException("Error encoding certificate: " + e.toString());
            }
        }
        Enumeration enumerationM34854for3 = this.f31394new.m34854for();
        while (enumerationM34854for3.hasMoreElements()) {
            try {
                String str3 = (String) enumerationM34854for3.nextElement();
                ?? r7 = (Certificate) this.f31394new.m34855if(str3);
                if (this.f31393if.m34855if(str3) == null) {
                    xf xfVar2 = new xf(PKCSObjectIdentifiers.x509Certificate, new j(r7.getEncoded()));
                    Cimport cimport11 = new Cimport();
                    if (r7 instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) r7;
                        Ccatch ccatch7 = PKCSObjectIdentifiers.pkcs_9_at_friendlyName;
                        Cimplements cimplements3 = (Cimplements) pKCS12BagAttributeCarrier3.getBagAttribute(ccatch7);
                        if (cimplements3 == null || !cimplements3.getString().equals(str3)) {
                            pKCS12BagAttributeCarrier3.setBagAttribute(ccatch7, new Cimplements(str3));
                        }
                        Enumeration bagAttributeKeys3 = pKCS12BagAttributeCarrier3.getBagAttributeKeys();
                        z2 = false;
                        while (bagAttributeKeys3.hasMoreElements()) {
                            Enumeration enumeration4 = enumerationM34854for3;
                            Ccatch ccatch8 = (Ccatch) bagAttributeKeys3.nextElement();
                            Enumeration enumeration5 = bagAttributeKeys3;
                            if (ccatch8.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                bagAttributeKeys3 = enumeration5;
                                enumerationM34854for3 = enumeration4;
                            } else {
                                Cimport cimport12 = new Cimport();
                                cimport12.m3516do(ccatch8);
                                cimport12.m3516do(new q(pKCS12BagAttributeCarrier3.getBagAttribute(ccatch8)));
                                cimport11.m3516do(new n(cimport12));
                                bagAttributeKeys3 = enumeration5;
                                enumerationM34854for3 = enumeration4;
                                z2 = true;
                            }
                        }
                        enumeration = enumerationM34854for3;
                    } else {
                        enumeration = enumerationM34854for3;
                        z2 = false;
                    }
                    if (!z2) {
                        Cimport cimport13 = new Cimport();
                        cimport13.m3516do(PKCSObjectIdentifiers.pkcs_9_at_friendlyName);
                        cimport13.m3516do(new q(new Cimplements(str3)));
                        cimport11.m3516do(new n(cimport13));
                    }
                    cimport6.m3516do(new or1(PKCSObjectIdentifiers.certBag, xfVar2.toASN1Primitive(), new q(cimport11)));
                    hashtable.put(r7, r7);
                    enumerationM34854for3 = enumeration;
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException("Error encoding certificate: " + e2.toString());
            }
        }
        ?? M34846goto = m34846goto();
        Enumeration enumerationKeys = this.f31396try.keys();
        while (enumerationKeys.hasMoreElements()) {
            try {
                ?? r72 = (Certificate) this.f31396try.get((Cnew) enumerationKeys.nextElement());
                if (M34846goto.contains(r72) && hashtable.get(r72) == null) {
                    xf xfVar3 = new xf(PKCSObjectIdentifiers.x509Certificate, new j(r72.getEncoded()));
                    Cimport cimport14 = new Cimport();
                    if (r72 instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier4 = (PKCS12BagAttributeCarrier) r72;
                        Enumeration bagAttributeKeys4 = pKCS12BagAttributeCarrier4.getBagAttributeKeys();
                        while (bagAttributeKeys4.hasMoreElements()) {
                            Ccatch ccatch9 = (Ccatch) bagAttributeKeys4.nextElement();
                            if (!ccatch9.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                Cimport cimport15 = new Cimport();
                                cimport15.m3516do(ccatch9);
                                cimport15.m3516do(new q(pKCS12BagAttributeCarrier4.getBagAttribute(ccatch9)));
                                cimport14.m3516do(new n(cimport15));
                                hashtable = hashtable;
                            }
                        }
                    }
                    Object obj = hashtable;
                    cimport6.m3516do(new or1(PKCSObjectIdentifiers.certBag, xfVar3.toASN1Primitive(), new q(cimport14)));
                    hashtable = obj;
                }
            } catch (CertificateEncodingException e3) {
                throw new IOException("Error encoding certificate: " + e3.toString());
            }
        }
        byte[] bArrM34851try = m34851try(true, b1Var, cArr, false, new n(cimport6).m32764do(ASN1Encoding.DER));
        Ccatch ccatch10 = PKCSObjectIdentifiers.data;
        a5 a5Var = new a5(new er[]{new er(ccatch10, cthrows), new er(PKCSObjectIdentifiers.encryptedData, new i70(ccatch10, b1Var, new Cthrows(bArrM34851try)).toASN1Primitive())});
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        (z ? new l(byteArrayOutputStream) : new Cfinally(byteArrayOutputStream)).mo32770const(a5Var);
        er erVar = new er(ccatch10, new Cthrows(byteArrayOutputStream.toByteArray()));
        byte[] bArr3 = new byte[this.f31388const];
        this.f31390else.nextBytes(bArr3);
        try {
            (z ? new l(outputStream) : new Cfinally(outputStream)).mo32770const(new id1(erVar, new yw0(new v00(this.f31386catch, m34847if(this.f31386catch.m420new(), bArr3, this.f31387class, cArr, false, ((Cclass) erVar.m1997new()).mo5490const())), bArr3, this.f31387class)));
        } catch (Exception e4) {
            throw new IOException("error constructing MAC: " + e4.toString());
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static byte[] m34844else(org.bouncycastle.asn1.x509.Ctry ctry) {
        Digest digestM8176if = u00.m8176if();
        byte[] bArr = new byte[digestM8176if.getDigestSize()];
        byte[] bArrM33057const = ctry.m33296this().m33057const();
        digestM8176if.update(bArrM33057const, 0, bArrM33057const.length);
        digestM8176if.doFinal(bArr, 0);
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    private Cipher m34845for(int i, char[] cArr, b1 b1Var) throws NoSuchPaddingException, InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec of0Var;
        m91 m91VarM4870try = m91.m4870try(b1Var.m419else());
        t91 t91VarM7786new = t91.m7786new(m91VarM4870try.m4871case().m9564case());
        b1 b1VarM418try = b1.m418try(m91VarM4870try.m4872new());
        SecretKeyFactory secretKeyFactoryCreateSecretKeyFactory = this.f31389do.createSecretKeyFactory(m91VarM4870try.m4871case().m9565new().m32795super());
        SecretKey secretKeyGenerateSecret = t91VarM7786new.m7790this() ? secretKeyFactoryCreateSecretKeyFactory.generateSecret(new PBEKeySpec(cArr, t91VarM7786new.m7789goto(), m34841break(t91VarM7786new.m7791try()), f31383while.m34852do(b1VarM418try))) : secretKeyFactoryCreateSecretKeyFactory.generateSecret(new q91(cArr, t91VarM7786new.m7789goto(), m34841break(t91VarM7786new.m7791try()), f31383while.m34852do(b1VarM418try), t91VarM7786new.m7788else()));
        Cipher cipher = Cipher.getInstance(m91VarM4870try.m4872new().m8274new().m32795super());
        ASN1Encodable aSN1EncodableM8273case = m91VarM4870try.m4872new().m8273case();
        if (aSN1EncodableM8273case instanceof Cclass) {
            of0Var = new IvParameterSpec(Cclass.m32796catch(aSN1EncodableM8273case).mo5490const());
        } else {
            pf0 pf0VarM6000case = pf0.m6000case(aSN1EncodableM8273case);
            of0Var = new of0(pf0VarM6000case.m6002new(), pf0VarM6000case.m6003try());
        }
        cipher.init(i, secretKeyGenerateSecret, of0Var);
        return cipher;
    }

    /* renamed from: goto, reason: not valid java name */
    private Set m34846goto() {
        HashSet hashSet = new HashSet();
        Enumeration enumerationM34854for = this.f31393if.m34854for();
        while (enumerationM34854for.hasMoreElements()) {
            Certificate[] certificateArrEngineGetCertificateChain = engineGetCertificateChain((String) enumerationM34854for.nextElement());
            for (int i = 0; i != certificateArrEngineGetCertificateChain.length; i++) {
                hashSet.add(certificateArrEngineGetCertificateChain[i]);
            }
        }
        Enumeration enumerationM34854for2 = this.f31394new.m34854for();
        while (enumerationM34854for2.hasMoreElements()) {
            hashSet.add(engineGetCertificate((String) enumerationM34854for2.nextElement()));
        }
        return hashSet;
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m34847if(Ccatch ccatch, byte[] bArr, int i, char[] cArr, boolean z, byte[] bArr2) throws Exception {
        PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i);
        Mac macCreateMac = this.f31389do.createMac(ccatch.m32795super());
        macCreateMac.init(new ca1(cArr, z), pBEParameterSpec);
        macCreateMac.update(bArr2);
        return macCreateMac.doFinal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public w22 m34848new(PublicKey publicKey) {
        try {
            return new w22(m34844else(org.bouncycastle.asn1.x509.Ctry.m33291case(publicKey.getEncoded())));
        } catch (Exception unused) {
            throw new RuntimeException("error creating key");
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public byte[] m34849catch(String str, Key key, ea1 ea1Var, char[] cArr) throws InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            SecretKeyFactory secretKeyFactoryCreateSecretKeyFactory = this.f31389do.createSecretKeyFactory(str);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(ea1Var.m1714new(), ea1Var.m1713case().intValue());
            Cipher cipherCreateCipher = this.f31389do.createCipher(str);
            cipherCreateCipher.init(3, secretKeyFactoryCreateSecretKeyFactory.generateSecret(pBEKeySpec), pBEParameterSpec);
            return cipherCreateCipher.wrap(key);
        } catch (Exception e) {
            throw new IOException("exception encrypting data - " + e.toString());
        }
    }

    @Override // java.security.KeyStoreSpi
    public Enumeration engineAliases() {
        Hashtable hashtable = new Hashtable();
        Enumeration enumerationM34854for = this.f31394new.m34854for();
        while (enumerationM34854for.hasMoreElements()) {
            hashtable.put(enumerationM34854for.nextElement(), "cert");
        }
        Enumeration enumerationM34854for2 = this.f31393if.m34854for();
        while (enumerationM34854for2.hasMoreElements()) {
            String str = (String) enumerationM34854for2.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.keys();
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineContainsAlias(String str) {
        return (this.f31394new.m34855if(str) == null && this.f31393if.m34855if(str) == null) ? false : true;
    }

    @Override // java.security.KeyStoreSpi
    public void engineDeleteEntry(String str) throws KeyStoreException {
        Key key = (Key) this.f31393if.m34857try(str);
        Certificate certificate = (Certificate) this.f31394new.m34857try(str);
        if (certificate != null) {
            this.f31396try.remove(new Cnew(certificate.getPublicKey()));
        }
        if (key != null) {
            String str2 = (String) this.f31391for.remove(str);
            if (str2 != null) {
                certificate = (Certificate) this.f31385case.remove(str2);
            }
            if (certificate != null) {
                this.f31396try.remove(new Cnew(certificate.getPublicKey()));
            }
        }
    }

    @Override // java.security.KeyStoreSpi
    public Certificate engineGetCertificate(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificate.");
        }
        Certificate certificate = (Certificate) this.f31394new.m34855if(str);
        if (certificate != null) {
            return certificate;
        }
        String str2 = (String) this.f31391for.get(str);
        return (Certificate) (str2 != null ? this.f31385case.get(str2) : this.f31385case.get(str));
    }

    @Override // java.security.KeyStoreSpi
    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration enumerationM34853do = this.f31394new.m34853do();
        Enumeration enumerationM34854for = this.f31394new.m34854for();
        while (enumerationM34853do.hasMoreElements()) {
            Certificate certificate2 = (Certificate) enumerationM34853do.nextElement();
            String str = (String) enumerationM34854for.nextElement();
            if (certificate2.equals(certificate)) {
                return str;
            }
        }
        Enumeration enumerationElements = this.f31385case.elements();
        Enumeration enumerationKeys = this.f31385case.keys();
        while (enumerationElements.hasMoreElements()) {
            Certificate certificate3 = (Certificate) enumerationElements.nextElement();
            String str2 = (String) enumerationKeys.nextElement();
            if (certificate3.equals(certificate)) {
                return str2;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    @Override // java.security.KeyStoreSpi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Certificate[] engineGetCertificateChain(String str) {
        Certificate certificate;
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificateChain.");
        }
        Certificate[] certificateArr = null;
        if (!engineIsKeyEntry(str)) {
            return null;
        }
        Certificate certificateEngineGetCertificate = engineGetCertificate(str);
        if (certificateEngineGetCertificate != null) {
            Vector vector = new Vector();
            while (certificateEngineGetCertificate != null) {
                X509Certificate x509Certificate = (X509Certificate) certificateEngineGetCertificate;
                byte[] extensionValue = x509Certificate.getExtensionValue(org.bouncycastle.asn1.x509.Cif.f29330static.m32795super());
                if (extensionValue != null) {
                    try {
                        c5 c5VarM743else = c5.m743else(new org.bouncycastle.asn1.Celse(((Cclass) new org.bouncycastle.asn1.Celse(extensionValue).m33002break()).mo5490const()).m33002break());
                        certificate = c5VarM743else.m747this() != null ? (Certificate) this.f31396try.get(new Cnew(c5VarM743else.m747this())) : null;
                    } catch (IOException e) {
                        throw new RuntimeException(e.toString());
                    }
                }
                if (certificate == null) {
                    Principal issuerDN = x509Certificate.getIssuerDN();
                    if (!issuerDN.equals(x509Certificate.getSubjectDN())) {
                        Enumeration enumerationKeys = this.f31396try.keys();
                        while (true) {
                            if (!enumerationKeys.hasMoreElements()) {
                                break;
                            }
                            X509Certificate x509Certificate2 = (X509Certificate) this.f31396try.get(enumerationKeys.nextElement());
                            if (x509Certificate2.getSubjectDN().equals(issuerDN)) {
                                try {
                                    x509Certificate.verify(x509Certificate2.getPublicKey());
                                    certificate = x509Certificate2;
                                    break;
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                if (!vector.contains(certificateEngineGetCertificate)) {
                    vector.addElement(certificateEngineGetCertificate);
                    if (certificate != certificateEngineGetCertificate) {
                        certificateEngineGetCertificate = certificate;
                    }
                }
                certificateEngineGetCertificate = null;
            }
            int size = vector.size();
            certificateArr = new Certificate[size];
            for (int i = 0; i != size; i++) {
                certificateArr[i] = (Certificate) vector.elementAt(i);
            }
        }
        return certificateArr;
    }

    @Override // java.security.KeyStoreSpi
    public Date engineGetCreationDate(String str) {
        Objects.requireNonNull(str, "alias == null");
        if (this.f31393if.m34855if(str) == null && this.f31394new.m34855if(str) == null) {
            return null;
        }
        return new Date();
    }

    @Override // java.security.KeyStoreSpi
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        if (str != null) {
            return (Key) this.f31393if.m34855if(str);
        }
        throw new IllegalArgumentException("null alias passed to getKey.");
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsCertificateEntry(String str) {
        return this.f31394new.m34855if(str) != null && this.f31393if.m34855if(str) == null;
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsKeyEntry(String str) {
        return this.f31393if.m34855if(str) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d3  */
    /* JADX WARN: Type inference failed for: r0v21, types: [org.bouncycastle.jcajce.provider.keystore.pkcs12.do$goto] */
    /* JADX WARN: Type inference failed for: r17v10, types: [org.bouncycastle.asn1.class] */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v14, types: [org.bouncycastle.asn1.class] */
    /* JADX WARN: Type inference failed for: r17v15 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object, java.security.cert.Certificate] */
    /* JADX WARN: Type inference failed for: r4v20, types: [org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r7v34, types: [org.bouncycastle.jcajce.provider.keystore.pkcs12.do$goto] */
    @Override // java.security.KeyStoreSpi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, InvalidKeyException, CertificateException, InvalidAlgorithmParameterException {
        boolean z;
        boolean z2;
        String string;
        Cclass cclass;
        boolean z3;
        int i;
        boolean z4;
        Csuper csuper;
        ASN1Encodable aSN1Encodable;
        ?? string2;
        ?? r17;
        ASN1Encodable aSN1Encodable2;
        if (inputStream == null) {
            return;
        }
        Objects.requireNonNull(cArr, "No password supplied for PKCS#12 KeyStore.");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        bufferedInputStream.mark(10);
        if (bufferedInputStream.read() != 48) {
            throw new IOException("stream does not represent a PKCS12 key store");
        }
        bufferedInputStream.reset();
        try {
            id1 id1VarM3381try = id1.m3381try(new org.bouncycastle.asn1.Celse(bufferedInputStream).m33002break());
            er erVarM3383new = id1VarM3381try.m3383new();
            Vector vector = new Vector();
            int i2 = 1;
            int i3 = 0;
            if (id1VarM3381try.m3382case() != null) {
                yw0 yw0VarM3382case = id1VarM3381try.m3382case();
                v00 v00VarM9975case = yw0VarM3382case.m9975case();
                this.f31386catch = v00VarM9975case.m8709new();
                byte[] bArrM9976else = yw0VarM3382case.m9976else();
                this.f31387class = m34841break(yw0VarM3382case.m9977try());
                this.f31388const = bArrM9976else.length;
                byte[] bArrMo5490const = ((Cclass) erVarM3383new.m1997new()).mo5490const();
                try {
                    byte[] bArrM34847if = m34847if(this.f31386catch.m420new(), bArrM9976else, this.f31387class, cArr, false, bArrMo5490const);
                    byte[] bArrM8710try = v00VarM9975case.m8710try();
                    if (q3.m6360abstract(bArrM34847if, bArrM8710try)) {
                        z = false;
                    } else {
                        if (cArr.length > 0) {
                            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                        }
                        if (!q3.m6360abstract(m34847if(this.f31386catch.m420new(), bArrM9976else, this.f31387class, cArr, true, bArrMo5490const), bArrM8710try)) {
                            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                        }
                        z = true;
                    }
                } catch (IOException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new IOException("error constructing MAC: " + e2.toString());
                }
            }
            C0439do c0439do = null;
            this.f31393if = new Cgoto();
            this.f31391for = new Hashtable();
            if (erVarM3383new.m1998try().equals(PKCSObjectIdentifiers.data)) {
                er[] erVarArrM41try = a5.m39case(new org.bouncycastle.asn1.Celse(((Cclass) erVarM3383new.m1997new()).mo5490const()).m33002break()).m41try();
                int i4 = 0;
                z2 = false;
                while (i4 != erVarArrM41try.length) {
                    if (erVarArrM41try[i4].m1998try().equals(PKCSObjectIdentifiers.data)) {
                        Csuper csuper2 = (Csuper) new org.bouncycastle.asn1.Celse(((Cclass) erVarArrM41try[i4].m1997new()).mo5490const()).m33002break();
                        int i5 = 0;
                        while (i5 != csuper2.size()) {
                            or1 or1VarM5740else = or1.m5740else(csuper2.mo33075final(i5));
                            if (or1VarM5740else.m5743try().equals(PKCSObjectIdentifiers.pkcs8ShroudedKeyBag)) {
                                o70 o70VarM5495case = o70.m5495case(or1VarM5740else.m5741case());
                                PrivateKey privateKeyM34850this = m34850this(o70VarM5495case.m5497try(), o70VarM5495case.m5496new(), cArr, z);
                                if (or1VarM5740else.m5742new() != null) {
                                    Enumeration enumerationM33159throw = or1VarM5740else.m5742new().m33159throw();
                                    C0439do c0439do2 = c0439do;
                                    r17 = c0439do2;
                                    string2 = c0439do2;
                                    while (enumerationM33159throw.hasMoreElements()) {
                                        Csuper csuper3 = (Csuper) enumerationM33159throw.nextElement();
                                        Ccatch ccatch = (Ccatch) csuper3.mo33075final(i3);
                                        Cthrow cthrow = (Cthrow) csuper3.mo33075final(i2);
                                        if (cthrow.size() > 0) {
                                            aSN1Encodable2 = (Cfinal) cthrow.m33158super(0);
                                            if (privateKeyM34850this instanceof PKCS12BagAttributeCarrier) {
                                                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) privateKeyM34850this;
                                                ASN1Encodable bagAttribute = pKCS12BagAttributeCarrier.getBagAttribute(ccatch);
                                                if (bagAttribute == null) {
                                                    pKCS12BagAttributeCarrier.setBagAttribute(ccatch, aSN1Encodable2);
                                                } else if (!bagAttribute.toASN1Primitive().equals(aSN1Encodable2)) {
                                                    throw new IOException("attempt to add existing attribute with different value");
                                                }
                                            }
                                        } else {
                                            aSN1Encodable2 = null;
                                        }
                                        if (ccatch.equals(PKCSObjectIdentifiers.pkcs_9_at_friendlyName)) {
                                            string2 = ((Cimplements) aSN1Encodable2).getString();
                                            this.f31393if.m34856new(string2, privateKeyM34850this);
                                        } else if (ccatch.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                            r17 = (Cclass) aSN1Encodable2;
                                        }
                                        i2 = 1;
                                        i3 = 0;
                                        string2 = string2;
                                    }
                                } else {
                                    string2 = 0;
                                    r17 = null;
                                }
                                if (r17 != null) {
                                    String str = new String(org.bouncycastle.util.encoders.Cfor.m36327case(r17.mo5490const()));
                                    if (string2 == 0) {
                                        this.f31393if.m34856new(str, privateKeyM34850this);
                                    } else {
                                        this.f31391for.put(string2, str);
                                    }
                                } else {
                                    this.f31393if.m34856new("unmarked", privateKeyM34850this);
                                    z2 = true;
                                }
                            } else if (or1VarM5740else.m5743try().equals(PKCSObjectIdentifiers.certBag)) {
                                vector.addElement(or1VarM5740else);
                            } else {
                                System.out.println("extra in data " + or1VarM5740else.m5743try());
                                System.out.println(Cwhile.m9155for(or1VarM5740else));
                            }
                            i5++;
                            c0439do = null;
                            i2 = 1;
                            i3 = 0;
                        }
                        z3 = z;
                        i = i4;
                    } else if (erVarArrM41try[i4].m1998try().equals(PKCSObjectIdentifiers.encryptedData)) {
                        i70 i70VarM3301else = i70.m3301else(erVarArrM41try[i4].m1997new());
                        i = i4;
                        Csuper csuper4 = (Csuper) Cfinal.m33015else(m34851try(false, i70VarM3301else.m3302case(), cArr, z, i70VarM3301else.m3303new().mo5490const()));
                        int i6 = 0;
                        while (i6 != csuper4.size()) {
                            or1 or1VarM5740else2 = or1.m5740else(csuper4.mo33075final(i6));
                            if (or1VarM5740else2.m5743try().equals(PKCSObjectIdentifiers.certBag)) {
                                vector.addElement(or1VarM5740else2);
                                z4 = z;
                                csuper = csuper4;
                            } else if (or1VarM5740else2.m5743try().equals(PKCSObjectIdentifiers.pkcs8ShroudedKeyBag)) {
                                o70 o70VarM5495case2 = o70.m5495case(or1VarM5740else2.m5741case());
                                PrivateKey privateKeyM34850this2 = m34850this(o70VarM5495case2.m5497try(), o70VarM5495case2.m5496new(), cArr, z);
                                ?? r4 = (PKCS12BagAttributeCarrier) privateKeyM34850this2;
                                Enumeration enumerationM33159throw2 = or1VarM5740else2.m5742new().m33159throw();
                                Cclass cclass2 = null;
                                String string3 = null;
                                while (enumerationM33159throw2.hasMoreElements()) {
                                    Csuper csuper5 = (Csuper) enumerationM33159throw2.nextElement();
                                    boolean z5 = z;
                                    Ccatch ccatch2 = (Ccatch) csuper5.mo33075final(0);
                                    Csuper csuper6 = csuper4;
                                    Cthrow cthrow2 = (Cthrow) csuper5.mo33075final(1);
                                    if (cthrow2.size() > 0) {
                                        aSN1Encodable = (Cfinal) cthrow2.m33158super(0);
                                        ASN1Encodable bagAttribute2 = r4.getBagAttribute(ccatch2);
                                        if (bagAttribute2 == null) {
                                            r4.setBagAttribute(ccatch2, aSN1Encodable);
                                        } else if (!bagAttribute2.toASN1Primitive().equals(aSN1Encodable)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    } else {
                                        aSN1Encodable = null;
                                    }
                                    if (ccatch2.equals(PKCSObjectIdentifiers.pkcs_9_at_friendlyName)) {
                                        string3 = ((Cimplements) aSN1Encodable).getString();
                                        this.f31393if.m34856new(string3, privateKeyM34850this2);
                                    } else if (ccatch2.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                        cclass2 = (Cclass) aSN1Encodable;
                                    }
                                    z = z5;
                                    csuper4 = csuper6;
                                }
                                z4 = z;
                                csuper = csuper4;
                                String str2 = new String(org.bouncycastle.util.encoders.Cfor.m36327case(cclass2.mo5490const()));
                                if (string3 == null) {
                                    this.f31393if.m34856new(str2, privateKeyM34850this2);
                                } else {
                                    this.f31391for.put(string3, str2);
                                }
                            } else {
                                z4 = z;
                                csuper = csuper4;
                                if (or1VarM5740else2.m5743try().equals(PKCSObjectIdentifiers.keyBag)) {
                                    PrivateKey privateKey = org.bouncycastle.jce.provider.Cdo.getPrivateKey(org.bouncycastle.asn1.pkcs.Cdo.m33100try(or1VarM5740else2.m5741case()));
                                    PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) privateKey;
                                    Enumeration enumerationM33159throw3 = or1VarM5740else2.m5742new().m33159throw();
                                    Cclass cclass3 = null;
                                    String string4 = null;
                                    while (enumerationM33159throw3.hasMoreElements()) {
                                        Csuper csuperM33129catch = Csuper.m33129catch(enumerationM33159throw3.nextElement());
                                        Ccatch ccatchM32790throw = Ccatch.m32790throw(csuperM33129catch.mo33075final(0));
                                        Cthrow cthrowM33151class = Cthrow.m33151class(csuperM33129catch.mo33075final(1));
                                        if (cthrowM33151class.size() > 0) {
                                            Cfinal cfinal = (Cfinal) cthrowM33151class.m33158super(0);
                                            ASN1Encodable bagAttribute3 = pKCS12BagAttributeCarrier2.getBagAttribute(ccatchM32790throw);
                                            if (bagAttribute3 == null) {
                                                pKCS12BagAttributeCarrier2.setBagAttribute(ccatchM32790throw, cfinal);
                                            } else if (!bagAttribute3.toASN1Primitive().equals(cfinal)) {
                                                throw new IOException("attempt to add existing attribute with different value");
                                            }
                                            if (ccatchM32790throw.equals(PKCSObjectIdentifiers.pkcs_9_at_friendlyName)) {
                                                string4 = ((Cimplements) cfinal).getString();
                                                this.f31393if.m34856new(string4, privateKey);
                                            } else if (ccatchM32790throw.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                                cclass3 = (Cclass) cfinal;
                                            }
                                        }
                                    }
                                    String str3 = new String(org.bouncycastle.util.encoders.Cfor.m36327case(cclass3.mo5490const()));
                                    if (string4 == null) {
                                        this.f31393if.m34856new(str3, privateKey);
                                    } else {
                                        this.f31391for.put(string4, str3);
                                    }
                                } else {
                                    System.out.println("extra in encryptedData " + or1VarM5740else2.m5743try());
                                    System.out.println(Cwhile.m9155for(or1VarM5740else2));
                                }
                            }
                            i6++;
                            z = z4;
                            csuper4 = csuper;
                        }
                        z3 = z;
                    } else {
                        z3 = z;
                        i = i4;
                        System.out.println("extra " + erVarArrM41try[i].m1998try().m32795super());
                        System.out.println("extra " + Cwhile.m9155for(erVarArrM41try[i].m1997new()));
                    }
                    i4 = i + 1;
                    z = z3;
                    c0439do = null;
                    i2 = 1;
                    i3 = 0;
                }
            } else {
                z2 = false;
            }
            this.f31394new = new Cgoto();
            this.f31396try = new Hashtable();
            this.f31385case = new Hashtable();
            for (int i7 = 0; i7 != vector.size(); i7++) {
                or1 or1Var = (or1) vector.elementAt(i7);
                xf xfVarM9486case = xf.m9486case(or1Var.m5741case());
                if (!xfVarM9486case.m9487new().equals(PKCSObjectIdentifiers.x509Certificate)) {
                    throw new RuntimeException("Unsupported certificate type: " + xfVarM9486case.m9487new());
                }
                try {
                    ?? GenerateCertificate = this.f31392goto.generateCertificate(new ByteArrayInputStream(((Cclass) xfVarM9486case.m9488try()).mo5490const()));
                    if (or1Var.m5742new() != null) {
                        Enumeration enumerationM33159throw4 = or1Var.m5742new().m33159throw();
                        string = null;
                        cclass = null;
                        while (enumerationM33159throw4.hasMoreElements()) {
                            Csuper csuperM33129catch2 = Csuper.m33129catch(enumerationM33159throw4.nextElement());
                            Ccatch ccatchM32790throw2 = Ccatch.m32790throw(csuperM33129catch2.mo33075final(0));
                            Cthrow cthrowM33151class2 = Cthrow.m33151class(csuperM33129catch2.mo33075final(1));
                            if (cthrowM33151class2.size() > 0) {
                                Cfinal cfinal2 = (Cfinal) cthrowM33151class2.m33158super(0);
                                if (GenerateCertificate instanceof PKCS12BagAttributeCarrier) {
                                    PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) GenerateCertificate;
                                    ASN1Encodable bagAttribute4 = pKCS12BagAttributeCarrier3.getBagAttribute(ccatchM32790throw2);
                                    if (bagAttribute4 == null) {
                                        pKCS12BagAttributeCarrier3.setBagAttribute(ccatchM32790throw2, cfinal2);
                                    } else if (!bagAttribute4.toASN1Primitive().equals(cfinal2)) {
                                        throw new IOException("attempt to add existing attribute with different value");
                                    }
                                }
                                if (ccatchM32790throw2.equals(PKCSObjectIdentifiers.pkcs_9_at_friendlyName)) {
                                    string = ((Cimplements) cfinal2).getString();
                                } else if (ccatchM32790throw2.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                    cclass = (Cclass) cfinal2;
                                }
                            }
                        }
                    } else {
                        string = null;
                        cclass = null;
                    }
                    this.f31396try.put(new Cnew(GenerateCertificate.getPublicKey()), GenerateCertificate);
                    if (!z2) {
                        if (cclass != null) {
                            this.f31385case.put(new String(org.bouncycastle.util.encoders.Cfor.m36327case(cclass.mo5490const())), GenerateCertificate);
                        }
                        if (string != null) {
                            this.f31394new.m34856new(string, GenerateCertificate);
                        }
                    } else if (this.f31385case.isEmpty()) {
                        String str4 = new String(org.bouncycastle.util.encoders.Cfor.m36327case(m34848new(GenerateCertificate.getPublicKey()).m9024else()));
                        this.f31385case.put(str4, GenerateCertificate);
                        Cgoto cgoto = this.f31393if;
                        cgoto.m34856new(str4, cgoto.m34857try("unmarked"));
                    }
                } catch (Exception e3) {
                    throw new RuntimeException(e3.toString());
                }
            }
        } catch (Exception e4) {
            throw new IOException(e4.getMessage());
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        if (this.f31393if.m34855if(str) == null) {
            this.f31394new.m34856new(str, certificate);
            this.f31396try.put(new Cnew(certificate.getPublicKey()), certificate);
        } else {
            throw new KeyStoreException("There is a key entry with the name " + str + ".");
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        boolean z = key instanceof PrivateKey;
        if (!z) {
            throw new KeyStoreException("PKCS12 does not support non-PrivateKeys");
        }
        if (z && certificateArr == null) {
            throw new KeyStoreException("no certificate chain for private key");
        }
        if (this.f31393if.m34855if(str) != null) {
            engineDeleteEntry(str);
        }
        this.f31393if.m34856new(str, key);
        if (certificateArr != null) {
            this.f31394new.m34856new(str, certificateArr[0]);
            for (int i = 0; i != certificateArr.length; i++) {
                this.f31396try.put(new Cnew(certificateArr[i].getPublicKey()), certificateArr[i]);
            }
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new RuntimeException("operation not supported");
    }

    @Override // java.security.KeyStoreSpi
    public int engineSize() {
        Hashtable hashtable = new Hashtable();
        Enumeration enumerationM34854for = this.f31394new.m34854for();
        while (enumerationM34854for.hasMoreElements()) {
            hashtable.put(enumerationM34854for.nextElement(), "cert");
        }
        Enumeration enumerationM34854for2 = this.f31393if.m34854for();
        while (enumerationM34854for2.hasMoreElements()) {
            String str = (String) enumerationM34854for2.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.size();
    }

    @Override // java.security.KeyStoreSpi
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        m34842case(outputStream, cArr, false);
    }

    @Override // java.security.KeyStoreSpi
    public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException, InvalidAlgorithmParameterException {
        ha1 ha1Var;
        char[] password;
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'param' arg cannot be null");
        }
        boolean z = loadStoreParameter instanceof ha1;
        if (!z && !(loadStoreParameter instanceof jo0)) {
            throw new IllegalArgumentException("No support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
        if (z) {
            ha1Var = (ha1) loadStoreParameter;
        } else {
            jo0 jo0Var = (jo0) loadStoreParameter;
            ha1Var = new ha1(jo0Var.m3974do(), loadStoreParameter.getProtectionParameter(), jo0Var.m3976if());
        }
        KeyStore.ProtectionParameter protectionParameter = loadStoreParameter.getProtectionParameter();
        if (protectionParameter == null) {
            password = null;
        } else {
            if (!(protectionParameter instanceof KeyStore.PasswordProtection)) {
                throw new IllegalArgumentException("No support for protection parameter of type " + protectionParameter.getClass().getName());
            }
            password = ((KeyStore.PasswordProtection) protectionParameter).getPassword();
        }
        m34842case(ha1Var.m2974do(), password, ha1Var.m2975if());
    }

    @Override // org.bouncycastle.jce.interfaces.BCKeyStore
    public void setRandom(SecureRandom secureRandom) {
        this.f31390else = secureRandom;
    }

    /* renamed from: this, reason: not valid java name */
    public PrivateKey m34850this(b1 b1Var, byte[] bArr, char[] cArr, boolean z) throws InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        Ccatch ccatchM420new = b1Var.m420new();
        try {
            if (ccatchM420new.m32794return(PKCSObjectIdentifiers.pkcs_12PbeIds)) {
                ea1 ea1VarM1712try = ea1.m1712try(b1Var.m419else());
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(ea1VarM1712try.m1714new(), m34841break(ea1VarM1712try.m1713case()));
                Cipher cipherCreateCipher = this.f31389do.createCipher(ccatchM420new.m32795super());
                cipherCreateCipher.init(4, new ca1(cArr, z), pBEParameterSpec);
                return (PrivateKey) cipherCreateCipher.unwrap(bArr, "", 2);
            }
            if (ccatchM420new.equals(PKCSObjectIdentifiers.id_PBES2)) {
                return (PrivateKey) m34845for(4, cArr, b1Var).unwrap(bArr, "", 2);
            }
            throw new IOException("exception unwrapping private key - cannot recognise: " + ccatchM420new);
        } catch (Exception e) {
            throw new IOException("exception unwrapping private key - " + e.toString());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m34851try(boolean z, b1 b1Var, char[] cArr, boolean z2, byte[] bArr) throws InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        Ccatch ccatchM420new = b1Var.m420new();
        int i = z ? 1 : 2;
        if (ccatchM420new.m32794return(PKCSObjectIdentifiers.pkcs_12PbeIds)) {
            ea1 ea1VarM1712try = ea1.m1712try(b1Var.m419else());
            try {
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(ea1VarM1712try.m1714new(), ea1VarM1712try.m1713case().intValue());
                ca1 ca1Var = new ca1(cArr, z2);
                Cipher cipherCreateCipher = this.f31389do.createCipher(ccatchM420new.m32795super());
                cipherCreateCipher.init(i, ca1Var, pBEParameterSpec);
                return cipherCreateCipher.doFinal(bArr);
            } catch (Exception e) {
                throw new IOException("exception decrypting data - " + e.toString());
            }
        }
        if (!ccatchM420new.equals(PKCSObjectIdentifiers.id_PBES2)) {
            throw new IOException("unknown PBE algorithm: " + ccatchM420new);
        }
        try {
            return m34845for(i, cArr, b1Var).doFinal(bArr);
        } catch (Exception e2) {
            throw new IOException("exception decrypting data - " + e2.toString());
        }
    }
}
