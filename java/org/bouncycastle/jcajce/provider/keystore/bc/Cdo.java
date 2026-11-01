package org.bouncycastle.jcajce.provider.keystore.bc;

import android.support.v4.a22;
import android.support.v4.ax0;
import android.support.v4.d52;
import android.support.v4.fa1;
import android.support.v4.l91;
import android.support.v4.pi0;
import android.support.v4.q3;
import android.support.v4.w00;
import android.support.v4.w5;
import android.support.v4.wp1;
import android.support.v4.x00;
import android.support.v4.zw0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.BCKeyStore;

/* renamed from: org.bouncycastle.jcajce.provider.keystore.bc.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends KeyStoreSpi implements BCKeyStore {

    /* renamed from: break, reason: not valid java name */
    private static final String f31326break = "PBEWithSHAAnd3-KeyTripleDES-CBC";

    /* renamed from: case, reason: not valid java name */
    private static final int f31327case = 20;

    /* renamed from: catch, reason: not valid java name */
    public static final int f31328catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f31329class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f31330const = 2;

    /* renamed from: else, reason: not valid java name */
    private static final String f31331else = "PBEWithSHAAndTwofish-CBC";

    /* renamed from: final, reason: not valid java name */
    public static final int f31332final = 3;

    /* renamed from: goto, reason: not valid java name */
    private static final int f31333goto = 20;

    /* renamed from: import, reason: not valid java name */
    public static final int f31334import = 2;

    /* renamed from: super, reason: not valid java name */
    public static final int f31335super = 4;

    /* renamed from: this, reason: not valid java name */
    private static final int f31336this = 1024;

    /* renamed from: throw, reason: not valid java name */
    public static final int f31337throw = 0;

    /* renamed from: try, reason: not valid java name */
    private static final int f31338try = 2;

    /* renamed from: while, reason: not valid java name */
    public static final int f31339while = 1;

    /* renamed from: for, reason: not valid java name */
    public int f31341for;

    /* renamed from: do, reason: not valid java name */
    public Hashtable f31340do = new Hashtable();

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f31342if = org.bouncycastle.crypto.Cfor.m33599case();

    /* renamed from: new, reason: not valid java name */
    private final JcaJceHelper f31343new = new w5();

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bc.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0437do extends Cdo {
        public C0437do() {
            super(1);
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bc.Cdo, java.security.KeyStoreSpi
        public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
            this.f31340do.clear();
            if (inputStream == null) {
                return;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            int i = dataInputStream.readInt();
            if (i != 2 && i != 0 && i != 1) {
                throw new IOException("Wrong version of key store.");
            }
            int i2 = dataInputStream.readInt();
            byte[] bArr = new byte[i2];
            if (i2 != 20) {
                throw new IOException("Key store corrupted.");
            }
            dataInputStream.readFully(bArr);
            int i3 = dataInputStream.readInt();
            if (i3 < 0 || i3 > 65536) {
                throw new IOException("Key store corrupted.");
            }
            CipherInputStream cipherInputStream = new CipherInputStream(dataInputStream, m34814goto(i == 0 ? "OldPBEWithSHAAndTwofish-CBC" : Cdo.f31331else, 2, cArr, bArr, i3));
            wp1 wp1Var = new wp1();
            m34813else(new w00(cipherInputStream, wp1Var));
            byte[] bArr2 = new byte[wp1Var.getDigestSize()];
            wp1Var.doFinal(bArr2, 0);
            byte[] bArr3 = new byte[wp1Var.getDigestSize()];
            a22.m17case(cipherInputStream, bArr3);
            if (q3.m6360abstract(bArr2, bArr3)) {
                return;
            }
            this.f31340do.clear();
            throw new IOException("KeyStore integrity check failed.");
        }

        @Override // org.bouncycastle.jcajce.provider.keystore.bc.Cdo, java.security.KeyStoreSpi
        public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, CertificateEncodingException {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            byte[] bArr = new byte[20];
            int iNextInt = (this.f31342if.nextInt() & 1023) + 1024;
            this.f31342if.nextBytes(bArr);
            dataOutputStream.writeInt(this.f31341for);
            dataOutputStream.writeInt(20);
            dataOutputStream.write(bArr);
            dataOutputStream.writeInt(iNextInt);
            CipherOutputStream cipherOutputStream = new CipherOutputStream(dataOutputStream, m34814goto(Cdo.f31331else, 1, cArr, bArr, iNextInt));
            x00 x00Var = new x00(new wp1());
            m34815this(new d52(cipherOutputStream, x00Var));
            cipherOutputStream.write(x00Var.m9319do());
            cipherOutputStream.close();
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bc.do$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f31345do;

        /* renamed from: for, reason: not valid java name */
        public Object f31346for;

        /* renamed from: if, reason: not valid java name */
        public String f31347if;

        /* renamed from: new, reason: not valid java name */
        public Certificate[] f31348new;

        /* renamed from: try, reason: not valid java name */
        public Date f31349try;

        public Cfor(String str, Key key, char[] cArr, Certificate[] certificateArr) throws Exception {
            this.f31349try = new Date();
            this.f31345do = 4;
            this.f31347if = str;
            this.f31348new = certificateArr;
            byte[] bArr = new byte[20];
            Cdo.this.f31342if.setSeed(System.currentTimeMillis());
            Cdo.this.f31342if.nextBytes(bArr);
            int iNextInt = (Cdo.this.f31342if.nextInt() & 1023) + 1024;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeInt(20);
            dataOutputStream.write(bArr);
            dataOutputStream.writeInt(iNextInt);
            DataOutputStream dataOutputStream2 = new DataOutputStream(new CipherOutputStream(dataOutputStream, Cdo.this.m34814goto(Cdo.f31326break, 1, cArr, bArr, iNextInt)));
            Cdo.this.m34807case(key, dataOutputStream2);
            dataOutputStream2.close();
            this.f31346for = byteArrayOutputStream.toByteArray();
        }

        public Cfor(String str, Certificate certificate) {
            this.f31349try = new Date();
            this.f31345do = 1;
            this.f31347if = str;
            this.f31346for = certificate;
            this.f31348new = null;
        }

        public Cfor(String str, Date date, int i, Object obj) {
            this.f31349try = new Date();
            this.f31347if = str;
            this.f31349try = date;
            this.f31345do = i;
            this.f31346for = obj;
        }

        public Cfor(String str, Date date, int i, Object obj, Certificate[] certificateArr) {
            this.f31349try = new Date();
            this.f31347if = str;
            this.f31349try = date;
            this.f31345do = i;
            this.f31346for = obj;
            this.f31348new = certificateArr;
        }

        public Cfor(String str, byte[] bArr, Certificate[] certificateArr) {
            this.f31349try = new Date();
            this.f31345do = 3;
            this.f31347if = str;
            this.f31346for = bArr;
            this.f31348new = certificateArr;
        }

        /* renamed from: case, reason: not valid java name */
        public int m34816case() {
            return this.f31345do;
        }

        /* renamed from: do, reason: not valid java name */
        public String m34817do() {
            return this.f31347if;
        }

        /* renamed from: for, reason: not valid java name */
        public Date m34818for() {
            return this.f31349try;
        }

        /* renamed from: if, reason: not valid java name */
        public Certificate[] m34819if() {
            return this.f31348new;
        }

        /* renamed from: new, reason: not valid java name */
        public Object m34820new() {
            return this.f31346for;
        }

        /* renamed from: try, reason: not valid java name */
        public Object m34821try(char[] cArr) throws UnrecoverableKeyException, NoSuchAlgorithmException, IOException {
            Key keyM34811new;
            if (cArr == null || cArr.length == 0) {
                Object obj = this.f31346for;
                if (obj instanceof Key) {
                    return obj;
                }
            }
            if (this.f31345do != 4) {
                throw new RuntimeException("forget something!");
            }
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) this.f31346for));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr);
                try {
                    return Cdo.this.m34811new(new DataInputStream(new CipherInputStream(dataInputStream, Cdo.this.m34814goto(Cdo.f31326break, 2, cArr, bArr, dataInputStream.readInt()))));
                } catch (Exception unused) {
                    DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) this.f31346for));
                    byte[] bArr2 = new byte[dataInputStream2.readInt()];
                    dataInputStream2.readFully(bArr2);
                    int i = dataInputStream2.readInt();
                    try {
                        keyM34811new = Cdo.this.m34811new(new DataInputStream(new CipherInputStream(dataInputStream2, Cdo.this.m34814goto("BrokenPBEWithSHAAnd3-KeyTripleDES-CBC", 2, cArr, bArr2, i))));
                    } catch (Exception unused2) {
                        DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) this.f31346for));
                        bArr2 = new byte[dataInputStream3.readInt()];
                        dataInputStream3.readFully(bArr2);
                        i = dataInputStream3.readInt();
                        keyM34811new = Cdo.this.m34811new(new DataInputStream(new CipherInputStream(dataInputStream3, Cdo.this.m34814goto("OldPBEWithSHAAnd3-KeyTripleDES-CBC", 2, cArr, bArr2, i))));
                    }
                    byte[] bArr3 = bArr2;
                    int i2 = i;
                    if (keyM34811new == null) {
                        throw new UnrecoverableKeyException("no match");
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt(bArr3.length);
                    dataOutputStream.write(bArr3);
                    dataOutputStream.writeInt(i2);
                    DataOutputStream dataOutputStream2 = new DataOutputStream(new CipherOutputStream(dataOutputStream, Cdo.this.m34814goto(Cdo.f31326break, 1, cArr, bArr3, i2)));
                    Cdo.this.m34807case(keyM34811new, dataOutputStream2);
                    dataOutputStream2.close();
                    this.f31346for = byteArrayOutputStream.toByteArray();
                    return keyM34811new;
                }
            } catch (Exception unused3) {
                throw new UnrecoverableKeyException("no match");
            }
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bc.do$if, reason: invalid class name */
    public static class Cif extends Cdo {
        public Cif() {
            super(2);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.keystore.bc.do$new, reason: invalid class name */
    public static class Cnew extends Cdo {
        public Cnew() {
            super(1);
        }
    }

    public Cdo(int i) {
        this.f31341for = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public void m34807case(Key key, DataOutputStream dataOutputStream) throws IOException {
        byte[] encoded = key.getEncoded();
        dataOutputStream.write(key instanceof PrivateKey ? 0 : key instanceof PublicKey ? 1 : 2);
        dataOutputStream.writeUTF(key.getFormat());
        dataOutputStream.writeUTF(key.getAlgorithm());
        dataOutputStream.writeInt(encoded.length);
        dataOutputStream.write(encoded);
    }

    /* renamed from: for, reason: not valid java name */
    private Certificate m34809for(DataInputStream dataInputStream) throws IOException {
        String utf = dataInputStream.readUTF();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        try {
            return this.f31343new.createCertificateFactory(utf).generateCertificate(new ByteArrayInputStream(bArr));
        } catch (NoSuchProviderException e) {
            throw new IOException(e.toString());
        } catch (CertificateException e2) {
            throw new IOException(e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public Key m34811new(DataInputStream dataInputStream) throws IOException {
        KeySpec pKCS8EncodedKeySpec;
        int i = dataInputStream.read();
        String utf = dataInputStream.readUTF();
        String utf2 = dataInputStream.readUTF();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        if (utf.equals("PKCS#8") || utf.equals("PKCS8")) {
            pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(bArr);
        } else {
            if (!utf.equals("X.509") && !utf.equals("X509")) {
                if (utf.equals("RAW")) {
                    return new SecretKeySpec(bArr, utf2);
                }
                throw new IOException("Key format " + utf + " not recognised!");
            }
            pKCS8EncodedKeySpec = new X509EncodedKeySpec(bArr);
        }
        try {
            if (i == 0) {
                return org.bouncycastle.jce.provider.Cdo.getPrivateKey(org.bouncycastle.asn1.pkcs.Cdo.m33100try(bArr));
            }
            if (i == 1) {
                return org.bouncycastle.jce.provider.Cdo.getPublicKey(Ctry.m33291case(bArr));
            }
            if (i == 2) {
                return this.f31343new.createSecretKeyFactory(utf2).generateSecret(pKCS8EncodedKeySpec);
            }
            throw new IOException("Key type " + i + " not recognised!");
        } catch (Exception e) {
            throw new IOException("Exception creating key: " + e.toString());
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m34812try(Certificate certificate, DataOutputStream dataOutputStream) throws IOException, CertificateEncodingException {
        try {
            byte[] encoded = certificate.getEncoded();
            dataOutputStream.writeUTF(certificate.getType());
            dataOutputStream.writeInt(encoded.length);
            dataOutputStream.write(encoded);
        } catch (CertificateEncodingException e) {
            throw new IOException(e.toString());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m34813else(InputStream inputStream) throws IOException {
        Hashtable hashtable;
        Cfor cfor;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        for (int i = dataInputStream.read(); i > 0; i = dataInputStream.read()) {
            String utf = dataInputStream.readUTF();
            Date date = new Date(dataInputStream.readLong());
            int i2 = dataInputStream.readInt();
            Certificate[] certificateArr = null;
            if (i2 != 0) {
                certificateArr = new Certificate[i2];
                for (int i3 = 0; i3 != i2; i3++) {
                    certificateArr[i3] = m34809for(dataInputStream);
                }
            }
            Certificate[] certificateArr2 = certificateArr;
            if (i == 1) {
                Certificate certificateM34809for = m34809for(dataInputStream);
                hashtable = this.f31340do;
                cfor = new Cfor(utf, date, 1, certificateM34809for);
            } else if (i == 2) {
                Key keyM34811new = m34811new(dataInputStream);
                hashtable = this.f31340do;
                cfor = new Cfor(utf, date, 2, keyM34811new, certificateArr2);
            } else {
                if (i != 3 && i != 4) {
                    throw new IOException("Unknown object type in store.");
                }
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr);
                this.f31340do.put(utf, new Cfor(utf, date, i, bArr, certificateArr2));
            }
            hashtable.put(utf, cfor);
        }
    }

    @Override // java.security.KeyStoreSpi
    public Enumeration engineAliases() {
        return this.f31340do.keys();
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineContainsAlias(String str) {
        return this.f31340do.get(str) != null;
    }

    @Override // java.security.KeyStoreSpi
    public void engineDeleteEntry(String str) throws KeyStoreException {
        if (this.f31340do.get(str) == null) {
            return;
        }
        this.f31340do.remove(str);
    }

    @Override // java.security.KeyStoreSpi
    public Certificate engineGetCertificate(String str) {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        if (cfor == null) {
            return null;
        }
        if (cfor.m34816case() == 1) {
            return (Certificate) cfor.m34820new();
        }
        Certificate[] certificateArrM34819if = cfor.m34819if();
        if (certificateArrM34819if != null) {
            return certificateArrM34819if[0];
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration enumerationElements = this.f31340do.elements();
        while (enumerationElements.hasMoreElements()) {
            Cfor cfor = (Cfor) enumerationElements.nextElement();
            if (!(cfor.m34820new() instanceof Certificate)) {
                Certificate[] certificateArrM34819if = cfor.m34819if();
                if (certificateArrM34819if != null && certificateArrM34819if[0].equals(certificate)) {
                    return cfor.m34817do();
                }
            } else if (((Certificate) cfor.m34820new()).equals(certificate)) {
                return cfor.m34817do();
            }
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public Certificate[] engineGetCertificateChain(String str) {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        if (cfor != null) {
            return cfor.m34819if();
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public Date engineGetCreationDate(String str) {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        if (cfor != null) {
            return cfor.m34818for();
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        if (cfor == null || cfor.m34816case() == 1) {
            return null;
        }
        return (Key) cfor.m34821try(cArr);
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsCertificateEntry(String str) {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        return cfor != null && cfor.m34816case() == 1;
    }

    @Override // java.security.KeyStoreSpi
    public boolean engineIsKeyEntry(String str) {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        return (cfor == null || cfor.m34816case() == 1) ? false : true;
    }

    @Override // java.security.KeyStoreSpi
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
        this.f31340do.clear();
        if (inputStream == null) {
            return;
        }
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        int i = dataInputStream.readInt();
        if (i != 2 && i != 0 && i != 1) {
            throw new IOException("Wrong version of key store.");
        }
        int i2 = dataInputStream.readInt();
        if (i2 <= 0) {
            throw new IOException("Invalid salt detected");
        }
        byte[] bArr = new byte[i2];
        dataInputStream.readFully(bArr);
        int i3 = dataInputStream.readInt();
        pi0 pi0Var = new pi0(new wp1());
        if (cArr == null || cArr.length == 0) {
            m34813else(dataInputStream);
            dataInputStream.readFully(new byte[pi0Var.getMacSize()]);
            return;
        }
        byte[] bArrM4619do = l91.m4619do(cArr);
        fa1 fa1Var = new fa1(new wp1());
        fa1Var.m4622break(bArrM4619do, bArr, i3);
        CipherParameters cipherParametersMo2235new = fa1Var.mo2235new(i != 2 ? pi0Var.getMacSize() : pi0Var.getMacSize() * 8);
        q3.c(bArrM4619do, (byte) 0);
        pi0Var.init(cipherParametersMo2235new);
        m34813else(new zw0(dataInputStream, pi0Var));
        byte[] bArr2 = new byte[pi0Var.getMacSize()];
        pi0Var.doFinal(bArr2, 0);
        byte[] bArr3 = new byte[pi0Var.getMacSize()];
        dataInputStream.readFully(bArr3);
        if (q3.m6360abstract(bArr2, bArr3)) {
            return;
        }
        this.f31340do.clear();
        throw new IOException("KeyStore integrity check failed.");
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        Cfor cfor = (Cfor) this.f31340do.get(str);
        if (cfor == null || cfor.m34816case() == 1) {
            this.f31340do.put(str, new Cfor(str, certificate));
            return;
        }
        throw new KeyStoreException("key store already has a key entry with alias " + str);
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        if ((key instanceof PrivateKey) && certificateArr == null) {
            throw new KeyStoreException("no certificate chain for private key");
        }
        try {
            this.f31340do.put(str, new Cfor(str, key, cArr, certificateArr));
        } catch (Exception e) {
            throw new KeyStoreException(e.toString());
        }
    }

    @Override // java.security.KeyStoreSpi
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        this.f31340do.put(str, new Cfor(str, bArr, certificateArr));
    }

    @Override // java.security.KeyStoreSpi
    public int engineSize() {
        return this.f31340do.size();
    }

    @Override // java.security.KeyStoreSpi
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, CertificateEncodingException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        byte[] bArr = new byte[20];
        int iNextInt = (this.f31342if.nextInt() & 1023) + 1024;
        this.f31342if.nextBytes(bArr);
        dataOutputStream.writeInt(this.f31341for);
        dataOutputStream.writeInt(20);
        dataOutputStream.write(bArr);
        dataOutputStream.writeInt(iNextInt);
        pi0 pi0Var = new pi0(new wp1());
        ax0 ax0Var = new ax0(pi0Var);
        fa1 fa1Var = new fa1(new wp1());
        byte[] bArrM4619do = l91.m4619do(cArr);
        fa1Var.m4622break(bArrM4619do, bArr, iNextInt);
        pi0Var.init(fa1Var.mo2235new(this.f31341for < 2 ? pi0Var.getMacSize() : pi0Var.getMacSize() * 8));
        for (int i = 0; i != bArrM4619do.length; i++) {
            bArrM4619do[i] = 0;
        }
        m34815this(new d52(dataOutputStream, ax0Var));
        byte[] bArr2 = new byte[pi0Var.getMacSize()];
        pi0Var.doFinal(bArr2, 0);
        dataOutputStream.write(bArr2);
        dataOutputStream.close();
    }

    /* renamed from: goto, reason: not valid java name */
    public Cipher m34814goto(String str, int i, char[] cArr, byte[] bArr, int i2) throws InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        try {
            PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
            SecretKeyFactory secretKeyFactoryCreateSecretKeyFactory = this.f31343new.createSecretKeyFactory(str);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i2);
            Cipher cipherCreateCipher = this.f31343new.createCipher(str);
            cipherCreateCipher.init(i, secretKeyFactoryCreateSecretKeyFactory.generateSecret(pBEKeySpec), pBEParameterSpec);
            return cipherCreateCipher;
        } catch (Exception e) {
            throw new IOException("Error initialising store of key store: " + e);
        }
    }

    @Override // org.bouncycastle.jce.interfaces.BCKeyStore
    public void setRandom(SecureRandom secureRandom) {
        this.f31342if = secureRandom;
    }

    /* renamed from: this, reason: not valid java name */
    public void m34815this(OutputStream outputStream) throws IOException, CertificateEncodingException {
        Enumeration enumerationElements = this.f31340do.elements();
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        while (true) {
            if (!enumerationElements.hasMoreElements()) {
                dataOutputStream.write(0);
                return;
            }
            Cfor cfor = (Cfor) enumerationElements.nextElement();
            dataOutputStream.write(cfor.m34816case());
            dataOutputStream.writeUTF(cfor.m34817do());
            dataOutputStream.writeLong(cfor.m34818for().getTime());
            Certificate[] certificateArrM34819if = cfor.m34819if();
            if (certificateArrM34819if == null) {
                dataOutputStream.writeInt(0);
            } else {
                dataOutputStream.writeInt(certificateArrM34819if.length);
                for (int i = 0; i != certificateArrM34819if.length; i++) {
                    m34812try(certificateArrM34819if[i], dataOutputStream);
                }
            }
            int iM34816case = cfor.m34816case();
            if (iM34816case == 1) {
                m34812try((Certificate) cfor.m34820new(), dataOutputStream);
            } else if (iM34816case == 2) {
                m34807case((Key) cfor.m34820new(), dataOutputStream);
            } else {
                if (iM34816case != 3 && iM34816case != 4) {
                    throw new IOException("Unknown object type in store.");
                }
                byte[] bArr = (byte[]) cfor.m34820new();
                dataOutputStream.writeInt(bArr.length);
                dataOutputStream.write(bArr);
            }
        }
    }
}
