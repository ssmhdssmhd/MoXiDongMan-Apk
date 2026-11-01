package org.bouncycastle.x509;

import android.support.v4.b1;
import android.support.v4.jk1;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jce.Ccase;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.x509.throw, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthrow {

    /* renamed from: do, reason: not valid java name */
    private static Hashtable f32764do = new Hashtable();

    /* renamed from: if, reason: not valid java name */
    private static Hashtable f32766if = new Hashtable();

    /* renamed from: for, reason: not valid java name */
    private static Set f32765for = new HashSet();

    /* renamed from: org.bouncycastle.x509.throw$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Object f32767do;

        /* renamed from: if, reason: not valid java name */
        public Provider f32768if;

        public Cdo(Object obj, Provider provider) {
            this.f32767do = obj;
            this.f32768if = provider;
        }

        /* renamed from: do, reason: not valid java name */
        public Object m36597do() {
            return this.f32767do;
        }

        /* renamed from: if, reason: not valid java name */
        public Provider m36598if() {
            return this.f32768if;
        }
    }

    static {
        Hashtable hashtable = f32764do;
        Ccatch ccatch = PKCSObjectIdentifiers.md2WithRSAEncryption;
        hashtable.put("MD2WITHRSAENCRYPTION", ccatch);
        f32764do.put("MD2WITHRSA", ccatch);
        Hashtable hashtable2 = f32764do;
        Ccatch ccatch2 = PKCSObjectIdentifiers.md5WithRSAEncryption;
        hashtable2.put("MD5WITHRSAENCRYPTION", ccatch2);
        f32764do.put("MD5WITHRSA", ccatch2);
        Hashtable hashtable3 = f32764do;
        Ccatch ccatch3 = PKCSObjectIdentifiers.sha1WithRSAEncryption;
        hashtable3.put("SHA1WITHRSAENCRYPTION", ccatch3);
        f32764do.put("SHA1WITHRSA", ccatch3);
        Hashtable hashtable4 = f32764do;
        Ccatch ccatch4 = PKCSObjectIdentifiers.sha224WithRSAEncryption;
        hashtable4.put("SHA224WITHRSAENCRYPTION", ccatch4);
        f32764do.put("SHA224WITHRSA", ccatch4);
        Hashtable hashtable5 = f32764do;
        Ccatch ccatch5 = PKCSObjectIdentifiers.sha256WithRSAEncryption;
        hashtable5.put("SHA256WITHRSAENCRYPTION", ccatch5);
        f32764do.put("SHA256WITHRSA", ccatch5);
        Hashtable hashtable6 = f32764do;
        Ccatch ccatch6 = PKCSObjectIdentifiers.sha384WithRSAEncryption;
        hashtable6.put("SHA384WITHRSAENCRYPTION", ccatch6);
        f32764do.put("SHA384WITHRSA", ccatch6);
        Hashtable hashtable7 = f32764do;
        Ccatch ccatch7 = PKCSObjectIdentifiers.sha512WithRSAEncryption;
        hashtable7.put("SHA512WITHRSAENCRYPTION", ccatch7);
        f32764do.put("SHA512WITHRSA", ccatch7);
        Hashtable hashtable8 = f32764do;
        Ccatch ccatch8 = PKCSObjectIdentifiers.id_RSASSA_PSS;
        hashtable8.put("SHA1WITHRSAANDMGF1", ccatch8);
        f32764do.put("SHA224WITHRSAANDMGF1", ccatch8);
        f32764do.put("SHA256WITHRSAANDMGF1", ccatch8);
        f32764do.put("SHA384WITHRSAANDMGF1", ccatch8);
        f32764do.put("SHA512WITHRSAANDMGF1", ccatch8);
        Hashtable hashtable9 = f32764do;
        Ccatch ccatch9 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd160;
        hashtable9.put("RIPEMD160WITHRSAENCRYPTION", ccatch9);
        f32764do.put("RIPEMD160WITHRSA", ccatch9);
        Hashtable hashtable10 = f32764do;
        Ccatch ccatch10 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd128;
        hashtable10.put("RIPEMD128WITHRSAENCRYPTION", ccatch10);
        f32764do.put("RIPEMD128WITHRSA", ccatch10);
        Hashtable hashtable11 = f32764do;
        Ccatch ccatch11 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd256;
        hashtable11.put("RIPEMD256WITHRSAENCRYPTION", ccatch11);
        f32764do.put("RIPEMD256WITHRSA", ccatch11);
        Hashtable hashtable12 = f32764do;
        Ccatch ccatch12 = X9ObjectIdentifiers.id_dsa_with_sha1;
        hashtable12.put("SHA1WITHDSA", ccatch12);
        f32764do.put("DSAWITHSHA1", ccatch12);
        Hashtable hashtable13 = f32764do;
        Ccatch ccatch13 = NISTObjectIdentifiers.dsa_with_sha224;
        hashtable13.put("SHA224WITHDSA", ccatch13);
        Hashtable hashtable14 = f32764do;
        Ccatch ccatch14 = NISTObjectIdentifiers.dsa_with_sha256;
        hashtable14.put("SHA256WITHDSA", ccatch14);
        Hashtable hashtable15 = f32764do;
        Ccatch ccatch15 = NISTObjectIdentifiers.dsa_with_sha384;
        hashtable15.put("SHA384WITHDSA", ccatch15);
        Hashtable hashtable16 = f32764do;
        Ccatch ccatch16 = NISTObjectIdentifiers.dsa_with_sha512;
        hashtable16.put("SHA512WITHDSA", ccatch16);
        Hashtable hashtable17 = f32764do;
        Ccatch ccatch17 = X9ObjectIdentifiers.ecdsa_with_SHA1;
        hashtable17.put("SHA1WITHECDSA", ccatch17);
        f32764do.put("ECDSAWITHSHA1", ccatch17);
        Hashtable hashtable18 = f32764do;
        Ccatch ccatch18 = X9ObjectIdentifiers.ecdsa_with_SHA224;
        hashtable18.put("SHA224WITHECDSA", ccatch18);
        Hashtable hashtable19 = f32764do;
        Ccatch ccatch19 = X9ObjectIdentifiers.ecdsa_with_SHA256;
        hashtable19.put("SHA256WITHECDSA", ccatch19);
        Hashtable hashtable20 = f32764do;
        Ccatch ccatch20 = X9ObjectIdentifiers.ecdsa_with_SHA384;
        hashtable20.put("SHA384WITHECDSA", ccatch20);
        Hashtable hashtable21 = f32764do;
        Ccatch ccatch21 = X9ObjectIdentifiers.ecdsa_with_SHA512;
        hashtable21.put("SHA512WITHECDSA", ccatch21);
        Hashtable hashtable22 = f32764do;
        Ccatch ccatch22 = CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_94;
        hashtable22.put("GOST3411WITHGOST3410", ccatch22);
        f32764do.put("GOST3411WITHGOST3410-94", ccatch22);
        Hashtable hashtable23 = f32764do;
        Ccatch ccatch23 = CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001;
        hashtable23.put("GOST3411WITHECGOST3410", ccatch23);
        f32764do.put("GOST3411WITHECGOST3410-2001", ccatch23);
        f32764do.put("GOST3411WITHGOST3410-2001", ccatch23);
        f32765for.add(ccatch17);
        f32765for.add(ccatch18);
        f32765for.add(ccatch19);
        f32765for.add(ccatch20);
        f32765for.add(ccatch21);
        f32765for.add(ccatch12);
        f32765for.add(ccatch13);
        f32765for.add(ccatch14);
        f32765for.add(ccatch15);
        f32765for.add(ccatch16);
        f32765for.add(ccatch22);
        f32765for.add(ccatch23);
        Ccatch ccatch24 = OIWObjectIdentifiers.idSHA1;
        h hVar = h.f29080do;
        f32766if.put("SHA1WITHRSAANDMGF1", m36594new(new b1(ccatch24, hVar), 20));
        f32766if.put("SHA224WITHRSAANDMGF1", m36594new(new b1(NISTObjectIdentifiers.id_sha224, hVar), 28));
        f32766if.put("SHA256WITHRSAANDMGF1", m36594new(new b1(NISTObjectIdentifiers.id_sha256, hVar), 32));
        f32766if.put("SHA384WITHRSAANDMGF1", m36594new(new b1(NISTObjectIdentifiers.id_sha384, hVar), 48));
        f32766if.put("SHA512WITHRSAANDMGF1", m36594new(new b1(NISTObjectIdentifiers.id_sha512, hVar), 64));
    }

    /* renamed from: break, reason: not valid java name */
    public static b1 m36585break(Ccatch ccatch, String str) {
        if (f32765for.contains(ccatch)) {
            return new b1(ccatch);
        }
        String strM36356final = Cfor.m36356final(str);
        return f32766if.containsKey(strM36356final) ? new b1(ccatch, (ASN1Encodable) f32766if.get(strM36356final)) : new b1(ccatch, h.f29080do);
    }

    /* renamed from: case, reason: not valid java name */
    public static Ccatch m36586case(String str) {
        String strM36356final = Cfor.m36356final(str);
        return f32764do.containsKey(strM36356final) ? (Ccatch) f32764do.get(strM36356final) : new Ccatch(strM36356final);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Signature m36587catch(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str);
    }

    /* renamed from: class, reason: not valid java name */
    public static Signature m36588class(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        return str2 != null ? Signature.getInstance(str, str2) : Signature.getInstance(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m36589do(Ccatch ccatch, String str, String str2, PrivateKey privateKey, SecureRandom secureRandom, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, IOException, NoSuchProviderException {
        if (ccatch == null) {
            throw new IllegalStateException("no signature algorithm specified");
        }
        Signature signatureM36588class = m36588class(str, str2);
        if (secureRandom != null) {
            signatureM36588class.initSign(privateKey, secureRandom);
        } else {
            signatureM36588class.initSign(privateKey);
        }
        signatureM36588class.update(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
        return signatureM36588class.sign();
    }

    /* renamed from: else, reason: not valid java name */
    public static Cdo m36590else(String str, String str2) throws NoSuchAlgorithmException {
        Provider[] providers = Security.getProviders();
        for (int i = 0; i != providers.length; i++) {
            Cdo cdoM36592goto = m36592goto(str, Cfor.m36356final(str2), providers[i]);
            if (cdoM36592goto != null) {
                return cdoM36592goto;
            }
            try {
                m36592goto(str, str2, providers[i]);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        throw new NoSuchAlgorithmException("cannot find implementation " + str2);
    }

    /* renamed from: for, reason: not valid java name */
    public static Ccase m36591for(X500Principal x500Principal) {
        try {
            return new Ccase(x500Principal.getEncoded());
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot convert principal");
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cdo m36592goto(String str, String str2, Provider provider) throws NoSuchAlgorithmException {
        String strM36356final = Cfor.m36356final(str2);
        while (true) {
            String property = provider.getProperty("Alg.Alias." + str + "." + strM36356final);
            if (property == null) {
                break;
            }
            strM36356final = property;
        }
        String property2 = provider.getProperty(str + "." + strM36356final);
        if (property2 == null) {
            throw new NoSuchAlgorithmException("cannot find implementation " + strM36356final + " for provider " + provider.getName());
        }
        try {
            ClassLoader classLoader = provider.getClass().getClassLoader();
            return new Cdo((classLoader != null ? classLoader.loadClass(property2) : Class.forName(property2)).newInstance(), provider);
        } catch (ClassNotFoundException unused) {
            throw new IllegalStateException("algorithm " + strM36356final + " in provider " + provider.getName() + " but no class \"" + property2 + "\" found!");
        } catch (Exception unused2) {
            throw new IllegalStateException("algorithm " + strM36356final + " in provider " + provider.getName() + " but class \"" + property2 + "\" inaccessible!");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m36593if(Ccatch ccatch, String str, PrivateKey privateKey, SecureRandom secureRandom, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, IOException {
        if (ccatch == null) {
            throw new IllegalStateException("no signature algorithm specified");
        }
        Signature signatureM36587catch = m36587catch(str);
        if (secureRandom != null) {
            signatureM36587catch.initSign(privateKey, secureRandom);
        } else {
            signatureM36587catch.initSign(privateKey);
        }
        signatureM36587catch.update(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
        return signatureM36587catch.sign();
    }

    /* renamed from: new, reason: not valid java name */
    private static jk1 m36594new(b1 b1Var, int i) {
        return new jk1(b1Var, new b1(PKCSObjectIdentifiers.id_mgf1, b1Var), new Cgoto(i), new Cgoto(1L));
    }

    /* renamed from: this, reason: not valid java name */
    public static Provider m36595this(String str) throws NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        if (provider != null) {
            return provider;
        }
        throw new NoSuchProviderException("Provider " + str + " not found");
    }

    /* renamed from: try, reason: not valid java name */
    public static Iterator m36596try() {
        Enumeration enumerationKeys = f32764do.keys();
        ArrayList arrayList = new ArrayList();
        while (enumerationKeys.hasMoreElements()) {
            arrayList.add(enumerationKeys.nextElement());
        }
        return arrayList.iterator();
    }
}
