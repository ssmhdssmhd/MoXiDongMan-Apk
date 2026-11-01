package android.support.v4;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jce.interfaces.ECKey;

/* loaded from: classes3.dex */
public class fy1 extends SignatureSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private Digest f2015do;

    /* renamed from: if, reason: not valid java name */
    private DSAExt f2016if = new xv();

    /* renamed from: do, reason: not valid java name */
    public byte[] m2488do(byte[] bArr) {
        byte[] bArr2 = new byte[128];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr2[i2] = (byte) ((bArr[i] >> 4) & 15);
            bArr2[i2 + 1] = (byte) (bArr[i] & 15);
        }
        return bArr2;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    @Override // java.security.SignatureSpi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        a4 a4VarM34740new;
        SecureRandom secureRandom;
        if (!(privateKey instanceof p5) && !(privateKey instanceof ECKey)) {
            a4VarM34740new = null;
            secureRandom = ((SignatureSpi) this).appRandom;
            if (secureRandom == null) {
                this.f2016if.init(true, new cc1(a4VarM34740new, secureRandom));
                return;
            } else {
                this.f2016if.init(true, a4VarM34740new);
                return;
            }
        }
        a4VarM34740new = Celse.m34740new(privateKey);
        ig0 ig0Var = new ig0(m2488do(uv.m8659try()));
        this.f2015do = ig0Var;
        secureRandom = ((SignatureSpi) this).appRandom;
        if (secureRandom == null) {
        }
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        CipherParameters cipherParametersM34743try;
        if (publicKey instanceof q5) {
            q5 q5Var = (q5) publicKey;
            cipherParametersM34743try = q5Var.engineGetKeyParameters();
            this.f2015do = new ig0(m2488do(q5Var.getSbox()));
        } else {
            cipherParametersM34743try = Celse.m34743try(publicKey);
            this.f2015do = new ig0(m2488do(uv.m8659try()));
        }
        this.f2016if.init(false, cipherParametersM34743try);
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f2015do.getDigestSize()];
        this.f2015do.doFinal(bArr, 0);
        try {
            BigInteger[] bigIntegerArrGenerateSignature = this.f2016if.generateSignature(bArr);
            byte[] byteArray = bigIntegerArrGenerateSignature[0].toByteArray();
            byte[] byteArray2 = bigIntegerArrGenerateSignature[1].toByteArray();
            int length = (byteArray.length > byteArray2.length ? byteArray.length : byteArray2.length) * 2;
            byte[] bArr2 = new byte[length];
            System.arraycopy(byteArray2, 0, bArr2, (length / 2) - byteArray2.length, byteArray2.length);
            System.arraycopy(byteArray, 0, bArr2, length - byteArray.length, byteArray.length);
            return new org.bouncycastle.asn1.j(bArr2).getEncoded();
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f2015do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f2015do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f2015do.getDigestSize()];
        this.f2015do.doFinal(bArr2, 0);
        try {
            byte[] bArrMo5490const = ((Cclass) Cfinal.m33015else(bArr)).mo5490const();
            byte[] bArr3 = new byte[bArrMo5490const.length / 2];
            byte[] bArr4 = new byte[bArrMo5490const.length / 2];
            System.arraycopy(bArrMo5490const, 0, bArr4, 0, bArrMo5490const.length / 2);
            System.arraycopy(bArrMo5490const, bArrMo5490const.length / 2, bArr3, 0, bArrMo5490const.length / 2);
            BigInteger[] bigIntegerArr = {new BigInteger(1, bArr3), new BigInteger(1, bArr4)};
            return this.f2016if.verifySignature(bArr2, bigIntegerArr[0], bigIntegerArr[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
