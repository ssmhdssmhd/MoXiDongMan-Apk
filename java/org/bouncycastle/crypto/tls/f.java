package org.bouncycastle.crypto.tls;

import android.support.v4.a22;
import android.support.v4.d21;
import android.support.v4.n72;
import android.support.v4.q3;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

/* loaded from: classes3.dex */
public class f {

    /* renamed from: do, reason: not valid java name */
    public Vector f30588do;

    public f(Vector vector) {
        if (vector == null) {
            throw new IllegalArgumentException("'serverNameList' must not be null");
        }
        this.f30588do = vector;
    }

    /* renamed from: do, reason: not valid java name */
    private static short[] m34084do(short[] sArr, short s) {
        if (!d21.m1124do(s) || q3.m6388strictfp(sArr, s)) {
            return null;
        }
        return q3.m6381new(sArr, s);
    }

    /* renamed from: new, reason: not valid java name */
    public static f m34085new(InputStream inputStream) throws IOException {
        int iT = l0.T(inputStream);
        if (iT < 1) {
            throw new n72((short) 50);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(l0.O(iT, inputStream));
        short[] sArrM34084do = new short[0];
        Vector vector = new Vector();
        while (byteArrayInputStream.available() > 0) {
            e eVarM34053case = e.m34053case(byteArrayInputStream);
            sArrM34084do = m34084do(sArrM34084do, eVarM34053case.m34058new());
            if (sArrM34084do == null) {
                throw new n72((short) 47);
            }
            vector.addElement(eVarM34053case);
        }
        return new f(vector);
    }

    /* renamed from: for, reason: not valid java name */
    public Vector m34086for() {
        return this.f30588do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m34087if(OutputStream outputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        short[] sArrM34084do = new short[0];
        for (int i = 0; i < this.f30588do.size(); i++) {
            e eVar = (e) this.f30588do.elementAt(i);
            sArrM34084do = m34084do(sArrM34084do, eVar.m34058new());
            if (sArrM34084do == null) {
                throw new n72((short) 80);
            }
            eVar.m34055do(byteArrayOutputStream);
        }
        l0.m34181break(byteArrayOutputStream.size());
        l0.r0(byteArrayOutputStream.size(), outputStream);
        a22.m21goto(byteArrayOutputStream, outputStream);
    }
}
