package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.default, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdefault implements DatagramTransport {

    /* renamed from: do, reason: not valid java name */
    private final Creturn f30572do;

    public Cdefault(Creturn creturn) {
        this.f30572do = creturn;
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public void close() throws IOException {
        this.f30572do.close();
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int getReceiveLimit() throws IOException {
        return this.f30572do.getReceiveLimit();
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int getSendLimit() throws IOException {
        return this.f30572do.getSendLimit();
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int receive(byte[] bArr, int i, int i2, int i3) throws IOException {
        try {
            return this.f30572do.receive(bArr, i, i2, i3);
        } catch (n72 e) {
            this.f30572do.m34289if(e.getAlertDescription());
            throw e;
        } catch (IOException e2) {
            this.f30572do.m34289if((short) 80);
            throw e2;
        } catch (RuntimeException e3) {
            this.f30572do.m34289if((short) 80);
            throw new n72((short) 80, e3);
        }
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public void send(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f30572do.send(bArr, i, i2);
        } catch (n72 e) {
            this.f30572do.m34289if(e.getAlertDescription());
            throw e;
        } catch (IOException e2) {
            this.f30572do.m34289if((short) 80);
            throw e2;
        } catch (RuntimeException e3) {
            this.f30572do.m34289if((short) 80);
            throw new n72((short) 80, e3);
        }
    }
}
