package org.objectweb.asm;

import android.support.v4.ee;

/* renamed from: org.objectweb.asm.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: break, reason: not valid java name */
    public Cbreak f33939break;

    /* renamed from: case, reason: not valid java name */
    private int[] f33940case;

    /* renamed from: catch, reason: not valid java name */
    public Ctry f33941catch;

    /* renamed from: class, reason: not valid java name */
    public Cbreak f33942class;

    /* renamed from: do, reason: not valid java name */
    public Object f33943do;

    /* renamed from: else, reason: not valid java name */
    public int f33944else;

    /* renamed from: for, reason: not valid java name */
    public int f33945for;

    /* renamed from: goto, reason: not valid java name */
    public int f33946goto;

    /* renamed from: if, reason: not valid java name */
    public int f33947if;

    /* renamed from: new, reason: not valid java name */
    public int f33948new;

    /* renamed from: this, reason: not valid java name */
    public Celse f33949this;

    /* renamed from: try, reason: not valid java name */
    private int f33950try;

    /* renamed from: if, reason: not valid java name */
    private void m37939if(int i, int i2) {
        if (this.f33940case == null) {
            this.f33940case = new int[6];
        }
        int i3 = this.f33950try;
        int[] iArr = this.f33940case;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f33940case = iArr2;
        }
        int[] iArr3 = this.f33940case;
        int i4 = this.f33950try;
        int i5 = i4 + 1;
        this.f33950try = i5;
        iArr3[i4] = i;
        this.f33950try = i5 + 1;
        iArr3[i5] = i2;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m37940case(Cbreak cbreak) {
        if ((this.f33947if & 1024) != 0 && (cbreak.f33947if & 1024) != 0) {
            int i = 0;
            while (true) {
                int[] iArr = this.f33940case;
                if (i >= iArr.length) {
                    break;
                }
                if ((iArr[i] & cbreak.f33940case[i]) != 0) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public Cbreak m37941do() {
        Celse celse = this.f33949this;
        return celse == null ? this : celse.f34009do;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m37942else(Ccatch ccatch, int i, byte[] bArr) {
        this.f33947if |= 2;
        this.f33948new = i;
        int i2 = 0;
        boolean z = false;
        while (i2 < this.f33950try) {
            int[] iArr = this.f33940case;
            int i3 = i2 + 1;
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            int i6 = iArr[i3];
            if (i4 >= 0) {
                int i7 = i - i4;
                if (i7 < -32768 || i7 > 32767) {
                    int i8 = i6 - 1;
                    int i9 = bArr[i8] & 255;
                    if (i9 <= 168) {
                        bArr[i8] = (byte) (i9 + 49);
                    } else {
                        bArr[i8] = (byte) (i9 + 20);
                    }
                    z = true;
                }
                bArr[i6] = (byte) (i7 >>> 8);
                bArr[i6 + 1] = (byte) i7;
            } else {
                int i10 = i4 + i + 1;
                int i11 = i6 + 1;
                bArr[i6] = (byte) (i10 >>> 24);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (i10 >>> 16);
                bArr[i12] = (byte) (i10 >>> 8);
                bArr[i12 + 1] = (byte) i10;
            }
            i2 = i5;
        }
        return z;
    }

    /* renamed from: for, reason: not valid java name */
    public void m37943for(long j, int i) {
        int i2 = this.f33947if;
        if ((i2 & 1024) == 0) {
            this.f33947if = i2 | 1024;
            this.f33940case = new int[(i / 32) + 1];
        }
        int[] iArr = this.f33940case;
        int i3 = (int) (j >>> 32);
        iArr[i3] = iArr[i3] | ((int) j);
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m37944goto(org.objectweb.asm.Cbreak r6, long r7, int r9) {
        /*
            r5 = this;
            r0 = r5
        L1:
            if (r0 == 0) goto L5c
            org.objectweb.asm.break r1 = r0.f33942class
            r2 = 0
            r0.f33942class = r2
            if (r6 == 0) goto L35
            int r2 = r0.f33947if
            r3 = r2 & 2048(0x800, float:2.87E-42)
            if (r3 == 0) goto L11
            goto L3b
        L11:
            r2 = r2 | 2048(0x800, float:2.87E-42)
            r0.f33947if = r2
            r2 = r2 & 256(0x100, float:3.59E-43)
            if (r2 == 0) goto L40
            boolean r2 = r0.m37940case(r6)
            if (r2 != 0) goto L40
            org.objectweb.asm.try r2 = new org.objectweb.asm.try
            r2.<init>()
            int r3 = r0.f33944else
            r2.f34097do = r3
            org.objectweb.asm.try r3 = r6.f33941catch
            org.objectweb.asm.break r3 = r3.f34099if
            r2.f34099if = r3
            org.objectweb.asm.try r3 = r0.f33941catch
            r2.f34098for = r3
            r0.f33941catch = r2
            goto L40
        L35:
            boolean r2 = r0.m37947try(r7)
            if (r2 == 0) goto L3d
        L3b:
            r0 = r1
            goto L1
        L3d:
            r0.m37943for(r7, r9)
        L40:
            org.objectweb.asm.try r2 = r0.f33941catch
        L42:
            if (r2 == 0) goto L3b
            int r3 = r0.f33947if
            r3 = r3 & 128(0x80, float:1.8E-43)
            if (r3 == 0) goto L50
            org.objectweb.asm.try r3 = r0.f33941catch
            org.objectweb.asm.try r3 = r3.f34098for
            if (r2 == r3) goto L59
        L50:
            org.objectweb.asm.break r3 = r2.f34099if
            org.objectweb.asm.break r4 = r3.f33942class
            if (r4 != 0) goto L59
            r3.f33942class = r1
            r1 = r3
        L59:
            org.objectweb.asm.try r2 = r2.f34098for
            goto L42
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.objectweb.asm.Cbreak.m37944goto(org.objectweb.asm.break, long, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        if (r4 != false) goto L10;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m37945new(Ccatch ccatch, ee eeVar, int i, boolean z) {
        int i2;
        if ((this.f33947if & 2) == 0) {
            i2 = -1;
            if (z) {
                m37939if((-1) - i, eeVar.f1403if);
                eeVar.m1803else(i2);
                return;
            } else {
                m37939if(i, eeVar.f1403if);
                eeVar.m1807this(i2);
                return;
            }
        }
        i2 = this.f33948new - i;
    }

    /* renamed from: this, reason: not valid java name */
    public int m37946this() {
        if ((this.f33947if & 2) != 0) {
            return this.f33948new;
        }
        throw new IllegalStateException("Label offset position has not been resolved yet");
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("L");
        stringBuffer.append(System.identityHashCode(this));
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m37947try(long j) {
        return ((this.f33947if & 1024) == 0 || (this.f33940case[(int) (j >>> 32)] & ((int) j)) == 0) ? false : true;
    }
}
