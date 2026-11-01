package android.support.v4;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.crypto.KeyParser;

/* loaded from: classes3.dex */
public class gu implements KeyParser {

    /* renamed from: do, reason: not valid java name */
    private ou f2245do;

    public gu(ou ouVar) {
        this.f2245do = ouVar;
    }

    @Override // org.bouncycastle.crypto.KeyParser
    public a4 readKey(InputStream inputStream) throws IOException {
        int iBitLength = (this.f2245do.m5757case().bitLength() + 7) / 8;
        byte[] bArr = new byte[iBitLength];
        a22.m19else(inputStream, bArr, 0, iBitLength);
        return new ru(new BigInteger(1, bArr), this.f2245do);
    }
}
