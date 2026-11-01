package net.lingala.zip4j.io.inputstream;

import android.support.v4.mu0;
import java.io.IOException;
import net.lingala.zip4j.crypto.Cfor;

/* renamed from: net.lingala.zip4j.io.inputstream.break, reason: invalid class name */
/* loaded from: classes3.dex */
class Cbreak extends Cif<Cfor> {
    public Cbreak(Cgoto cgoto, mu0 mu0Var, char[] cArr) throws IOException {
        super(cgoto, mu0Var, cArr);
    }

    /* renamed from: break, reason: not valid java name */
    private byte[] m31451break() throws IOException {
        byte[] bArr = new byte[12];
        m31476this(bArr);
        return bArr;
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor mo31453goto(mu0 mu0Var, char[] cArr) throws IOException {
        return new Cfor(cArr, mu0Var.m8074else(), m31451break());
    }
}
