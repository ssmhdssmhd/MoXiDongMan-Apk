package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* loaded from: classes2.dex */
class o extends InputStream {

    /* renamed from: case, reason: not valid java name */
    private boolean f17117case;

    /* renamed from: do, reason: not valid java name */
    private Iterator<ByteBuffer> f17118do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f17119else;

    /* renamed from: for, reason: not valid java name */
    private int f17120for = 0;

    /* renamed from: goto, reason: not valid java name */
    private int f17121goto;

    /* renamed from: if, reason: not valid java name */
    private ByteBuffer f17122if;

    /* renamed from: new, reason: not valid java name */
    private int f17123new;

    /* renamed from: this, reason: not valid java name */
    private long f17124this;

    /* renamed from: try, reason: not valid java name */
    private int f17125try;

    public o(Iterable<ByteBuffer> iterable) {
        this.f17118do = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.f17120for++;
        }
        this.f17123new = -1;
        if (m20911do()) {
            return;
        }
        this.f17122if = Internal.f16558try;
        this.f17123new = 0;
        this.f17125try = 0;
        this.f17124this = 0L;
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m20911do() {
        this.f17123new++;
        if (!this.f17118do.hasNext()) {
            return false;
        }
        ByteBuffer next = this.f17118do.next();
        this.f17122if = next;
        this.f17125try = next.position();
        if (this.f17122if.hasArray()) {
            this.f17117case = true;
            this.f17119else = this.f17122if.array();
            this.f17121goto = this.f17122if.arrayOffset();
        } else {
            this.f17117case = false;
            this.f17124this = z1.m21688this(this.f17122if);
            this.f17119else = null;
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private void m20912if(int i) {
        int i2 = this.f17125try + i;
        this.f17125try = i2;
        if (i2 == this.f17122if.limit()) {
            m20911do();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f17123new == this.f17120for) {
            return -1;
        }
        if (this.f17117case) {
            int i = this.f17119else[this.f17125try + this.f17121goto] & 255;
            m20912if(1);
            return i;
        }
        int iM21663default = z1.m21663default(this.f17125try + this.f17124this) & 255;
        m20912if(1);
        return iM21663default;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f17123new == this.f17120for) {
            return -1;
        }
        int iLimit = this.f17122if.limit();
        int i3 = this.f17125try;
        int i4 = iLimit - i3;
        if (i2 > i4) {
            i2 = i4;
        }
        if (this.f17117case) {
            System.arraycopy(this.f17119else, i3 + this.f17121goto, bArr, i, i2);
            m20912if(i2);
        } else {
            int iPosition = this.f17122if.position();
            this.f17122if.get(bArr, i, i2);
            m20912if(i2);
        }
        return i2;
    }
}
