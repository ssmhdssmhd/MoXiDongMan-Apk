package android.support.v4;

import org.bouncycastle.crypto.CharToByteConverter;
import org.bouncycastle.jcajce.PBKDFKey;

/* loaded from: classes3.dex */
public class n91 implements PBKDFKey {
    private final CharToByteConverter converter;
    private final char[] password;

    public n91(char[] cArr, CharToByteConverter charToByteConverter) {
        char[] cArr2 = new char[cArr.length];
        this.password = cArr2;
        this.converter = charToByteConverter;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "PBKDF1";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return this.converter.convert(this.password);
    }

    @Override // java.security.Key
    public String getFormat() {
        return this.converter.getType();
    }

    public char[] getPassword() {
        return this.password;
    }
}
