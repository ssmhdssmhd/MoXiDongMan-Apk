package com.google.common.util.concurrent;

import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Cwhile;
import com.google.common.collect.r0;
import com.google.common.collect.v0;
import com.google.common.collect.x1;
import com.google.common.util.concurrent.Cgoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@ki0(emulated = true)
/* renamed from: com.google.common.util.concurrent.final, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cfinal<V, C> extends Cgoto<V, C> {

    /* renamed from: while, reason: not valid java name */
    private List<Cwhile<V>> f15752while;

    /* renamed from: com.google.common.util.concurrent.final$do, reason: invalid class name */
    public static final class Cdo<V> extends Cfinal<V, List<V>> {
        public Cdo(r0<? extends ListenableFuture<? extends V>> r0Var, boolean z) {
            super(r0Var, z);
            i();
        }

        @Override // com.google.common.util.concurrent.Cfinal
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public List<V> m(List<Cwhile<V>> list) {
            ArrayList arrayListM16512return = x1.m16512return(list.size());
            Iterator<Cwhile<V>> it = list.iterator();
            while (it.hasNext()) {
                Cwhile<V> next = it.next();
                arrayListM16512return.add(next != null ? next.orNull() : null);
            }
            return Collections.unmodifiableList(arrayListM16512return);
        }
    }

    public Cfinal(r0<? extends ListenableFuture<? extends V>> r0Var, boolean z) {
        super(r0Var, z, true);
        this.f15752while = r0Var.isEmpty() ? v0.of() : x1.m16512return(r0Var.size());
        for (int i = 0; i < r0Var.size(); i++) {
            this.f15752while.add(null);
        }
    }

    @Override // com.google.common.util.concurrent.Cgoto
    public final void d(int i, @b51 V v) {
        List<Cwhile<V>> list = this.f15752while;
        if (list != null) {
            list.set(i, Cwhile.fromNullable(v));
        }
    }

    @Override // com.google.common.util.concurrent.Cgoto
    public final void g() {
        List<Cwhile<V>> list = this.f15752while;
        if (list != null) {
            mo17979package(m(list));
        }
    }

    @Override // com.google.common.util.concurrent.Cgoto
    public void l(Cgoto.Cfor cfor) {
        super.l(cfor);
        this.f15752while = null;
    }

    public abstract C m(List<Cwhile<V>> list);
}
