package org.bouncycastle.asn1;

import android.support.v4.Cpublic;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.asn1.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cswitch extends Cpublic {

    /* renamed from: for, reason: not valid java name */
    private boolean f29172for;

    /* renamed from: if, reason: not valid java name */
    private boolean f29173if;

    /* renamed from: new, reason: not valid java name */
    private int f29174new;

    public Cswitch(OutputStream outputStream) {
        super(outputStream);
        this.f29173if = false;
    }

    public Cswitch(OutputStream outputStream, int i, boolean z) {
        super(outputStream);
        this.f29173if = false;
        this.f29173if = true;
        this.f29172for = z;
        this.f29174new = i;
    }

    /* renamed from: new, reason: not valid java name */
    private void m33134new(int i) throws IOException {
        this.f5197do.write(i);
        this.f5197do.write(128);
    }

    @Override // android.support.v4.Cpublic
    /* renamed from: do */
    public OutputStream mo6222do() {
        return this.f5197do;
    }

    /* renamed from: for, reason: not valid java name */
    public void m33135for(int i) throws IOException {
        if (this.f29173if) {
            int i2 = this.f29174new | 128;
            if (this.f29172for) {
                m33134new(i2 | 32);
            } else {
                if ((i & 32) == 0) {
                    m33134new(i2);
                    return;
                }
                i = i2 | 32;
            }
        }
        m33134new(i);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33136if() throws IOException {
        this.f5197do.write(0);
        this.f5197do.write(0);
        if (this.f29173if && this.f29172for) {
            this.f5197do.write(0);
            this.f5197do.write(0);
        }
    }
}
