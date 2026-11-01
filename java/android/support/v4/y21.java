package android.support.v4;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jce.provider.Cdo;

/* loaded from: classes3.dex */
public class y21 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public PublicKey f8106case;

    /* renamed from: do, reason: not valid java name */
    public b1 f8107do;

    /* renamed from: for, reason: not valid java name */
    public byte[] f8108for;

    /* renamed from: if, reason: not valid java name */
    public b1 f8109if;

    /* renamed from: new, reason: not valid java name */
    public String f8110new;

    /* renamed from: try, reason: not valid java name */
    public Cinstanceof f8111try;

    public y21(String str, b1 b1Var, PublicKey publicKey) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        this.f8110new = str;
        this.f8107do = b1Var;
        this.f8106case = publicKey;
        Cimport cimport = new Cimport();
        cimport.m3516do(m9713case());
        cimport.m3516do(new org.bouncycastle.asn1.g(str));
        try {
            this.f8111try = new Cinstanceof(new org.bouncycastle.asn1.n(cimport));
        } catch (IOException e) {
            throw new InvalidKeySpecException("exception encoding key: " + e.toString());
        }
    }

    public y21(Csuper csuper) {
        try {
            if (csuper.size() != 3) {
                throw new IllegalArgumentException("invalid SPKAC (size):" + csuper.size());
            }
            this.f8107do = b1.m418try(csuper.mo33075final(1));
            this.f8108for = ((Cinstanceof) csuper.mo33075final(2)).m33059super();
            Csuper csuper2 = (Csuper) csuper.mo33075final(0);
            if (csuper2.size() != 2) {
                throw new IllegalArgumentException("invalid PKAC (len): " + csuper2.size());
            }
            this.f8110new = ((org.bouncycastle.asn1.g) csuper2.mo33075final(1)).getString();
            this.f8111try = new Cinstanceof(csuper2);
            Ctry ctryM33291case = Ctry.m33291case(csuper2.mo33075final(0));
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(new Cinstanceof(ctryM33291case).m33057const());
            b1 b1VarM33295new = ctryM33291case.m33295new();
            this.f8109if = b1VarM33295new;
            this.f8106case = KeyFactory.getInstance(b1VarM33295new.m420new().m32795super(), Cdo.PROVIDER_NAME).generatePublic(x509EncodedKeySpec);
        } catch (Exception e) {
            throw new IllegalArgumentException(e.toString());
        }
    }

    public y21(byte[] bArr) throws IOException {
        this(m9714goto(bArr));
    }

    /* renamed from: case, reason: not valid java name */
    private Cfinal m9713case() throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, NoSuchProviderException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(this.f8106case.getEncoded());
            byteArrayOutputStream.close();
            return new Celse(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())).m33002break();
        } catch (IOException e) {
            throw new InvalidKeySpecException(e.getMessage());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static Csuper m9714goto(byte[] bArr) throws IOException {
        return Csuper.m33129catch(new Celse(new ByteArrayInputStream(bArr)).m33002break());
    }

    /* renamed from: break, reason: not valid java name */
    public void m9715break(String str) {
        this.f8110new = str;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m9716catch(b1 b1Var) {
        this.f8109if = b1Var;
    }

    /* renamed from: class, reason: not valid java name */
    public void m9717class(PublicKey publicKey) {
        this.f8106case = publicKey;
    }

    /* renamed from: const, reason: not valid java name */
    public void m9718const(b1 b1Var) {
        this.f8107do = b1Var;
    }

    /* renamed from: else, reason: not valid java name */
    public PublicKey m9719else() {
        return this.f8106case;
    }

    /* renamed from: final, reason: not valid java name */
    public void m9720final(PrivateKey privateKey) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        m9722super(privateKey, null);
    }

    /* renamed from: new, reason: not valid java name */
    public String m9721new() {
        return this.f8110new;
    }

    /* renamed from: super, reason: not valid java name */
    public void m9722super(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        Signature signature = Signature.getInstance(this.f8107do.m420new().m32795super(), Cdo.PROVIDER_NAME);
        if (secureRandom != null) {
            signature.initSign(privateKey, secureRandom);
        } else {
            signature.initSign(privateKey);
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(m9713case());
        cimport.m3516do(new org.bouncycastle.asn1.g(this.f8110new));
        try {
            signature.update(new org.bouncycastle.asn1.n(cimport).m32764do(ASN1Encoding.DER));
            this.f8108for = signature.sign();
        } catch (IOException e) {
            throw new SignatureException(e.getMessage());
        }
    }

    /* renamed from: this, reason: not valid java name */
    public b1 m9723this() {
        return this.f8107do;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m9724throw(String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        if (!str.equals(this.f8110new)) {
            return false;
        }
        Signature signature = Signature.getInstance(this.f8107do.m420new().m32795super(), Cdo.PROVIDER_NAME);
        signature.initVerify(this.f8106case);
        signature.update(this.f8111try.m33057const());
        return signature.verify(this.f8108for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cimport cimport2 = new Cimport();
        try {
            cimport2.m3516do(m9713case());
        } catch (Exception unused) {
        }
        cimport2.m3516do(new org.bouncycastle.asn1.g(this.f8110new));
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        cimport.m3516do(this.f8107do);
        cimport.m3516do(new Cinstanceof(this.f8108for));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m9725try() {
        return this.f8109if;
    }
}
