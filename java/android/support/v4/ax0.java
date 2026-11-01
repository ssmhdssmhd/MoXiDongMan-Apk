package android.support.v4;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes3.dex */
public class ax0 extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    public Mac f281do;

    public ax0(Mac mac) {
        this.f281do = mac;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m395do() throws IllegalStateException, tw {
        byte[] bArr = new byte[this.f281do.getMacSize()];
        this.f281do.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IllegalStateException, IOException {
        this.f281do.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IOException {
        this.f281do.update(bArr, i, i2);
    }
}
