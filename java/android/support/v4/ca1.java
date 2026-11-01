package android.support.v4;

import org.bouncycastle.jcajce.PBKDFKey;

/* loaded from: classes3.dex */
public class ca1 implements PBKDFKey {
    private final char[] password;
    private final boolean useWrongZeroLengthConversion;

    public ca1(char[] cArr) {
        this(cArr, false);
    }

    public ca1(char[] cArr, boolean z) {
        cArr = cArr == null ? new char[0] : cArr;
        char[] cArr2 = new char[cArr.length];
        this.password = cArr2;
        this.useWrongZeroLengthConversion = z;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "PKCS12";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return (this.useWrongZeroLengthConversion && this.password.length == 0) ? new byte[2] : l91.m4619do(this.password);
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS12";
    }

    public char[] getPassword() {
        return this.password;
    }
}
