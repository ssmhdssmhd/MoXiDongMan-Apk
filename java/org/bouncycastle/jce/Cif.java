package org.bouncycastle.jce;

import android.support.v4.b1;
import android.support.v4.jk1;
import android.support.v4.yg;
import android.support.v4.zg;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.Cgoto;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jce.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends yg {

    /* renamed from: new, reason: not valid java name */
    private static Hashtable f31558new = new Hashtable();

    /* renamed from: try, reason: not valid java name */
    private static Hashtable f31559try = new Hashtable();

    /* renamed from: case, reason: not valid java name */
    private static Hashtable f31555case = new Hashtable();

    /* renamed from: else, reason: not valid java name */
    private static Hashtable f31556else = new Hashtable();

    /* renamed from: goto, reason: not valid java name */
    private static Set f31557goto = new HashSet();

    static {
        f31558new.put("MD2WITHRSAENCRYPTION", new Ccatch("1.2.840.113549.1.1.2"));
        f31558new.put("MD2WITHRSA", new Ccatch("1.2.840.113549.1.1.2"));
        f31558new.put("MD5WITHRSAENCRYPTION", new Ccatch("1.2.840.113549.1.1.4"));
        f31558new.put("MD5WITHRSA", new Ccatch("1.2.840.113549.1.1.4"));
        f31558new.put("RSAWITHMD5", new Ccatch("1.2.840.113549.1.1.4"));
        f31558new.put("SHA1WITHRSAENCRYPTION", new Ccatch("1.2.840.113549.1.1.5"));
        f31558new.put("SHA1WITHRSA", new Ccatch("1.2.840.113549.1.1.5"));
        Hashtable hashtable = f31558new;
        Ccatch ccatch = PKCSObjectIdentifiers.sha224WithRSAEncryption;
        hashtable.put("SHA224WITHRSAENCRYPTION", ccatch);
        f31558new.put("SHA224WITHRSA", ccatch);
        Hashtable hashtable2 = f31558new;
        Ccatch ccatch2 = PKCSObjectIdentifiers.sha256WithRSAEncryption;
        hashtable2.put("SHA256WITHRSAENCRYPTION", ccatch2);
        f31558new.put("SHA256WITHRSA", ccatch2);
        Hashtable hashtable3 = f31558new;
        Ccatch ccatch3 = PKCSObjectIdentifiers.sha384WithRSAEncryption;
        hashtable3.put("SHA384WITHRSAENCRYPTION", ccatch3);
        f31558new.put("SHA384WITHRSA", ccatch3);
        Hashtable hashtable4 = f31558new;
        Ccatch ccatch4 = PKCSObjectIdentifiers.sha512WithRSAEncryption;
        hashtable4.put("SHA512WITHRSAENCRYPTION", ccatch4);
        f31558new.put("SHA512WITHRSA", ccatch4);
        Hashtable hashtable5 = f31558new;
        Ccatch ccatch5 = PKCSObjectIdentifiers.id_RSASSA_PSS;
        hashtable5.put("SHA1WITHRSAANDMGF1", ccatch5);
        f31558new.put("SHA224WITHRSAANDMGF1", ccatch5);
        f31558new.put("SHA256WITHRSAANDMGF1", ccatch5);
        f31558new.put("SHA384WITHRSAANDMGF1", ccatch5);
        f31558new.put("SHA512WITHRSAANDMGF1", ccatch5);
        f31558new.put("RSAWITHSHA1", new Ccatch("1.2.840.113549.1.1.5"));
        Hashtable hashtable6 = f31558new;
        Ccatch ccatch6 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd128;
        hashtable6.put("RIPEMD128WITHRSAENCRYPTION", ccatch6);
        f31558new.put("RIPEMD128WITHRSA", ccatch6);
        Hashtable hashtable7 = f31558new;
        Ccatch ccatch7 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd160;
        hashtable7.put("RIPEMD160WITHRSAENCRYPTION", ccatch7);
        f31558new.put("RIPEMD160WITHRSA", ccatch7);
        Hashtable hashtable8 = f31558new;
        Ccatch ccatch8 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd256;
        hashtable8.put("RIPEMD256WITHRSAENCRYPTION", ccatch8);
        f31558new.put("RIPEMD256WITHRSA", ccatch8);
        f31558new.put("SHA1WITHDSA", new Ccatch("1.2.840.10040.4.3"));
        f31558new.put("DSAWITHSHA1", new Ccatch("1.2.840.10040.4.3"));
        Hashtable hashtable9 = f31558new;
        Ccatch ccatch9 = NISTObjectIdentifiers.dsa_with_sha224;
        hashtable9.put("SHA224WITHDSA", ccatch9);
        Hashtable hashtable10 = f31558new;
        Ccatch ccatch10 = NISTObjectIdentifiers.dsa_with_sha256;
        hashtable10.put("SHA256WITHDSA", ccatch10);
        f31558new.put("SHA384WITHDSA", NISTObjectIdentifiers.dsa_with_sha384);
        f31558new.put("SHA512WITHDSA", NISTObjectIdentifiers.dsa_with_sha512);
        Hashtable hashtable11 = f31558new;
        Ccatch ccatch11 = X9ObjectIdentifiers.ecdsa_with_SHA1;
        hashtable11.put("SHA1WITHECDSA", ccatch11);
        Hashtable hashtable12 = f31558new;
        Ccatch ccatch12 = X9ObjectIdentifiers.ecdsa_with_SHA224;
        hashtable12.put("SHA224WITHECDSA", ccatch12);
        Hashtable hashtable13 = f31558new;
        Ccatch ccatch13 = X9ObjectIdentifiers.ecdsa_with_SHA256;
        hashtable13.put("SHA256WITHECDSA", ccatch13);
        Hashtable hashtable14 = f31558new;
        Ccatch ccatch14 = X9ObjectIdentifiers.ecdsa_with_SHA384;
        hashtable14.put("SHA384WITHECDSA", ccatch14);
        Hashtable hashtable15 = f31558new;
        Ccatch ccatch15 = X9ObjectIdentifiers.ecdsa_with_SHA512;
        hashtable15.put("SHA512WITHECDSA", ccatch15);
        f31558new.put("ECDSAWITHSHA1", ccatch11);
        Hashtable hashtable16 = f31558new;
        Ccatch ccatch16 = CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_94;
        hashtable16.put("GOST3411WITHGOST3410", ccatch16);
        f31558new.put("GOST3410WITHGOST3411", ccatch16);
        Hashtable hashtable17 = f31558new;
        Ccatch ccatch17 = CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001;
        hashtable17.put("GOST3411WITHECGOST3410", ccatch17);
        f31558new.put("GOST3411WITHECGOST3410-2001", ccatch17);
        f31558new.put("GOST3411WITHGOST3410-2001", ccatch17);
        f31556else.put(new Ccatch("1.2.840.113549.1.1.5"), "SHA1WITHRSA");
        f31556else.put(ccatch, "SHA224WITHRSA");
        f31556else.put(ccatch2, "SHA256WITHRSA");
        f31556else.put(ccatch3, "SHA384WITHRSA");
        f31556else.put(ccatch4, "SHA512WITHRSA");
        f31556else.put(ccatch16, "GOST3411WITHGOST3410");
        f31556else.put(ccatch17, "GOST3411WITHECGOST3410");
        f31556else.put(new Ccatch("1.2.840.113549.1.1.4"), "MD5WITHRSA");
        f31556else.put(new Ccatch("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        f31556else.put(new Ccatch("1.2.840.10040.4.3"), "SHA1WITHDSA");
        f31556else.put(ccatch11, "SHA1WITHECDSA");
        f31556else.put(ccatch12, "SHA224WITHECDSA");
        f31556else.put(ccatch13, "SHA256WITHECDSA");
        f31556else.put(ccatch14, "SHA384WITHECDSA");
        f31556else.put(ccatch15, "SHA512WITHECDSA");
        f31556else.put(OIWObjectIdentifiers.sha1WithRSA, "SHA1WITHRSA");
        f31556else.put(OIWObjectIdentifiers.dsaWithSHA1, "SHA1WITHDSA");
        f31556else.put(ccatch9, "SHA224WITHDSA");
        f31556else.put(ccatch10, "SHA256WITHDSA");
        f31555case.put(PKCSObjectIdentifiers.rsaEncryption, "RSA");
        f31555case.put(X9ObjectIdentifiers.id_dsa, "DSA");
        f31557goto.add(ccatch11);
        f31557goto.add(ccatch12);
        f31557goto.add(ccatch13);
        f31557goto.add(ccatch14);
        f31557goto.add(ccatch15);
        f31557goto.add(X9ObjectIdentifiers.id_dsa_with_sha1);
        f31557goto.add(ccatch9);
        f31557goto.add(ccatch10);
        f31557goto.add(ccatch16);
        f31557goto.add(ccatch17);
        Ccatch ccatch18 = OIWObjectIdentifiers.idSHA1;
        h hVar = h.f29080do;
        f31559try.put("SHA1WITHRSAANDMGF1", m34941this(new b1(ccatch18, hVar), 20));
        f31559try.put("SHA224WITHRSAANDMGF1", m34941this(new b1(NISTObjectIdentifiers.id_sha224, hVar), 28));
        f31559try.put("SHA256WITHRSAANDMGF1", m34941this(new b1(NISTObjectIdentifiers.id_sha256, hVar), 32));
        f31559try.put("SHA384WITHRSAANDMGF1", m34941this(new b1(NISTObjectIdentifiers.id_sha384, hVar), 48));
        f31559try.put("SHA512WITHRSAANDMGF1", m34941this(new b1(NISTObjectIdentifiers.id_sha512, hVar), 64));
    }

    public Cif(String str, X500Principal x500Principal, PublicKey publicKey, Cthrow cthrow, PrivateKey privateKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        this(str, m34939goto(x500Principal), publicKey, cthrow, privateKey, Cdo.PROVIDER_NAME);
    }

    public Cif(String str, X500Principal x500Principal, PublicKey publicKey, Cthrow cthrow, PrivateKey privateKey, String str2) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        this(str, m34939goto(x500Principal), publicKey, cthrow, privateKey, str2);
    }

    public Cif(String str, Cgoto cgoto, PublicKey publicKey, Cthrow cthrow, PrivateKey privateKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        this(str, cgoto, publicKey, cthrow, privateKey, Cdo.PROVIDER_NAME);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Cif(String str, Cgoto cgoto, PublicKey publicKey, Cthrow cthrow, PrivateKey privateKey, String str2) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        b1 b1Var;
        String strM36356final = Cfor.m36356final(str);
        Ccatch ccatch = (Ccatch) f31558new.get(strM36356final);
        if (ccatch == null) {
            try {
                ccatch = new Ccatch(strM36356final);
            } catch (Exception unused) {
                throw new IllegalArgumentException("Unknown signature type requested");
            }
        }
        if (cgoto == null) {
            throw new IllegalArgumentException("subject must not be null");
        }
        if (publicKey == null) {
            throw new IllegalArgumentException("public key must not be null");
        }
        try {
            try {
                if (f31557goto.contains(ccatch)) {
                    b1Var = new b1(ccatch);
                } else {
                    if (f31559try.containsKey(strM36356final)) {
                        this.f8215if = new b1(ccatch, (ASN1Encodable) f31559try.get(strM36356final));
                        this.f8213do = new zg(cgoto, Ctry.m33291case((Csuper) Cfinal.m33015else(publicKey.getEncoded())), cthrow);
                        Signature signature = str2 != null ? Signature.getInstance(str) : Signature.getInstance(str, str2);
                        signature.initSign(privateKey);
                        signature.update(this.f8213do.m32764do(ASN1Encoding.DER));
                        this.f8214for = new Cinstanceof(signature.sign());
                        return;
                    }
                    b1Var = new b1(ccatch, h.f29080do);
                }
                signature.update(this.f8213do.m32764do(ASN1Encoding.DER));
                this.f8214for = new Cinstanceof(signature.sign());
                return;
            } catch (Exception e) {
                throw new IllegalArgumentException("exception encoding TBS cert request - " + e);
            }
            this.f8213do = new zg(cgoto, Ctry.m33291case((Csuper) Cfinal.m33015else(publicKey.getEncoded())), cthrow);
            if (str2 != null) {
            }
            signature.initSign(privateKey);
        } catch (IOException unused2) {
            throw new IllegalArgumentException("can't encode public key");
        }
        this.f8215if = b1Var;
    }

    public Cif(Csuper csuper) {
        super(csuper);
    }

    public Cif(byte[] bArr) {
        super(m34940super(bArr));
    }

    /* renamed from: break, reason: not valid java name */
    private static String m34936break(Ccatch ccatch) {
        return PKCSObjectIdentifiers.md5.equals(ccatch) ? "MD5" : OIWObjectIdentifiers.idSHA1.equals(ccatch) ? "SHA1" : NISTObjectIdentifiers.id_sha224.equals(ccatch) ? "SHA224" : NISTObjectIdentifiers.id_sha256.equals(ccatch) ? "SHA256" : NISTObjectIdentifiers.id_sha384.equals(ccatch) ? "SHA384" : NISTObjectIdentifiers.id_sha512.equals(ccatch) ? "SHA512" : TeleTrusTObjectIdentifiers.ripemd128.equals(ccatch) ? "RIPEMD128" : TeleTrusTObjectIdentifiers.ripemd160.equals(ccatch) ? "RIPEMD160" : TeleTrusTObjectIdentifiers.ripemd256.equals(ccatch) ? "RIPEMD256" : CryptoProObjectIdentifiers.gostR3411.equals(ccatch) ? "GOST3411" : ccatch.m32795super();
    }

    /* renamed from: const, reason: not valid java name */
    public static String m34937const(b1 b1Var) {
        ASN1Encodable aSN1EncodableM419else = b1Var.m419else();
        if (aSN1EncodableM419else == null || h.f29080do.equals(aSN1EncodableM419else) || !b1Var.m420new().equals(PKCSObjectIdentifiers.id_RSASSA_PSS)) {
            return b1Var.m420new().m32795super();
        }
        return m34936break(jk1.m3909try(aSN1EncodableM419else).m3913new().m420new()) + "withRSAandMGF1";
    }

    /* renamed from: final, reason: not valid java name */
    private void m34938final(Signature signature, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (aSN1Encodable == null || h.f29080do.equals(aSN1Encodable)) {
            return;
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
            if (signature.getAlgorithm().endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e) {
                    throw new SignatureException("Exception extracting parameters: " + e.getMessage());
                }
            }
        } catch (IOException e2) {
            throw new SignatureException("IOException decoding parameters: " + e2.getMessage());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static Cgoto m34939goto(X500Principal x500Principal) {
        try {
            return new Ccase(x500Principal.getEncoded());
        } catch (IOException unused) {
            throw new IllegalArgumentException("can't convert name");
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static Csuper m34940super(byte[] bArr) {
        try {
            return (Csuper) new Celse(bArr).m33002break();
        } catch (Exception unused) {
            throw new IllegalArgumentException("badly encoded request");
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static jk1 m34941this(b1 b1Var, int i) {
        return new jk1(b1Var, new b1(PKCSObjectIdentifiers.id_mgf1, b1Var), new org.bouncycastle.asn1.Cgoto(i), new org.bouncycastle.asn1.Cgoto(1L));
    }

    /* renamed from: catch, reason: not valid java name */
    public PublicKey m34942catch() throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return m34943class(Cdo.PROVIDER_NAME);
    }

    /* renamed from: class, reason: not valid java name */
    public PublicKey m34943class(String str) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        Ctry ctryM10184else = this.f8213do.m10184else();
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(new Cinstanceof(ctryM10184else).m33059super());
            b1 b1VarM33295new = ctryM10184else.m33295new();
            try {
                return str == null ? KeyFactory.getInstance(b1VarM33295new.m420new().m32795super()).generatePublic(x509EncodedKeySpec) : KeyFactory.getInstance(b1VarM33295new.m420new().m32795super(), str).generatePublic(x509EncodedKeySpec);
            } catch (NoSuchAlgorithmException e) {
                if (f31555case.get(b1VarM33295new.m420new()) == null) {
                    throw e;
                }
                String str2 = (String) f31555case.get(b1VarM33295new.m420new());
                return str == null ? KeyFactory.getInstance(str2).generatePublic(x509EncodedKeySpec) : KeyFactory.getInstance(str2, str).generatePublic(x509EncodedKeySpec);
            }
        } catch (IOException unused) {
            throw new InvalidKeyException("error decoding public key");
        } catch (InvalidKeySpecException unused2) {
            throw new InvalidKeyException("error decoding public key");
        }
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new RuntimeException(e.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.support.v4.yg, org.bouncycastle.jce.if] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.security.Signature] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.security.Signature] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.security.Signature] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* renamed from: import, reason: not valid java name */
    public boolean m34944import(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        try {
            str = str == 0 ? Signature.getInstance(m34937const(this.f8215if)) : Signature.getInstance(m34937const(this.f8215if), (String) str);
        } catch (NoSuchAlgorithmException e) {
            if (f31556else.get(this.f8215if.m420new()) == null) {
                throw e;
            }
            String str2 = (String) f31556else.get(this.f8215if.m420new());
            str = str == 0 ? Signature.getInstance(str2) : Signature.getInstance(str2, (String) str);
        }
        m34938final(str, this.f8215if.m419else());
        str.initVerify(publicKey);
        try {
            str.update(this.f8213do.m32764do(ASN1Encoding.DER));
            return str.verify(this.f8214for.m33059super());
        } catch (Exception e2) {
            throw new SignatureException("exception encoding TBS cert request - " + e2);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m34945throw() throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        return m34946while(Cdo.PROVIDER_NAME);
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m34946while(String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        return m34944import(m34943class(str), str);
    }
}
