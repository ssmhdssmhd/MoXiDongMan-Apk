package android.support.v4;

import org.bouncycastle.crypto.CharToByteConverter;
import org.bouncycastle.jcajce.PBKDFKey;

/* loaded from: classes3.dex */
public class p91 implements PBKDFKey {
    private final CharToByteConverter converter;
    private final char[] password;

    public p91(char[] cArr, CharToByteConverter charToByteConverter) {
        this.password = q3.m6393throw(cArr);
        this.converter = charToByteConverter;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "PBKDF2";
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
