package android.support.v4;

import java.util.Vector;
import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;

/* loaded from: classes3.dex */
public class e42 implements GCMExponentiator {

    /* renamed from: do, reason: not valid java name */
    private Vector f1254do;

    /* renamed from: do, reason: not valid java name */
    private void m1654do(int i) {
        int size = this.f1254do.size();
        if (size <= i) {
            long[] jArrM6377import = (long[]) this.f1254do.elementAt(size - 1);
            do {
                jArrM6377import = q3.m6377import(jArrM6377import);
                ne0.m5155abstract(jArrM6377import, jArrM6377import);
                this.f1254do.addElement(jArrM6377import);
                size++;
            } while (size <= i);
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j, byte[] bArr) {
        long[] jArrM5177package = ne0.m5177package();
        int i = 0;
        while (j > 0) {
            if ((1 & j) != 0) {
                m1654do(i);
                ne0.m5166final(jArrM5177package, (long[]) this.f1254do.elementAt(i));
            }
            i++;
            j >>>= 1;
        }
        ne0.m5170if(jArrM5177package, bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        long[] jArrM5169goto = ne0.m5169goto(bArr);
        Vector vector = this.f1254do;
        if (vector == null || !q3.m6392this(jArrM5169goto, (long[]) vector.elementAt(0))) {
            Vector vector2 = new Vector(8);
            this.f1254do = vector2;
            vector2.addElement(jArrM5169goto);
        }
    }
}
