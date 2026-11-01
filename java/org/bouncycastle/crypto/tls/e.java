package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class e {

    /* renamed from: do, reason: not valid java name */
    public short f30573do;

    /* renamed from: if, reason: not valid java name */
    public Object f30574if;

    public e(short s, Object obj) {
        if (!m34054try(s, obj)) {
            throw new IllegalArgumentException("'name' is not an instance of the correct type");
        }
        this.f30573do = s;
        this.f30574if = obj;
    }

    /* renamed from: case, reason: not valid java name */
    public static e m34053case(InputStream inputStream) throws IOException {
        short sC0 = l0.c0(inputStream);
        if (sC0 != 0) {
            throw new n72((short) 50);
        }
        byte[] bArrP = l0.P(inputStream);
        if (bArrP.length >= 1) {
            return new e(sC0, new String(bArrP, "ASCII"));
        }
        throw new n72((short) 50);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m34054try(short s, Object obj) {
        if (s == 0) {
            return obj instanceof String;
        }
        throw new IllegalArgumentException("'nameType' is an unsupported NameType");
    }

    /* renamed from: do, reason: not valid java name */
    public void m34055do(OutputStream outputStream) throws IOException {
        l0.H0(this.f30573do, outputStream);
        if (this.f30573do != 0) {
            throw new n72((short) 80);
        }
        byte[] bytes = ((String) this.f30574if).getBytes("ASCII");
        if (bytes.length < 1) {
            throw new n72((short) 80);
        }
        l0.o0(bytes, outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public Object m34056for() {
        return this.f30574if;
    }

    /* renamed from: if, reason: not valid java name */
    public String m34057if() {
        if (m34054try((short) 0, this.f30574if)) {
            return (String) this.f30574if;
        }
        throw new IllegalStateException("'name' is not a HostName string");
    }

    /* renamed from: new, reason: not valid java name */
    public short m34058new() {
        return this.f30573do;
    }
}
