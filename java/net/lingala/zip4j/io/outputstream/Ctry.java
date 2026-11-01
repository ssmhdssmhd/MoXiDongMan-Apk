package net.lingala.zip4j.io.outputstream;

import android.support.v4.fq;
import java.io.IOException;
import java.util.zip.Deflater;

/* renamed from: net.lingala.zip4j.io.outputstream.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry extends Cfor {

    /* renamed from: for, reason: not valid java name */
    public Deflater f28176for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f28177if;

    public Ctry(Cif cif, fq fqVar) {
        super(cif);
        this.f28177if = new byte[4096];
        this.f28176for = new Deflater(fqVar.getLevel(), true);
    }

    /* renamed from: for, reason: not valid java name */
    private void m31540for() throws IOException {
        Deflater deflater = this.f28176for;
        byte[] bArr = this.f28177if;
        int iDeflate = deflater.deflate(bArr, 0, bArr.length);
        if (iDeflate > 0) {
            super.write(this.f28177if, 0, iDeflate);
        }
    }

    @Override // net.lingala.zip4j.io.outputstream.Cfor
    /* renamed from: do */
    public void mo31526do() throws IOException {
        if (!this.f28176for.finished()) {
            this.f28176for.finish();
            while (!this.f28176for.finished()) {
                m31540for();
            }
        }
        this.f28176for.end();
        super.mo31526do();
    }

    @Override // net.lingala.zip4j.io.outputstream.Cfor, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.outputstream.Cfor, java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.outputstream.Cfor, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f28176for.setInput(bArr, i, i2);
        while (!this.f28176for.needsInput()) {
            m31540for();
        }
    }
}
