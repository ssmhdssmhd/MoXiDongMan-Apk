package net.lingala.zip4j.io.outputstream;

import android.support.v4.sk2;
import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.crypto.Encrypter;

/* renamed from: net.lingala.zip4j.io.outputstream.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase extends Cif<Cdo> {

    /* renamed from: net.lingala.zip4j.io.outputstream.case$do, reason: invalid class name */
    public static class Cdo implements Encrypter {
        @Override // net.lingala.zip4j.crypto.Encrypter
        public int encryptData(byte[] bArr) {
            return encryptData(bArr, 0, bArr.length);
        }

        @Override // net.lingala.zip4j.crypto.Encrypter
        public int encryptData(byte[] bArr, int i, int i2) {
            return i2;
        }
    }

    public Ccase(Cthis cthis, sk2 sk2Var, char[] cArr) throws IOException {
        super(cthis, sk2Var, cArr);
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cdo mo31510new(OutputStream outputStream, sk2 sk2Var, char[] cArr) {
        return new Cdo();
    }
}
