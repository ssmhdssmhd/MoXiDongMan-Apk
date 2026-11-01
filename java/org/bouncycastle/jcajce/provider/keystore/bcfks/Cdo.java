package org.bouncycastle.jcajce.provider.keystore.bcfks;

import android.support.v4.aq1;
import android.support.v4.b1;
import android.support.v4.bq1;
import android.support.v4.gr0;
import android.support.v4.ja1;
import android.support.v4.kw1;
import android.support.v4.l70;
import android.support.v4.l91;
import android.support.v4.m91;
import android.support.v4.me;
import android.support.v4.n70;
import android.support.v4.o51;
import android.support.v4.o70;
import android.support.v4.os1;
import android.support.v4.p51;
import android.support.v4.p70;
import android.support.v4.q3;
import android.support.v4.rg;
import android.support.v4.t51;
import android.support.v4.t91;
import android.support.v4.tp1;
import android.support.v4.u5;
import android.support.v4.u51;
import android.support.v4.u70;
import android.support.v4.u91;
import android.support.v4.v51;
import android.support.v4.w5;
import android.support.v4.x5;
import android.support.v4.xq0;
import android.support.v4.yc1;
import android.support.v4.zx1;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAKey;
import java.security.interfaces.RSAKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.text.ParseException;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.PasswordCallback;
import javax.security.auth.callback.UnsupportedCallbackException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.nsri.NSRIObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.util.Cbreak;
import org.bouncycastle.crypto.util.Cthrow;
import org.bouncycastle.jcajce.BCFKSLoadStoreParameter;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.ECKey;

/* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo extends KeyStoreSpi {

    /* renamed from: class, reason: not valid java name */
    private static final Map<String, Ccatch> f31350class;

    /* renamed from: const, reason: not valid java name */
    private static final Map<Ccatch, String> f31351const;

    /* renamed from: final, reason: not valid java name */
    private static final BigInteger f31352final;

    /* renamed from: import, reason: not valid java name */
    private static final BigInteger f31353import;

    /* renamed from: super, reason: not valid java name */
    private static final BigInteger f31354super;

    /* renamed from: throw, reason: not valid java name */
    private static final BigInteger f31355throw;

    /* renamed from: while, reason: not valid java name */
    private static final BigInteger f31356while;

    /* renamed from: break, reason: not valid java name */
    private Date f31357break;

    /* renamed from: case, reason: not valid java name */
    private b1 f31358case;

    /* renamed from: do, reason: not valid java name */
    private PublicKey f31360do;

    /* renamed from: else, reason: not valid java name */
    private xq0 f31361else;

    /* renamed from: for, reason: not valid java name */
    private final JcaJceHelper f31362for;

    /* renamed from: goto, reason: not valid java name */
    private b1 f31363goto;

    /* renamed from: if, reason: not valid java name */
    private BCFKSLoadStoreParameter.CertChainValidator f31364if;

    /* renamed from: this, reason: not valid java name */
    private Date f31366this;

    /* renamed from: new, reason: not valid java name */
    private final Map<String, o51> f31365new = new HashMap();

    /* renamed from: try, reason: not valid java name */
    private final Map<String, PrivateKey> f31367try = new HashMap();

    /* renamed from: catch, reason: not valid java name */
    private Ccatch f31359catch = NISTObjectIdentifiers.id_aes256_CCM;

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$case, reason: invalid class name */
    public static class Ccase extends Cdo {
        public Ccase() {
            super(new w5());
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(InputStream inputStream, char[] cArr) throws NoSuchAlgorithmException, IOException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, UnsupportedCallbackException, IOException, CertificateException {
            super.engineLoad(loadStoreParameter);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ int engineSize() {
            return super.engineSize();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(OutputStream outputStream, char[] cArr) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, SignatureException, UnsupportedCallbackException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(loadStoreParameter);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$do, reason: invalid class name and collision with other inner class name */
    public class C0438do implements Enumeration {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f31368do;

        public C0438do(Iterator it) {
            this.f31368do = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f31368do.hasNext();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return this.f31368do.next();
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$else, reason: invalid class name */
    public static class Celse extends Ctry {
        public Celse() {
            super(new w5());
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(InputStream inputStream, char[] cArr) throws NoSuchAlgorithmException, IOException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, UnsupportedCallbackException, IOException, CertificateException {
            super.engineLoad(loadStoreParameter);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ int engineSize() {
            return super.engineSize();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(OutputStream outputStream, char[] cArr) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, SignatureException, UnsupportedCallbackException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(loadStoreParameter);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super(new org.bouncycastle.jcajce.util.Cif());
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(InputStream inputStream, char[] cArr) throws NoSuchAlgorithmException, IOException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, UnsupportedCallbackException, IOException, CertificateException {
            super.engineLoad(loadStoreParameter);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo.Ctry, org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ int engineSize() {
            return super.engineSize();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(OutputStream outputStream, char[] cArr) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, SignatureException, UnsupportedCallbackException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(loadStoreParameter);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$if, reason: invalid class name */
    public static class Cif extends Cdo {
        public Cif() {
            super(new org.bouncycastle.jcajce.util.Cif());
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(InputStream inputStream, char[] cArr) throws NoSuchAlgorithmException, IOException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, UnsupportedCallbackException, IOException, CertificateException {
            super.engineLoad(loadStoreParameter);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ int engineSize() {
            return super.engineSize();
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(OutputStream outputStream, char[] cArr) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public /* bridge */ /* synthetic */ void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, SignatureException, UnsupportedCallbackException, IOException, InvalidKeyException, CertificateException {
            super.engineStore(loadStoreParameter);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$new, reason: invalid class name */
    public static class Cnew extends KeyStoreException {
        private final Throwable cause;

        public Cnew(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bcfks.do$try, reason: invalid class name */
    public static class Ctry extends Cdo implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

        /* renamed from: native, reason: not valid java name */
        private final Map<String, byte[]> f31370native;

        /* renamed from: public, reason: not valid java name */
        private final byte[] f31371public;

        public Ctry(JcaJceHelper jcaJceHelper) {
            super(jcaJceHelper);
            try {
                byte[] bArr = new byte[32];
                this.f31371public = bArr;
                jcaJceHelper.createSecureRandom("DEFAULT").nextBytes(bArr);
                this.f31370native = new HashMap();
            } catch (GeneralSecurityException e) {
                throw new IllegalArgumentException("can't create random - " + e.toString());
            }
        }

        /* renamed from: native, reason: not valid java name */
        private byte[] m34840native(String str, char[] cArr) throws NoSuchAlgorithmException, InvalidKeyException {
            return tp1.m8045this(cArr != null ? q3.m6367default(org.bouncycastle.util.Cfor.m36353const(cArr), org.bouncycastle.util.Cfor.m36352class(str)) : q3.m6367default(this.f31371public, org.bouncycastle.util.Cfor.m36352class(str)), this.f31371public, 16384, 8, 1, 32);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public void engineDeleteEntry(String str) throws KeyStoreException {
            throw new KeyStoreException("delete operation not supported in shared mode");
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public Key engineGetKey(String str, char[] cArr) throws InvalidKeySpecException, NoSuchAlgorithmException, UnrecoverableKeyException {
            try {
                byte[] bArrM34840native = m34840native(str, cArr);
                if (!this.f31370native.containsKey(str) || q3.m6360abstract(this.f31370native.get(str), bArrM34840native)) {
                    Key keyEngineGetKey = super.engineGetKey(str, cArr);
                    if (keyEngineGetKey != null && !this.f31370native.containsKey(str)) {
                        this.f31370native.put(str, bArrM34840native);
                    }
                    return keyEngineGetKey;
                }
                throw new UnrecoverableKeyException("unable to recover key (" + str + ")");
            } catch (InvalidKeyException e) {
                throw new UnrecoverableKeyException("unable to recover key (" + str + "): " + e.getMessage());
            }
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            throw new KeyStoreException("set operation not supported in shared mode");
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            throw new KeyStoreException("set operation not supported in shared mode");
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bcfks.Cdo, java.security.KeyStoreSpi
        public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            throw new KeyStoreException("set operation not supported in shared mode");
        }
    }

    static {
        HashMap map = new HashMap();
        f31350class = map;
        HashMap map2 = new HashMap();
        f31351const = map2;
        Ccatch ccatch = OIWObjectIdentifiers.desEDE;
        map.put("DESEDE", ccatch);
        map.put("TRIPLEDES", ccatch);
        map.put("TDEA", ccatch);
        map.put("HMACSHA1", PKCSObjectIdentifiers.id_hmacWithSHA1);
        map.put("HMACSHA224", PKCSObjectIdentifiers.id_hmacWithSHA224);
        map.put("HMACSHA256", PKCSObjectIdentifiers.id_hmacWithSHA256);
        map.put("HMACSHA384", PKCSObjectIdentifiers.id_hmacWithSHA384);
        map.put("HMACSHA512", PKCSObjectIdentifiers.id_hmacWithSHA512);
        map.put("SEED", KISAObjectIdentifiers.id_seedCBC);
        map.put("CAMELLIA.128", NTTObjectIdentifiers.id_camellia128_cbc);
        map.put("CAMELLIA.192", NTTObjectIdentifiers.id_camellia192_cbc);
        map.put("CAMELLIA.256", NTTObjectIdentifiers.id_camellia256_cbc);
        map.put("ARIA.128", NSRIObjectIdentifiers.id_aria128_cbc);
        map.put("ARIA.192", NSRIObjectIdentifiers.id_aria192_cbc);
        map.put("ARIA.256", NSRIObjectIdentifiers.id_aria256_cbc);
        map2.put(PKCSObjectIdentifiers.rsaEncryption, "RSA");
        map2.put(X9ObjectIdentifiers.id_ecPublicKey, "EC");
        map2.put(OIWObjectIdentifiers.elGamalAlgorithm, "DH");
        map2.put(PKCSObjectIdentifiers.dhKeyAgreement, "DH");
        map2.put(X9ObjectIdentifiers.id_dsa, "DSA");
        f31352final = BigInteger.valueOf(0L);
        f31354super = BigInteger.valueOf(1L);
        f31355throw = BigInteger.valueOf(2L);
        f31356while = BigInteger.valueOf(3L);
        f31353import = BigInteger.valueOf(4L);
    }

    public Cdo(JcaJceHelper jcaJceHelper) {
        this.f31362for = jcaJceHelper;
    }

    /* renamed from: break, reason: not valid java name */
    private xq0 m34822break(u91 u91Var, int i) {
        Ccatch ccatch = MiscObjectIdentifiers.id_scrypt;
        if (ccatch.equals(u91Var.m8308do())) {
            Cthrow cthrow = (Cthrow) u91Var;
            byte[] bArr = new byte[cthrow.m34512try()];
            m34826const().nextBytes(bArr);
            return new xq0(ccatch, new os1(bArr, cthrow.m34509for(), cthrow.m34510if(), cthrow.m34511new(), i));
        }
        Cbreak cbreak = (Cbreak) u91Var;
        byte[] bArr2 = new byte[cbreak.m34456new()];
        m34826const().nextBytes(bArr2);
        return new xq0(PKCSObjectIdentifiers.id_PBKDF2, new t91(bArr2, cbreak.m34455if(), i, cbreak.m34454for()));
    }

    /* renamed from: case, reason: not valid java name */
    private Date m34823case(o51 o51Var, Date date) {
        try {
            return o51Var.m5484try().m32776const();
        } catch (ParseException unused) {
            return date;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private xq0 m34824catch(Ccatch ccatch, int i) {
        byte[] bArr = new byte[64];
        m34826const().nextBytes(bArr);
        Ccatch ccatch2 = PKCSObjectIdentifiers.id_PBKDF2;
        if (ccatch2.equals(ccatch)) {
            return new xq0(ccatch2, new t91(bArr, 51200, i, new b1(PKCSObjectIdentifiers.id_hmacWithSHA512, h.f29080do)));
        }
        throw new IllegalStateException("unknown derivation algorithm: " + ccatch);
    }

    /* renamed from: class, reason: not valid java name */
    private b1 m34825class(Key key, BCFKSLoadStoreParameter.Ctry ctry) throws IOException {
        if (key == null) {
            return null;
        }
        if (key instanceof ECKey) {
            if (ctry == BCFKSLoadStoreParameter.Ctry.SHA512withECDSA) {
                return new b1(X9ObjectIdentifiers.ecdsa_with_SHA512);
            }
            if (ctry == BCFKSLoadStoreParameter.Ctry.SHA3_512withECDSA) {
                return new b1(NISTObjectIdentifiers.id_ecdsa_with_sha3_512);
            }
        }
        if (key instanceof DSAKey) {
            if (ctry == BCFKSLoadStoreParameter.Ctry.SHA512withDSA) {
                return new b1(NISTObjectIdentifiers.dsa_with_sha512);
            }
            if (ctry == BCFKSLoadStoreParameter.Ctry.SHA3_512withDSA) {
                return new b1(NISTObjectIdentifiers.id_dsa_with_sha3_512);
            }
        }
        if (key instanceof RSAKey) {
            if (ctry == BCFKSLoadStoreParameter.Ctry.SHA512withRSA) {
                return new b1(PKCSObjectIdentifiers.sha512WithRSAEncryption, h.f29080do);
            }
            if (ctry == BCFKSLoadStoreParameter.Ctry.SHA3_512withRSA) {
                return new b1(NISTObjectIdentifiers.id_rsassa_pkcs1_v1_5_with_sha3_512, h.f29080do);
            }
        }
        throw new IOException("unknown signature algorithm");
    }

    /* renamed from: const, reason: not valid java name */
    private SecureRandom m34826const() {
        return org.bouncycastle.crypto.Cfor.m33599case();
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m34827do(byte[] bArr, b1 b1Var, xq0 xq0Var, char[] cArr) throws NoSuchAlgorithmException, InvalidKeyException, IOException, NoSuchProviderException {
        String strM32795super = b1Var.m420new().m32795super();
        Mac macCreateMac = this.f31362for.createMac(strM32795super);
        try {
            if (cArr == null) {
                cArr = new char[0];
            }
            macCreateMac.init(new SecretKeySpec(m34831goto(xq0Var, "INTEGRITY_CHECK", cArr, -1), strM32795super));
            return macCreateMac.doFinal(bArr);
        } catch (InvalidKeyException e) {
            throw new IOException("Cannot set up MAC calculation: " + e.getMessage());
        }
    }

    /* renamed from: else, reason: not valid java name */
    private char[] m34828else(KeyStore.LoadStoreParameter loadStoreParameter) throws UnsupportedCallbackException, IOException {
        KeyStore.ProtectionParameter protectionParameter = loadStoreParameter.getProtectionParameter();
        if (protectionParameter == null) {
            return null;
        }
        if (protectionParameter instanceof KeyStore.PasswordProtection) {
            return ((KeyStore.PasswordProtection) protectionParameter).getPassword();
        }
        if (!(protectionParameter instanceof KeyStore.CallbackHandlerProtection)) {
            throw new IllegalArgumentException("no support for protection parameter of type " + protectionParameter.getClass().getName());
        }
        CallbackHandler callbackHandler = ((KeyStore.CallbackHandlerProtection) protectionParameter).getCallbackHandler();
        PasswordCallback passwordCallback = new PasswordCallback("password: ", false);
        try {
            callbackHandler.handle(new Callback[]{passwordCallback});
            return passwordCallback.getPassword();
        } catch (UnsupportedCallbackException e) {
            throw new IllegalArgumentException("PasswordCallback not recognised: " + e.getMessage(), e);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private l70 m34829final(b1 b1Var, char[] cArr) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException {
        o51[] o51VarArr = (o51[]) this.f31365new.values().toArray(new o51[this.f31365new.size()]);
        xq0 xq0VarM34836this = m34836this(this.f31361else, 32);
        if (cArr == null) {
            cArr = new char[0];
        }
        byte[] bArrM34831goto = m34831goto(xq0VarM34836this, "STORE_ENCRYPTION", cArr, 32);
        u51 u51Var = new u51(b1Var, this.f31366this, this.f31357break, new p51(o51VarArr), null);
        try {
            Ccatch ccatch = this.f31359catch;
            Ccatch ccatch2 = NISTObjectIdentifiers.id_aes256_CCM;
            if (!ccatch.equals(ccatch2)) {
                return new l70(new b1(PKCSObjectIdentifiers.id_PBES2, new m91(xq0VarM34836this, new u70(NISTObjectIdentifiers.id_aes256_wrap_pad))), m34832if("AESKWP", bArrM34831goto).doFinal(u51Var.getEncoded()));
            }
            Cipher cipherM34832if = m34832if("AES/CCM/NoPadding", bArrM34831goto);
            return new l70(new b1(PKCSObjectIdentifiers.id_PBES2, new m91(xq0VarM34836this, new u70(ccatch2, me.m4905try(cipherM34832if.getParameters().getEncoded())))), cipherM34832if.doFinal(u51Var.getEncoded()));
        } catch (InvalidKeyException e) {
            throw new IOException(e.toString());
        } catch (NoSuchProviderException e2) {
            throw new IOException(e2.toString());
        } catch (BadPaddingException e3) {
            throw new IOException(e3.toString());
        } catch (IllegalBlockSizeException e4) {
            throw new IOException(e4.toString());
        } catch (NoSuchPaddingException e5) {
            throw new NoSuchAlgorithmException(e5.toString());
        }
    }

    /* renamed from: for, reason: not valid java name */
    private n70 m34830for(o70 o70Var, Certificate[] certificateArr) throws CertificateEncodingException {
        rg[] rgVarArr = new rg[certificateArr.length];
        for (int i = 0; i != certificateArr.length; i++) {
            rgVarArr[i] = rg.m6956try(certificateArr[i].getEncoded());
        }
        return new n70(o70Var, rgVarArr);
    }

    /* renamed from: goto, reason: not valid java name */
    private byte[] m34831goto(xq0 xq0Var, String str, char[] cArr, int i) throws IOException {
        byte[] bArrM4619do = l91.m4619do(cArr);
        byte[] bArrM4619do2 = l91.m4619do(str.toCharArray());
        if (MiscObjectIdentifiers.id_scrypt.equals(xq0Var.m9565new())) {
            os1 os1VarM5750case = os1.m5750case(xq0Var.m9564case());
            if (os1VarM5750case.m5751else() != null) {
                i = os1VarM5750case.m5751else().intValue();
            } else if (i == -1) {
                throw new IOException("no keyLength found in ScryptParams");
            }
            return tp1.m8045this(q3.m6367default(bArrM4619do, bArrM4619do2), os1VarM5750case.m5754this(), os1VarM5750case.m5755try().intValue(), os1VarM5750case.m5753new().intValue(), os1VarM5750case.m5753new().intValue(), i);
        }
        if (!xq0Var.m9565new().equals(PKCSObjectIdentifiers.id_PBKDF2)) {
            throw new IOException("BCFKS KeyStore: unrecognized MAC PBKD.");
        }
        t91 t91VarM7786new = t91.m7786new(xq0Var.m9564case());
        if (t91VarM7786new.m7787case() != null) {
            i = t91VarM7786new.m7787case().intValue();
        } else if (i == -1) {
            throw new IOException("no keyLength found in PBKDF2Params");
        }
        if (t91VarM7786new.m7788else().m420new().equals(PKCSObjectIdentifiers.id_hmacWithSHA512)) {
            ja1 ja1Var = new ja1(new bq1());
            ja1Var.m4622break(q3.m6367default(bArrM4619do, bArrM4619do2), t91VarM7786new.m7789goto(), t91VarM7786new.m7791try().intValue());
            return ((gr0) ja1Var.mo2236try(i * 8)).m2770do();
        }
        if (t91VarM7786new.m7788else().m420new().equals(NISTObjectIdentifiers.id_hmacWithSHA3_512)) {
            ja1 ja1Var2 = new ja1(new aq1(512));
            ja1Var2.m4622break(q3.m6367default(bArrM4619do, bArrM4619do2), t91VarM7786new.m7789goto(), t91VarM7786new.m7791try().intValue());
            return ((gr0) ja1Var2.mo2236try(i * 8)).m2770do();
        }
        throw new IOException("BCFKS KeyStore: unrecognized MAC PBKD PRF: " + t91VarM7786new.m7788else().m420new());
    }

    /* renamed from: if, reason: not valid java name */
    private Cipher m34832if(String str, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        Cipher cipherCreateCipher = this.f31362for.createCipher(str);
        cipherCreateCipher.init(1, new SecretKeySpec(bArr, "AES"));
        return cipherCreateCipher;
    }

    /* renamed from: import, reason: not valid java name */
    private void m34833import(ASN1Encodable aSN1Encodable, zx1 zx1Var, PublicKey publicKey) throws GeneralSecurityException, IOException {
        Signature signatureCreateSignature = this.f31362for.createSignature(zx1Var.m10323else().m420new().m32795super());
        signatureCreateSignature.initVerify(publicKey);
        signatureCreateSignature.update(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
        if (!signatureCreateSignature.verify(zx1Var.m10322case().m33059super())) {
            throw new IOException("BCFKS KeyStore corrupted: signature calculation failed");
        }
    }

    /* renamed from: new, reason: not valid java name */
    private Certificate m34834new(Object obj) {
        JcaJceHelper jcaJceHelper = this.f31362for;
        if (jcaJceHelper != null) {
            try {
                return jcaJceHelper.createCertificateFactory("X.509").generateCertificate(new ByteArrayInputStream(rg.m6956try(obj).getEncoded()));
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(rg.m6956try(obj).getEncoded()));
        } catch (Exception unused2) {
            return null;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static String m34835super(Ccatch ccatch) {
        String str = f31351const.get(ccatch);
        return str != null ? str : ccatch.m32795super();
    }

    /* renamed from: this, reason: not valid java name */
    private xq0 m34836this(xq0 xq0Var, int i) {
        Ccatch ccatch = MiscObjectIdentifiers.id_scrypt;
        boolean zEquals = ccatch.equals(xq0Var.m9565new());
        ASN1Encodable aSN1EncodableM9564case = xq0Var.m9564case();
        if (zEquals) {
            os1 os1VarM5750case = os1.m5750case(aSN1EncodableM9564case);
            byte[] bArr = new byte[os1VarM5750case.m5754this().length];
            m34826const().nextBytes(bArr);
            return new xq0(ccatch, new os1(bArr, os1VarM5750case.m5755try(), os1VarM5750case.m5753new(), os1VarM5750case.m5752goto(), BigInteger.valueOf(i)));
        }
        t91 t91VarM7786new = t91.m7786new(aSN1EncodableM9564case);
        byte[] bArr2 = new byte[t91VarM7786new.m7789goto().length];
        m34826const().nextBytes(bArr2);
        return new xq0(PKCSObjectIdentifiers.id_PBKDF2, new t91(bArr2, t91VarM7786new.m7791try().intValue(), i, t91VarM7786new.m7788else()));
    }

    /* renamed from: throw, reason: not valid java name */
    private boolean m34837throw(u91 u91Var, xq0 xq0Var) {
        if (!u91Var.m8308do().equals(xq0Var.m9565new())) {
            return false;
        }
        if (MiscObjectIdentifiers.id_scrypt.equals(xq0Var.m9565new())) {
            if (!(u91Var instanceof Cthrow)) {
                return false;
            }
            Cthrow cthrow = (Cthrow) u91Var;
            os1 os1VarM5750case = os1.m5750case(xq0Var.m9564case());
            return cthrow.m34512try() == os1VarM5750case.m5754this().length && cthrow.m34510if() == os1VarM5750case.m5753new().intValue() && cthrow.m34509for() == os1VarM5750case.m5755try().intValue() && cthrow.m34511new() == os1VarM5750case.m5752goto().intValue();
        }
        if (!(u91Var instanceof Cbreak)) {
            return false;
        }
        Cbreak cbreak = (Cbreak) u91Var;
        t91 t91VarM7786new = t91.m7786new(xq0Var.m9564case());
        return cbreak.m34456new() == t91VarM7786new.m7789goto().length && cbreak.m34455if() == t91VarM7786new.m7791try().intValue();
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m34838try(String str, b1 b1Var, char[] cArr, byte[] bArr) throws IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipherCreateCipher;
        AlgorithmParameters algorithmParametersCreateAlgorithmParameters;
        if (!b1Var.m420new().equals(PKCSObjectIdentifiers.id_PBES2)) {
            throw new IOException("BCFKS KeyStore cannot recognize protection algorithm.");
        }
        m91 m91VarM4870try = m91.m4870try(b1Var.m419else());
        u70 u70VarM4872new = m91VarM4870try.m4872new();
        try {
            if (u70VarM4872new.m8274new().equals(NISTObjectIdentifiers.id_aes256_CCM)) {
                cipherCreateCipher = this.f31362for.createCipher("AES/CCM/NoPadding");
                algorithmParametersCreateAlgorithmParameters = this.f31362for.createAlgorithmParameters("CCM");
                algorithmParametersCreateAlgorithmParameters.init(me.m4905try(u70VarM4872new.m8273case()).getEncoded());
            } else {
                if (!u70VarM4872new.m8274new().equals(NISTObjectIdentifiers.id_aes256_wrap_pad)) {
                    throw new IOException("BCFKS KeyStore cannot recognize protection encryption algorithm.");
                }
                cipherCreateCipher = this.f31362for.createCipher("AESKWP");
                algorithmParametersCreateAlgorithmParameters = null;
            }
            xq0 xq0VarM4871case = m91VarM4870try.m4871case();
            if (cArr == null) {
                cArr = new char[0];
            }
            cipherCreateCipher.init(2, new SecretKeySpec(m34831goto(xq0VarM4871case, str, cArr, 32), "AES"), algorithmParametersCreateAlgorithmParameters);
            return cipherCreateCipher.doFinal(bArr);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            throw new IOException(e2.toString());
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m34839while(byte[] bArr, yc1 yc1Var, char[] cArr) throws NoSuchAlgorithmException, IOException, NoSuchProviderException {
        if (!q3.m6360abstract(m34827do(bArr, yc1Var.m9803case(), yc1Var.m9804else(), cArr), yc1Var.m9805try())) {
            throw new IOException("BCFKS KeyStore corrupted: MAC calculation failed");
        }
    }

    @Override // java.security.KeyStoreSpi
    public Enumeration<String> engineAliases() {
        return new C0438do(new HashSet(this.f31365new.keySet()).iterator());
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineContainsAlias(String str) {
        Objects.requireNonNull(str, "alias value is null");
        return this.f31365new.containsKey(str);
    }

    @Override // java.security.KeyStoreSpi
    public void engineDeleteEntry(String str) throws KeyStoreException {
        if (this.f31365new.get(str) == null) {
            return;
        }
        this.f31367try.remove(str);
        this.f31365new.remove(str);
        this.f31357break = new Date();
    }

    @Override // java.security.KeyStoreSpi
    public Certificate engineGetCertificate(String str) {
        o51 o51Var = this.f31365new.get(str);
        if (o51Var == null) {
            return null;
        }
        if (o51Var.m5479break().equals(f31354super) || o51Var.m5479break().equals(f31356while)) {
            return m34834new(n70.m5118case(o51Var.m5480case()).m5119new()[0]);
        }
        if (o51Var.m5479break().equals(f31352final)) {
            return m34834new(o51Var.m5480case());
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public String engineGetCertificateAlias(Certificate certificate) throws CertificateEncodingException {
        if (certificate == null) {
            return null;
        }
        try {
            byte[] encoded = certificate.getEncoded();
            for (String str : this.f31365new.keySet()) {
                o51 o51Var = this.f31365new.get(str);
                if (o51Var.m5479break().equals(f31352final)) {
                    if (q3.m6362case(o51Var.m5480case(), encoded)) {
                        return str;
                    }
                } else if (o51Var.m5479break().equals(f31354super) || o51Var.m5479break().equals(f31356while)) {
                    try {
                        if (q3.m6362case(n70.m5118case(o51Var.m5480case()).m5119new()[0].toASN1Primitive().getEncoded(), encoded)) {
                            return str;
                        }
                    } catch (IOException unused) {
                    }
                }
            }
        } catch (CertificateEncodingException unused2) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.security.KeyStoreSpi
    public Certificate[] engineGetCertificateChain(String str) {
        o51 o51Var = this.f31365new.get(str);
        if (o51Var == null) {
            return null;
        }
        if (!o51Var.m5479break().equals(f31354super) && !o51Var.m5479break().equals(f31356while)) {
            return null;
        }
        rg[] rgVarArrM5119new = n70.m5118case(o51Var.m5480case()).m5119new();
        int length = rgVarArrM5119new.length;
        X509Certificate[] x509CertificateArr = new X509Certificate[length];
        for (int i = 0; i != length; i++) {
            x509CertificateArr[i] = m34834new(rgVarArrM5119new[i]);
        }
        return x509CertificateArr;
    }

    @Override // java.security.KeyStoreSpi
    public Date engineGetCreationDate(String str) {
        o51 o51Var = this.f31365new.get(str);
        if (o51Var == null) {
            return null;
        }
        try {
            return o51Var.m5483this().m32776const();
        } catch (ParseException unused) {
            return new Date();
        }
    }

    @Override // java.security.KeyStoreSpi
    public Key engineGetKey(String str, char[] cArr) throws InvalidKeySpecException, UnrecoverableKeyException, NoSuchAlgorithmException {
        o51 o51Var = this.f31365new.get(str);
        if (o51Var == null) {
            return null;
        }
        if (o51Var.m5479break().equals(f31354super) || o51Var.m5479break().equals(f31356while)) {
            PrivateKey privateKey = this.f31367try.get(str);
            if (privateKey != null) {
                return privateKey;
            }
            o70 o70VarM5495case = o70.m5495case(n70.m5118case(o51Var.m5480case()).m5120try());
            try {
                org.bouncycastle.asn1.pkcs.Cdo cdoM33100try = org.bouncycastle.asn1.pkcs.Cdo.m33100try(m34838try("PRIVATE_KEY_ENCRYPTION", o70VarM5495case.m5497try(), cArr, o70VarM5495case.m5496new()));
                PrivateKey privateKeyGeneratePrivate = this.f31362for.createKeyFactory(m34835super(cdoM33100try.m33104else().m420new())).generatePrivate(new PKCS8EncodedKeySpec(cdoM33100try.getEncoded()));
                this.f31367try.put(str, privateKeyGeneratePrivate);
                return privateKeyGeneratePrivate;
            } catch (Exception e) {
                throw new UnrecoverableKeyException("BCFKS KeyStore unable to recover private key (" + str + "): " + e.getMessage());
            }
        }
        if (!o51Var.m5479break().equals(f31355throw) && !o51Var.m5479break().equals(f31353import)) {
            throw new UnrecoverableKeyException("BCFKS KeyStore unable to recover secret key (" + str + "): type not recognized");
        }
        p70 p70VarM5898try = p70.m5898try(o51Var.m5480case());
        try {
            kw1 kw1VarM4525new = kw1.m4525new(m34838try("SECRET_KEY_ENCRYPTION", p70VarM5898try.m5899case(), cArr, p70VarM5898try.m5900new()));
            return this.f31362for.createSecretKeyFactory(kw1VarM4525new.m4527try().m32795super()).generateSecret(new SecretKeySpec(kw1VarM4525new.m4526case(), kw1VarM4525new.m4527try().m32795super()));
        } catch (Exception e2) {
            throw new UnrecoverableKeyException("BCFKS KeyStore unable to recover secret key (" + str + "): " + e2.getMessage());
        }
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsCertificateEntry(String str) {
        o51 o51Var = this.f31365new.get(str);
        if (o51Var != null) {
            return o51Var.m5479break().equals(f31352final);
        }
        return false;
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsKeyEntry(String str) {
        o51 o51Var = this.f31365new.get(str);
        if (o51Var == null) {
            return false;
        }
        BigInteger bigIntegerM5479break = o51Var.m5479break();
        return bigIntegerM5479break.equals(f31354super) || bigIntegerM5479break.equals(f31355throw) || bigIntegerM5479break.equals(f31356while) || bigIntegerM5479break.equals(f31353import);
    }

    @Override // java.security.KeyStoreSpi
    public void engineLoad(InputStream inputStream, char[] cArr) throws NoSuchAlgorithmException, IOException, CertificateException {
        b1 b1VarM10323else;
        ASN1Encodable aSN1EncodableM7729case;
        PublicKey publicKey;
        u51 u51VarM8246case;
        this.f31365new.clear();
        this.f31367try.clear();
        this.f31366this = null;
        this.f31357break = null;
        this.f31358case = null;
        if (inputStream == null) {
            Date date = new Date();
            this.f31366this = date;
            this.f31357break = date;
            this.f31360do = null;
            this.f31364if = null;
            this.f31358case = new b1(PKCSObjectIdentifiers.id_hmacWithSHA512, h.f29080do);
            this.f31361else = m34824catch(PKCSObjectIdentifiers.id_PBKDF2, 64);
            return;
        }
        try {
            t51 t51VarM7728new = t51.m7728new(new org.bouncycastle.asn1.Celse(inputStream).m33002break());
            v51 v51VarM7730try = t51VarM7728new.m7730try();
            if (v51VarM7730try.m8753case() == 0) {
                yc1 yc1VarM9802new = yc1.m9802new(v51VarM7730try.m8754try());
                this.f31358case = yc1VarM9802new.m9803case();
                this.f31361else = yc1VarM9802new.m9804else();
                b1VarM10323else = this.f31358case;
                try {
                    m34839while(t51VarM7728new.m7729case().toASN1Primitive().getEncoded(), yc1VarM9802new, cArr);
                } catch (NoSuchProviderException e) {
                    throw new IOException(e.getMessage());
                }
            } else {
                if (v51VarM7730try.m8753case() != 1) {
                    throw new IOException("BCFKS KeyStore unable to recognize integrity check.");
                }
                zx1 zx1VarM10321try = zx1.m10321try(v51VarM7730try.m8754try());
                b1VarM10323else = zx1VarM10321try.m10323else();
                try {
                    rg[] rgVarArrM10324new = zx1VarM10321try.m10324new();
                    if (this.f31364if == null) {
                        aSN1EncodableM7729case = t51VarM7728new.m7729case();
                        publicKey = this.f31360do;
                    } else {
                        if (rgVarArrM10324new == null) {
                            throw new IOException("validator specified but no certifcates in store");
                        }
                        CertificateFactory certificateFactoryCreateCertificateFactory = this.f31362for.createCertificateFactory("X.509");
                        int length = rgVarArrM10324new.length;
                        X509Certificate[] x509CertificateArr = new X509Certificate[length];
                        for (int i = 0; i != length; i++) {
                            x509CertificateArr[i] = (X509Certificate) certificateFactoryCreateCertificateFactory.generateCertificate(new ByteArrayInputStream(rgVarArrM10324new[i].getEncoded()));
                        }
                        if (!this.f31364if.isValid(x509CertificateArr)) {
                            throw new IOException("certificate chain in key store signature not valid");
                        }
                        aSN1EncodableM7729case = t51VarM7728new.m7729case();
                        publicKey = x509CertificateArr[0].getPublicKey();
                    }
                    m34833import(aSN1EncodableM7729case, zx1VarM10321try, publicKey);
                } catch (GeneralSecurityException e2) {
                    throw new IOException("error verifying signature: " + e2.getMessage(), e2);
                }
            }
            ASN1Encodable aSN1EncodableM7729case2 = t51VarM7728new.m7729case();
            if (aSN1EncodableM7729case2 instanceof l70) {
                l70 l70Var = (l70) aSN1EncodableM7729case2;
                u51VarM8246case = u51.m8246case(m34838try("STORE_ENCRYPTION", l70Var.m4607try(), cArr, l70Var.m4606new().mo5490const()));
            } else {
                u51VarM8246case = u51.m8246case(aSN1EncodableM7729case2);
            }
            try {
                this.f31366this = u51VarM8246case.m8252try().m32776const();
                this.f31357break = u51VarM8246case.m8249goto().m32776const();
                if (!u51VarM8246case.m8248else().equals(b1VarM10323else)) {
                    throw new IOException("BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm.");
                }
                Iterator<ASN1Encodable> it = u51VarM8246case.m8251this().iterator();
                while (it.hasNext()) {
                    o51 o51VarM5478goto = o51.m5478goto(it.next());
                    this.f31365new.put(o51VarM5478goto.m5481else(), o51VarM5478goto);
                }
            } catch (ParseException unused) {
                throw new IOException("BCFKS KeyStore unable to parse store data information.");
            }
        } catch (Exception e3) {
            throw new IOException(e3.getMessage());
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws NoSuchAlgorithmException, UnsupportedCallbackException, IOException, CertificateException {
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'parameter' arg cannot be null");
        }
        if (!(loadStoreParameter instanceof BCFKSLoadStoreParameter)) {
            if (loadStoreParameter instanceof x5) {
                engineLoad(((x5) loadStoreParameter).m9394do(), m34828else(loadStoreParameter));
                return;
            }
            throw new IllegalArgumentException("no support for 'parameter' of type " + loadStoreParameter.getClass().getName());
        }
        BCFKSLoadStoreParameter bCFKSLoadStoreParameter = (BCFKSLoadStoreParameter) loadStoreParameter;
        char[] cArrM34828else = m34828else(bCFKSLoadStoreParameter);
        this.f31361else = m34822break(bCFKSLoadStoreParameter.m34527else(), 64);
        this.f31359catch = bCFKSLoadStoreParameter.m34532try() == BCFKSLoadStoreParameter.Cfor.AES256_CCM ? NISTObjectIdentifiers.id_aes256_CCM : NISTObjectIdentifiers.id_aes256_wrap_pad;
        this.f31358case = bCFKSLoadStoreParameter.m34526case() == BCFKSLoadStoreParameter.Cnew.HmacSHA512 ? new b1(PKCSObjectIdentifiers.id_hmacWithSHA512, h.f29080do) : new b1(NISTObjectIdentifiers.id_hmacWithSHA3_512, h.f29080do);
        this.f31360do = (PublicKey) bCFKSLoadStoreParameter.m34531this();
        this.f31364if = bCFKSLoadStoreParameter.m34528for();
        this.f31363goto = m34825class(this.f31360do, bCFKSLoadStoreParameter.m34529goto());
        Ccatch ccatch = this.f31359catch;
        InputStream inputStreamM9394do = bCFKSLoadStoreParameter.m9394do();
        engineLoad(inputStreamM9394do, cArrM34828else);
        if (inputStreamM9394do != null) {
            if (!m34837throw(bCFKSLoadStoreParameter.m34527else(), this.f31361else) || !ccatch.equals(this.f31359catch)) {
                throw new IOException("configuration parameters do not match existing store");
            }
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        Date dateM34823case;
        o51 o51Var = this.f31365new.get(str);
        Date date = new Date();
        if (o51Var == null) {
            dateM34823case = date;
        } else {
            if (!o51Var.m5479break().equals(f31352final)) {
                throw new KeyStoreException("BCFKS KeyStore already has a key entry with alias " + str);
            }
            dateM34823case = m34823case(o51Var, date);
        }
        try {
            this.f31365new.put(str, new o51(f31352final, str, dateM34823case, date, certificate.getEncoded(), null));
            this.f31357break = date;
        } catch (CertificateEncodingException e) {
            throw new Cnew("BCFKS KeyStore unable to handle certificate: " + e.getMessage(), e);
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        kw1 kw1Var;
        p70 p70Var;
        o70 o70Var;
        Date date = new Date();
        o51 o51Var = this.f31365new.get(str);
        Date dateM34823case = o51Var != null ? m34823case(o51Var, date) : date;
        this.f31367try.remove(str);
        if (key instanceof PrivateKey) {
            if (certificateArr == null) {
                throw new KeyStoreException("BCFKS KeyStore requires a certificate chain for private key storage.");
            }
            try {
                byte[] encoded = key.getEncoded();
                xq0 xq0VarM34824catch = m34824catch(PKCSObjectIdentifiers.id_PBKDF2, 32);
                if (cArr == null) {
                    cArr = new char[0];
                }
                byte[] bArrM34831goto = m34831goto(xq0VarM34824catch, "PRIVATE_KEY_ENCRYPTION", cArr, 32);
                Ccatch ccatch = this.f31359catch;
                Ccatch ccatch2 = NISTObjectIdentifiers.id_aes256_CCM;
                if (ccatch.equals(ccatch2)) {
                    Cipher cipherM34832if = m34832if("AES/CCM/NoPadding", bArrM34831goto);
                    o70Var = new o70(new b1(PKCSObjectIdentifiers.id_PBES2, new m91(xq0VarM34824catch, new u70(ccatch2, me.m4905try(cipherM34832if.getParameters().getEncoded())))), cipherM34832if.doFinal(encoded));
                } else {
                    o70Var = new o70(new b1(PKCSObjectIdentifiers.id_PBES2, new m91(xq0VarM34824catch, new u70(NISTObjectIdentifiers.id_aes256_wrap_pad))), m34832if("AESKWP", bArrM34831goto).doFinal(encoded));
                }
                this.f31365new.put(str, new o51(f31354super, str, dateM34823case, date, m34830for(o70Var, certificateArr).getEncoded(), null));
            } catch (Exception e) {
                throw new Cnew("BCFKS KeyStore exception storing private key: " + e.toString(), e);
            }
        } else {
            if (!(key instanceof SecretKey)) {
                throw new KeyStoreException("BCFKS KeyStore unable to recognize key.");
            }
            if (certificateArr != null) {
                throw new KeyStoreException("BCFKS KeyStore cannot store certificate chain with secret key.");
            }
            try {
                byte[] encoded2 = key.getEncoded();
                xq0 xq0VarM34824catch2 = m34824catch(PKCSObjectIdentifiers.id_PBKDF2, 32);
                if (cArr == null) {
                    cArr = new char[0];
                }
                byte[] bArrM34831goto2 = m34831goto(xq0VarM34824catch2, "SECRET_KEY_ENCRYPTION", cArr, 32);
                String strM36356final = org.bouncycastle.util.Cfor.m36356final(key.getAlgorithm());
                if (strM36356final.indexOf("AES") > -1) {
                    kw1Var = new kw1(NISTObjectIdentifiers.aes, encoded2);
                } else {
                    Map<String, Ccatch> map = f31350class;
                    Ccatch ccatch3 = map.get(strM36356final);
                    if (ccatch3 != null) {
                        kw1Var = new kw1(ccatch3, encoded2);
                    } else {
                        Ccatch ccatch4 = map.get(strM36356final + "." + (encoded2.length * 8));
                        if (ccatch4 == null) {
                            throw new KeyStoreException("BCFKS KeyStore cannot recognize secret key (" + strM36356final + ") for storage.");
                        }
                        kw1Var = new kw1(ccatch4, encoded2);
                    }
                }
                Ccatch ccatch5 = this.f31359catch;
                Ccatch ccatch6 = NISTObjectIdentifiers.id_aes256_CCM;
                if (ccatch5.equals(ccatch6)) {
                    Cipher cipherM34832if2 = m34832if("AES/CCM/NoPadding", bArrM34831goto2);
                    p70Var = new p70(new b1(PKCSObjectIdentifiers.id_PBES2, new m91(xq0VarM34824catch2, new u70(ccatch6, me.m4905try(cipherM34832if2.getParameters().getEncoded())))), cipherM34832if2.doFinal(kw1Var.getEncoded()));
                } else {
                    p70Var = new p70(new b1(PKCSObjectIdentifiers.id_PBES2, new m91(xq0VarM34824catch2, new u70(NISTObjectIdentifiers.id_aes256_wrap_pad))), m34832if("AESKWP", bArrM34831goto2).doFinal(kw1Var.getEncoded()));
                }
                this.f31365new.put(str, new o51(f31355throw, str, dateM34823case, date, p70Var.getEncoded(), null));
            } catch (Exception e2) {
                throw new Cnew("BCFKS KeyStore exception storing private key: " + e2.toString(), e2);
            }
        }
        this.f31357break = date;
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        Date date = new Date();
        o51 o51Var = this.f31365new.get(str);
        Date dateM34823case = o51Var != null ? m34823case(o51Var, date) : date;
        if (certificateArr != null) {
            try {
                o70 o70VarM5495case = o70.m5495case(bArr);
                try {
                    this.f31367try.remove(str);
                    this.f31365new.put(str, new o51(f31356while, str, dateM34823case, date, m34830for(o70VarM5495case, certificateArr).getEncoded(), null));
                } catch (Exception e) {
                    throw new Cnew("BCFKS KeyStore exception storing protected private key: " + e.toString(), e);
                }
            } catch (Exception e2) {
                throw new Cnew("BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo.", e2);
            }
        } else {
            try {
                this.f31365new.put(str, new o51(f31353import, str, dateM34823case, date, bArr, null));
            } catch (Exception e3) {
                throw new Cnew("BCFKS KeyStore exception storing protected private key: " + e3.toString(), e3);
            }
        }
        this.f31357break = date;
    }

    @Override // java.security.KeyStoreSpi
    public int engineSize() {
        return this.f31365new.size();
    }

    @Override // java.security.KeyStoreSpi
    public void engineStore(OutputStream outputStream, char[] cArr) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        xq0 xq0Var;
        BigInteger bigIntegerM7787case;
        if (this.f31366this == null) {
            throw new IOException("KeyStore not initialized");
        }
        l70 l70VarM34829final = m34829final(this.f31358case, cArr);
        if (MiscObjectIdentifiers.id_scrypt.equals(this.f31361else.m9565new())) {
            os1 os1VarM5750case = os1.m5750case(this.f31361else.m9564case());
            xq0Var = this.f31361else;
            bigIntegerM7787case = os1VarM5750case.m5751else();
        } else {
            t91 t91VarM7786new = t91.m7786new(this.f31361else.m9564case());
            xq0Var = this.f31361else;
            bigIntegerM7787case = t91VarM7786new.m7787case();
        }
        this.f31361else = m34836this(xq0Var, bigIntegerM7787case.intValue());
        try {
            outputStream.write(new t51(l70VarM34829final, new v51(new yc1(this.f31358case, this.f31361else, m34827do(l70VarM34829final.getEncoded(), this.f31358case, this.f31361else, cArr)))).getEncoded());
            outputStream.flush();
        } catch (NoSuchProviderException e) {
            throw new IOException("cannot calculate mac: " + e.getMessage());
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws BadPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, SignatureException, UnsupportedCallbackException, IOException, InvalidKeyException, CertificateException {
        zx1 zx1Var;
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'parameter' arg cannot be null");
        }
        if (loadStoreParameter instanceof u5) {
            u5 u5Var = (u5) loadStoreParameter;
            char[] cArrM34828else = m34828else(loadStoreParameter);
            this.f31361else = m34822break(u5Var.m8245if(), 64);
            engineStore(u5Var.m8244do(), cArrM34828else);
            return;
        }
        if (!(loadStoreParameter instanceof BCFKSLoadStoreParameter)) {
            if (loadStoreParameter instanceof x5) {
                engineStore(((x5) loadStoreParameter).m9395if(), m34828else(loadStoreParameter));
                return;
            }
            throw new IllegalArgumentException("no support for 'parameter' of type " + loadStoreParameter.getClass().getName());
        }
        BCFKSLoadStoreParameter bCFKSLoadStoreParameter = (BCFKSLoadStoreParameter) loadStoreParameter;
        if (bCFKSLoadStoreParameter.m34531this() == null) {
            char[] cArrM34828else2 = m34828else(bCFKSLoadStoreParameter);
            this.f31361else = m34822break(bCFKSLoadStoreParameter.m34527else(), 64);
            this.f31359catch = bCFKSLoadStoreParameter.m34532try() == BCFKSLoadStoreParameter.Cfor.AES256_CCM ? NISTObjectIdentifiers.id_aes256_CCM : NISTObjectIdentifiers.id_aes256_wrap_pad;
            this.f31358case = bCFKSLoadStoreParameter.m34526case() == BCFKSLoadStoreParameter.Cnew.HmacSHA512 ? new b1(PKCSObjectIdentifiers.id_hmacWithSHA512, h.f29080do) : new b1(NISTObjectIdentifiers.id_hmacWithSHA3_512, h.f29080do);
            engineStore(bCFKSLoadStoreParameter.m9395if(), cArrM34828else2);
            return;
        }
        this.f31363goto = m34825class(bCFKSLoadStoreParameter.m34531this(), bCFKSLoadStoreParameter.m34529goto());
        this.f31361else = m34822break(bCFKSLoadStoreParameter.m34527else(), 64);
        this.f31359catch = bCFKSLoadStoreParameter.m34532try() == BCFKSLoadStoreParameter.Cfor.AES256_CCM ? NISTObjectIdentifiers.id_aes256_CCM : NISTObjectIdentifiers.id_aes256_wrap_pad;
        this.f31358case = bCFKSLoadStoreParameter.m34526case() == BCFKSLoadStoreParameter.Cnew.HmacSHA512 ? new b1(PKCSObjectIdentifiers.id_hmacWithSHA512, h.f29080do) : new b1(NISTObjectIdentifiers.id_hmacWithSHA3_512, h.f29080do);
        l70 l70VarM34829final = m34829final(this.f31363goto, m34828else(bCFKSLoadStoreParameter));
        try {
            Signature signatureCreateSignature = this.f31362for.createSignature(this.f31363goto.m420new().m32795super());
            signatureCreateSignature.initSign((PrivateKey) bCFKSLoadStoreParameter.m34531this());
            signatureCreateSignature.update(l70VarM34829final.getEncoded());
            X509Certificate[] x509CertificateArrM34530new = bCFKSLoadStoreParameter.m34530new();
            if (x509CertificateArrM34530new != null) {
                int length = x509CertificateArrM34530new.length;
                rg[] rgVarArr = new rg[length];
                for (int i = 0; i != length; i++) {
                    rgVarArr[i] = rg.m6956try(x509CertificateArrM34530new[i].getEncoded());
                }
                zx1Var = new zx1(this.f31363goto, rgVarArr, signatureCreateSignature.sign());
            } else {
                zx1Var = new zx1(this.f31363goto, signatureCreateSignature.sign());
            }
            bCFKSLoadStoreParameter.m9395if().write(new t51(l70VarM34829final, new v51(zx1Var)).getEncoded());
            bCFKSLoadStoreParameter.m9395if().flush();
        } catch (GeneralSecurityException e) {
            throw new IOException("error creating signature: " + e.getMessage(), e);
        }
    }
}
