package com.bumptech.glide.load.model;

import android.support.v4.jw0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Ccase;
import java.util.Queue;

/* renamed from: com.bumptech.glide.load.model.try, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctry<A, B> {

    /* renamed from: if, reason: not valid java name */
    private static final int f10059if = 250;

    /* renamed from: do, reason: not valid java name */
    private final jw0<Cif<A>, B> f10060do;

    /* renamed from: com.bumptech.glide.load.model.try$do, reason: invalid class name */
    public class Cdo extends jw0<Cif<A>, B> {
        public Cdo(long j) {
            super(j);
        }

        @Override // android.support.v4.jw0
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public void mo4117case(@NonNull Cif<A> cif, @Nullable B b) {
            cif.m11681for();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.model.try$if, reason: invalid class name */
    public static final class Cif<A> {

        /* renamed from: new, reason: not valid java name */
        private static final Queue<Cif<?>> f10062new = Ccase.m12039case(0);

        /* renamed from: do, reason: not valid java name */
        private int f10063do;

        /* renamed from: for, reason: not valid java name */
        private A f10064for;

        /* renamed from: if, reason: not valid java name */
        private int f10065if;

        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public static <A> Cif<A> m11679do(A a, int i, int i2) {
            Cif<A> cif;
            Queue<Cif<?>> queue = f10062new;
            synchronized (queue) {
                cif = (Cif) queue.poll();
            }
            if (cif == null) {
                cif = new Cif<>();
            }
            cif.m11680if(a, i, i2);
            return cif;
        }

        /* renamed from: if, reason: not valid java name */
        private void m11680if(A a, int i, int i2) {
            this.f10064for = a;
            this.f10065if = i;
            this.f10063do = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f10065if == cif.f10065if && this.f10063do == cif.f10063do && this.f10064for.equals(cif.f10064for);
        }

        /* renamed from: for, reason: not valid java name */
        public void m11681for() {
            Queue<Cif<?>> queue = f10062new;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public int hashCode() {
            return (((this.f10063do * 31) + this.f10065if) * 31) + this.f10064for.hashCode();
        }
    }

    public Ctry() {
        this(250L);
    }

    /* renamed from: do, reason: not valid java name */
    public void m11675do() {
        this.f10060do.clearMemory();
    }

    /* renamed from: for, reason: not valid java name */
    public void m11676for(A a, int i, int i2, B b) {
        this.f10060do.m4119else(Cif.m11679do(a, i, i2), b);
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public B m11677if(A a, int i, int i2) {
        Cif<A> cifM11679do = Cif.m11679do(a, i, i2);
        B bM4120for = this.f10060do.m4120for(cifM11679do);
        cifM11679do.m11681for();
        return bM4120for;
    }

    public Ctry(long j) {
        this.f10060do = new Cdo(j);
    }
}
