package net.lingala.zip4j.io.inputstream;

import android.support.v4.mu0;
import java.io.IOException;
import net.lingala.zip4j.crypto.Decrypter;

/* renamed from: net.lingala.zip4j.io.inputstream.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry extends Cif {

    /* renamed from: net.lingala.zip4j.io.inputstream.try$do, reason: invalid class name */
    public static class Cdo implements Decrypter {
        @Override // net.lingala.zip4j.crypto.Decrypter
        public int decryptData(byte[] bArr, int i, int i2) {
            return i2;
        }
    }

    public Ctry(Cgoto cgoto, mu0 mu0Var, char[] cArr) throws IOException {
        super(cgoto, mu0Var, cArr);
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif
    /* renamed from: goto */
    public Decrypter mo31453goto(mu0 mu0Var, char[] cArr) {
        return new Cdo();
    }
}
