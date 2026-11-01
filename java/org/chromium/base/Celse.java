package org.chromium.base;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: org.chromium.base.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ boolean f33159if = false;

    /* renamed from: do, reason: not valid java name */
    private final Set<Cif<?>> f33160do = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: org.chromium.base.else$if, reason: invalid class name */
    public static class Cif<T> {

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ boolean f33161if = false;

        /* renamed from: do, reason: not valid java name */
        @Nullable
        private T f33162do;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public void m37108if() {
            this.f33162do = null;
        }

        @Nullable
        /* renamed from: for, reason: not valid java name */
        public T m37109for() {
            return this.f33162do;
        }

        private Cif(T t) {
            this.f33162do = t;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m37104do() {
        Iterator<Cif<?>> it = this.f33160do.iterator();
        while (it.hasNext()) {
            it.next().m37108if();
        }
        this.f33160do.clear();
    }

    /* renamed from: for, reason: not valid java name */
    public void m37105for(Cif<?> cif) {
        if (this.f33160do.contains(cif)) {
            cif.m37108if();
            this.f33160do.remove(cif);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public <T> Cif<T> m37106if(T t) {
        Cif<T> cif = new Cif<>(t);
        this.f33160do.add(cif);
        return cif;
    }
}
