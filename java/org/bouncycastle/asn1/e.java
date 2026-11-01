package org.bouncycastle.asn1;

import android.support.v4.Cpublic;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public abstract class e extends Cpublic {

    /* renamed from: for, reason: not valid java name */
    private boolean f28992for;

    /* renamed from: if, reason: not valid java name */
    private boolean f28993if;

    /* renamed from: new, reason: not valid java name */
    private int f28994new;

    public e(OutputStream outputStream) {
        super(outputStream);
        this.f28993if = false;
    }

    public e(OutputStream outputStream, int i, boolean z) {
        super(outputStream);
        this.f28993if = false;
        this.f28993if = true;
        this.f28992for = z;
        this.f28994new = i;
    }

    /* renamed from: new, reason: not valid java name */
    private void m32922new(OutputStream outputStream, int i) throws IOException {
        if (i <= 127) {
            outputStream.write((byte) i);
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
        outputStream.write((byte) (i3 | 128));
        for (int i4 = (i3 - 1) * 8; i4 >= 0; i4 -= 8) {
            outputStream.write((byte) (i >> i4));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m32923for(OutputStream outputStream, int i, byte[] bArr) throws IOException {
        outputStream.write(i);
        m32922new(outputStream, bArr.length);
        outputStream.write(bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public void m32924if(int i, byte[] bArr) throws IOException {
        if (!this.f28993if) {
            m32923for(this.f5197do, i, bArr);
            return;
        }
        int i2 = this.f28994new;
        int i3 = i2 | 128;
        if (this.f28992for) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            m32923for(byteArrayOutputStream, i, bArr);
            m32923for(this.f5197do, i2 | 32 | 128, byteArrayOutputStream.toByteArray());
            return;
        }
        if ((i & 32) != 0) {
            m32923for(this.f5197do, i3 | 32, bArr);
        } else {
            m32923for(this.f5197do, i3, bArr);
        }
    }
}
