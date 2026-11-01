package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;

/* loaded from: classes3.dex */
public class m0 implements DatagramTransport {

    /* renamed from: case, reason: not valid java name */
    public static final int f30682case = 8;

    /* renamed from: new, reason: not valid java name */
    public static final int f30683new = 20;

    /* renamed from: try, reason: not valid java name */
    public static final int f30684try = 84;

    /* renamed from: do, reason: not valid java name */
    public final DatagramSocket f30685do;

    /* renamed from: for, reason: not valid java name */
    public final int f30686for;

    /* renamed from: if, reason: not valid java name */
    public final int f30687if;

    public m0(DatagramSocket datagramSocket, int i) throws IOException {
        if (!datagramSocket.isBound() || !datagramSocket.isConnected()) {
            throw new IllegalArgumentException("'socket' must be bound and connected");
        }
        this.f30685do = datagramSocket;
        this.f30687if = (i - 20) - 8;
        this.f30686for = (i - 84) - 8;
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public void close() throws IOException {
        this.f30685do.close();
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int getReceiveLimit() {
        return this.f30687if;
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int getSendLimit() {
        return this.f30686for;
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int receive(byte[] bArr, int i, int i2, int i3) throws IOException {
        this.f30685do.setSoTimeout(i3);
        DatagramPacket datagramPacket = new DatagramPacket(bArr, i, i2);
        this.f30685do.receive(datagramPacket);
        return datagramPacket.getLength();
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public void send(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > getSendLimit()) {
            throw new n72((short) 80);
        }
        this.f30685do.send(new DatagramPacket(bArr, i, i2));
    }
}
