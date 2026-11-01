package com.bumptech.glide.util.pool;

import androidx.annotation.NonNull;

/* renamed from: com.bumptech.glide.util.pool.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final boolean f10497do = false;

    /* renamed from: com.bumptech.glide.util.pool.do$for, reason: invalid class name */
    public static class Cfor extends Cdo {

        /* renamed from: if, reason: not valid java name */
        private volatile boolean f10498if;

        public Cfor() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.Cdo
        /* renamed from: for */
        public void mo12091for() {
            if (this.f10498if) {
                throw new IllegalStateException("Already released");
            }
        }

        @Override // com.bumptech.glide.util.pool.Cdo
        /* renamed from: if */
        public void mo12092if(boolean z) {
            this.f10498if = z;
        }
    }

    /* renamed from: com.bumptech.glide.util.pool.do$if, reason: invalid class name */
    public static class Cif extends Cdo {

        /* renamed from: if, reason: not valid java name */
        private volatile RuntimeException f10499if;

        public Cif() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.Cdo
        /* renamed from: for */
        public void mo12091for() {
            if (this.f10499if != null) {
                throw new IllegalStateException("Already released", this.f10499if);
            }
        }

        @Override // com.bumptech.glide.util.pool.Cdo
        /* renamed from: if */
        public void mo12092if(boolean z) {
            if (z) {
                this.f10499if = new RuntimeException("Released");
            } else {
                this.f10499if = null;
            }
        }
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static Cdo m12090do() {
        return new Cfor();
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo12091for();

    /* renamed from: if, reason: not valid java name */
    public abstract void mo12092if(boolean z);

    private Cdo() {
    }
}
