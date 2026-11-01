package net.lingala.zip4j.io.outputstream;

import android.support.v4.mj2;
import android.support.v4.sk2;
import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.crypto.Cnew;
import okhttp3.internal.ws.WebSocketProtocol;

/* renamed from: net.lingala.zip4j.io.outputstream.catch, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccatch extends Cif<Cnew> {
    public Ccatch(Cthis cthis, sk2 sk2Var, char[] cArr) throws IOException {
        super(cthis, sk2Var, cArr);
    }

    /* renamed from: case, reason: not valid java name */
    private long m31511case(sk2 sk2Var) {
        return sk2Var.m7501throw() ? (mj2.m4934case(sk2Var.m7474break()) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16 : sk2Var.m7482else();
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cnew mo31510new(OutputStream outputStream, sk2 sk2Var, char[] cArr) throws IOException {
        Cnew cnew = new Cnew(cArr, m31511case(sk2Var));
        m31530try(cnew.m31449for());
        return cnew;
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif, java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
    }
}
