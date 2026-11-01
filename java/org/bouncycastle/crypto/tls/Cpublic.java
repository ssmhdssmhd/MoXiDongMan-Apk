package org.bouncycastle.crypto.tls;

import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.public, reason: invalid class name */
/* loaded from: classes3.dex */
class Cpublic {

    /* renamed from: do, reason: not valid java name */
    private short f30708do;

    /* renamed from: for, reason: not valid java name */
    private Vector f30709for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30710if;

    /* renamed from: org.bouncycastle.crypto.tls.public$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private int f30711do;

        /* renamed from: if, reason: not valid java name */
        private int f30712if;

        public Cdo(int i, int i2) {
            this.f30711do = i;
            this.f30712if = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public int m34248do() {
            return this.f30712if;
        }

        /* renamed from: for, reason: not valid java name */
        public void m34249for(int i) {
            this.f30712if = i;
        }

        /* renamed from: if, reason: not valid java name */
        public int m34250if() {
            return this.f30711do;
        }

        /* renamed from: new, reason: not valid java name */
        public void m34251new(int i) {
            this.f30711do = i;
        }
    }

    public Cpublic(short s, int i) {
        Vector vector = new Vector();
        this.f30709for = vector;
        this.f30708do = s;
        this.f30710if = new byte[i];
        vector.addElement(new Cdo(0, i));
    }

    /* renamed from: do, reason: not valid java name */
    public void m34244do(short s, int i, byte[] bArr, int i2, int i3, int i4) {
        int i5 = i3 + i4;
        if (this.f30708do == s && this.f30710if.length == i && i5 <= i) {
            int i6 = 0;
            if (i4 == 0) {
                if (i3 == 0 && !this.f30709for.isEmpty() && ((Cdo) this.f30709for.firstElement()).m34248do() == 0) {
                    this.f30709for.removeElementAt(0);
                    return;
                }
                return;
            }
            while (i6 < this.f30709for.size()) {
                Cdo cdo = (Cdo) this.f30709for.elementAt(i6);
                if (cdo.m34250if() >= i5) {
                    return;
                }
                if (cdo.m34248do() > i3) {
                    int iMax = Math.max(cdo.m34250if(), i3);
                    int iMin = Math.min(cdo.m34248do(), i5);
                    System.arraycopy(bArr, (i2 + iMax) - i3, this.f30710if, iMax, iMin - iMax);
                    if (iMax != cdo.m34250if()) {
                        if (iMin != cdo.m34248do()) {
                            i6++;
                            this.f30709for.insertElementAt(new Cdo(iMin, cdo.m34248do()), i6);
                        }
                        cdo.m34249for(iMax);
                    } else if (iMin == cdo.m34248do()) {
                        this.f30709for.removeElementAt(i6);
                        i6--;
                    } else {
                        cdo.m34251new(iMin);
                    }
                }
                i6++;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public short m34245for() {
        return this.f30708do;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m34246if() {
        if (this.f30709for.isEmpty()) {
            return this.f30710if;
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public void m34247new() {
        this.f30709for.removeAllElements();
        this.f30709for.addElement(new Cdo(0, this.f30710if.length));
    }
}
