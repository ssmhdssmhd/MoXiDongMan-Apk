package android.support.v4;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.KeyParser;

/* loaded from: classes3.dex */
public class p40 implements KeyParser {

    /* renamed from: do, reason: not valid java name */
    private e40 f4843do;

    public p40(e40 e40Var) {
        this.f4843do = e40Var;
    }

    @Override // org.bouncycastle.crypto.KeyParser
    public a4 readKey(InputStream inputStream) throws IOException {
        byte[] bArr;
        int i = inputStream.read();
        if (i == 0) {
            throw new IOException("Sender's public key invalid.");
        }
        if (i == 2 || i == 3) {
            bArr = new byte[((this.f4843do.m1646do().mo35334switch() + 7) / 8) + 1];
        } else {
            if (i != 4 && i != 6 && i != 7) {
                throw new IOException("Sender's public key has invalid point encoding 0x" + Integer.toString(i, 16));
            }
            bArr = new byte[(((this.f4843do.m1646do().mo35334switch() + 7) / 8) * 2) + 1];
        }
        bArr[0] = (byte) i;
        a22.m19else(inputStream, bArr, 1, bArr.length - 1);
        return new k50(this.f4843do.m1646do().m35421class(bArr), this.f4843do);
    }
}
