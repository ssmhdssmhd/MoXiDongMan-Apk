package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.asn1.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst {

    /* renamed from: do, reason: not valid java name */
    private OutputStream f28981do;

    /* renamed from: org.bouncycastle.asn1.const$do, reason: invalid class name */
    public class Cdo extends Cconst {

        /* renamed from: if, reason: not valid java name */
        private boolean f28983if;

        public Cdo(OutputStream outputStream) {
            super(outputStream);
            this.f28983if = true;
        }

        @Override // org.bouncycastle.asn1.Cconst
        /* renamed from: try */
        public void mo32910try(int i) throws IOException {
            if (this.f28983if) {
                this.f28983if = false;
            } else {
                super.mo32910try(i);
            }
        }
    }

    public Cconst(OutputStream outputStream) {
        this.f28981do = outputStream;
    }

    /* renamed from: break, reason: not valid java name */
    public void m32898break(Cfinal cfinal) throws IOException {
        if (cfinal == null) {
            throw new IOException("null object detected");
        }
        cfinal.mo32750try(new Cdo(this.f28981do));
    }

    /* renamed from: case, reason: not valid java name */
    public void m32899case(byte[] bArr) throws IOException {
        this.f28981do.write(bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m32900catch(int i) throws IOException {
        if (i <= 127) {
            mo32910try((byte) i);
            return;
        }
        int i2 = i;
        int i3 = 1;
        while (true) {
            i2 >>>= 8;
            if (i2 == 0) {
                break;
            } else {
                i3++;
            }
        }
        mo32910try((byte) (i3 | 128));
        for (int i4 = (i3 - 1) * 8; i4 >= 0; i4 -= 8) {
            mo32910try((byte) (i >> i4));
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m32901class() throws IOException {
        this.f28981do.write(5);
        this.f28981do.write(0);
    }

    /* renamed from: const */
    public void mo32770const(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable == null) {
            throw new IOException("null object detected");
        }
        aSN1Encodable.toASN1Primitive().mo32750try(this);
    }

    /* renamed from: do, reason: not valid java name */
    public void m32902do() throws IOException {
        this.f28981do.close();
    }

    /* renamed from: else, reason: not valid java name */
    public void m32903else(byte[] bArr, int i, int i2) throws IOException {
        this.f28981do.write(bArr, i, i2);
    }

    /* renamed from: final, reason: not valid java name */
    public void m32904final(int i, int i2) throws IOException {
        if (i2 < 31) {
            mo32910try(i | i2);
            return;
        }
        mo32910try(i | 31);
        if (i2 < 128) {
            mo32910try(i2);
            return;
        }
        byte[] bArr = new byte[5];
        int i3 = 4;
        bArr[4] = (byte) (i2 & 127);
        do {
            i2 >>= 7;
            i3--;
            bArr[i3] = (byte) ((i2 & 127) | 128);
        } while (i2 > 127);
        m32903else(bArr, i3, 5 - i3);
    }

    /* renamed from: for, reason: not valid java name */
    public Cconst mo32905for() {
        return new l(this.f28981do);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m32906goto(int i, int i2, byte[] bArr) throws IOException {
        m32904final(i, i2);
        m32900catch(bArr.length);
        m32899case(bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public void m32907if() throws IOException {
        this.f28981do.flush();
    }

    /* renamed from: new, reason: not valid java name */
    public Cconst mo32908new() {
        return new c0(this.f28981do);
    }

    /* renamed from: this, reason: not valid java name */
    public void m32909this(int i, byte[] bArr) throws IOException {
        mo32910try(i);
        m32900catch(bArr.length);
        m32899case(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public void mo32910try(int i) throws IOException {
        this.f28981do.write(i);
    }
}
