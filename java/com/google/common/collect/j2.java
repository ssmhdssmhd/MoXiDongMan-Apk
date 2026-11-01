package com.google.common.collect;

import android.support.v4.af2;
import android.support.v4.ki0;
import java.util.Arrays;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
class j2<K> extends i2<K> {

    /* renamed from: import, reason: not valid java name */
    private static final int f14382import = -2;

    /* renamed from: super, reason: not valid java name */
    @af2
    public transient long[] f14383super;

    /* renamed from: throw, reason: not valid java name */
    private transient int f14384throw;

    /* renamed from: while, reason: not valid java name */
    private transient int f14385while;

    public j2() {
        this(3);
    }

    /* renamed from: implements, reason: not valid java name */
    private void m15940implements(int i, int i2) {
        if (i == -2) {
            this.f14384throw = i2;
        } else {
            m15941instanceof(i, i2);
        }
        if (i2 == -2) {
            this.f14385while = i;
        } else {
            m15945transient(i2, i);
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m15941instanceof(int i, int i2) {
        long[] jArr = this.f14383super;
        jArr[i] = (jArr[i] & (-4294967296L)) | (i2 & 4294967295L);
    }

    /* renamed from: interface, reason: not valid java name */
    private int m15942interface(int i) {
        return (int) (this.f14383super[i] >>> 32);
    }

    /* renamed from: protected, reason: not valid java name */
    private int m15943protected(int i) {
        return (int) this.f14383super[i];
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <K> j2<K> m15944strictfp() {
        return new j2<>();
    }

    /* renamed from: transient, reason: not valid java name */
    private void m15945transient(int i, int i2) {
        long[] jArr = this.f14383super;
        jArr[i] = (jArr[i] & 4294967295L) | (i2 << 32);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <K> j2<K> m15946volatile(int i) {
        return new j2<>(i);
    }

    @Override // com.google.common.collect.i2
    /* renamed from: case */
    public int mo15885case() {
        int i = this.f14384throw;
        if (i == -2) {
            return -1;
        }
        return i;
    }

    @Override // com.google.common.collect.i2
    /* renamed from: do */
    public void mo15888do() {
        super.mo15888do();
        this.f14384throw = -2;
        this.f14385while = -2;
    }

    @Override // com.google.common.collect.i2
    /* renamed from: extends */
    public void mo15890extends(int i) {
        super.mo15890extends(i);
        long[] jArr = this.f14383super;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        this.f14383super = jArrCopyOf;
        Arrays.fill(jArrCopyOf, length, i, -1L);
    }

    @Override // com.google.common.collect.i2
    /* renamed from: public */
    public int mo15895public(int i) {
        int iM15943protected = m15943protected(i);
        if (iM15943protected == -2) {
            return -1;
        }
        return iM15943protected;
    }

    @Override // com.google.common.collect.i2
    /* renamed from: return */
    public int mo15896return(int i, int i2) {
        return i == m15883abstract() ? i2 : i;
    }

    @Override // com.google.common.collect.i2
    /* renamed from: super */
    public void mo15898super(int i, float f) {
        super.mo15898super(i, f);
        this.f14384throw = -2;
        this.f14385while = -2;
        long[] jArr = new long[i];
        this.f14383super = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override // com.google.common.collect.i2
    /* renamed from: throw */
    public void mo15900throw(int i, K k, int i2, int i3) {
        super.mo15900throw(i, k, i2, i3);
        m15940implements(this.f14385while, i);
        m15940implements(i, -2);
    }

    @Override // com.google.common.collect.i2
    /* renamed from: while */
    public void mo15902while(int i) {
        int iM15883abstract = m15883abstract() - 1;
        m15940implements(m15942interface(i), m15943protected(i));
        if (i < iM15883abstract) {
            m15940implements(m15942interface(iM15883abstract), i);
            m15940implements(i, m15943protected(iM15883abstract));
        }
        super.mo15902while(i);
    }

    public j2(int i) {
        this(i, 1.0f);
    }

    public j2(int i, float f) {
        super(i, f);
    }

    public j2(i2<K> i2Var) {
        mo15898super(i2Var.m15883abstract(), 1.0f);
        int iMo15885case = i2Var.mo15885case();
        while (iMo15885case != -1) {
            m15897static(i2Var.m15884break(iMo15885case), i2Var.m15886class(iMo15885case));
            iMo15885case = i2Var.mo15895public(iMo15885case);
        }
    }
}
