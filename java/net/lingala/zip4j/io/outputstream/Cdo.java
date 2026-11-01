package net.lingala.zip4j.io.outputstream;

import android.support.v4.sk2;
import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.crypto.Cif;

/* renamed from: net.lingala.zip4j.io.outputstream.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo extends Cif<Cif> {

    /* renamed from: for, reason: not valid java name */
    private byte[] f28160for;

    /* renamed from: new, reason: not valid java name */
    private int f28161new;

    public Cdo(Cthis cthis, sk2 sk2Var, char[] cArr) throws IOException {
        super(cthis, sk2Var, cArr);
        this.f28160for = new byte[16];
        this.f28161new = 0;
    }

    /* renamed from: else, reason: not valid java name */
    private void m31513else(Cif cif) throws IOException {
        m31530try(cif.m31446try());
        m31530try(cif.m31444for());
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo31510new(OutputStream outputStream, sk2 sk2Var, char[] cArr) throws IOException {
        Cif cif = new Cif(cArr, sk2Var.m7481do());
        m31513else(cif);
        return cif;
    }

    @Override // net.lingala.zip4j.io.outputstream.Cif
    /* renamed from: do, reason: not valid java name */
    public void mo31515do() throws IOException {
        int i = this.f28161new;
        if (i != 0) {
            super.write(this.f28160for, 0, i);
            this.f28161new = 0;
        }
        m31530try(m31529if().m31445new());
        super.mo31515do();
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
        int i3;
        int i4 = this.f28161new;
        if (i2 >= 16 - i4) {
            System.arraycopy(bArr, i, this.f28160for, i4, 16 - i4);
            byte[] bArr2 = this.f28160for;
            super.write(bArr2, 0, bArr2.length);
            int i5 = 16 - this.f28161new;
            int i6 = i2 - i5;
            this.f28161new = 0;
            if (i6 != 0 && (i3 = i6 % 16) != 0) {
                System.arraycopy(bArr, (i6 + i5) - i3, this.f28160for, 0, i3);
                this.f28161new = i3;
                i6 -= i3;
            }
            super.write(bArr, i5, i6);
            return;
        }
        System.arraycopy(bArr, i, this.f28160for, i4, i2);
        this.f28161new += i2;
    }
}
