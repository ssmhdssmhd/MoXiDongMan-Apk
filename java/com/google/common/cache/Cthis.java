package com.google.common.cache;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.vm1;
import java.util.concurrent.Executor;

@li0
/* renamed from: com.google.common.cache.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis {

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.cache.this$do, reason: invalid class name */
    public static class Cdo<K, V> implements RemovalListener<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Executor f13937do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ RemovalListener f13938if;

        /* renamed from: com.google.common.cache.this$do$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0083do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ vm1 f13939do;

            public RunnableC0083do(vm1 vm1Var) {
                this.f13939do = vm1Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.f13938if.onRemoval(this.f13939do);
            }
        }

        public Cdo(Executor executor, RemovalListener removalListener) {
            this.f13937do = executor;
            this.f13938if = removalListener;
        }

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(vm1<K, V> vm1Var) {
            this.f13937do.execute(new RunnableC0083do(vm1Var));
        }
    }

    private Cthis() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <K, V> RemovalListener<K, V> m15336do(RemovalListener<K, V> removalListener, Executor executor) {
        af1.m205continue(removalListener);
        af1.m205continue(executor);
        return new Cdo(executor, removalListener);
    }
}
