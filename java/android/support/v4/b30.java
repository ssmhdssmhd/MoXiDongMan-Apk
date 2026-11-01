package android.support.v4;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.transition.Cfor;
import com.bumptech.glide.request.transition.Cif;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.request.transition.TransitionFactory;

/* loaded from: classes.dex */
public class b30 implements TransitionFactory<Drawable> {

    /* renamed from: do, reason: not valid java name */
    private final int f321do;

    /* renamed from: for, reason: not valid java name */
    private Cif f322for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f323if;

    /* renamed from: android.support.v4.b30$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: for, reason: not valid java name */
        private static final int f324for = 300;

        /* renamed from: do, reason: not valid java name */
        private final int f325do;

        /* renamed from: if, reason: not valid java name */
        private boolean f326if;

        public Cdo() {
            this(300);
        }

        /* renamed from: do, reason: not valid java name */
        public b30 m433do() {
            return new b30(this.f325do, this.f326if);
        }

        /* renamed from: if, reason: not valid java name */
        public Cdo m434if(boolean z) {
            this.f326if = z;
            return this;
        }

        public Cdo(int i) {
            this.f325do = i;
        }
    }

    public b30(int i, boolean z) {
        this.f321do = i;
        this.f323if = z;
    }

    /* renamed from: do, reason: not valid java name */
    private Transition<Drawable> m432do() {
        if (this.f322for == null) {
            this.f322for = new Cif(this.f321do, this.f323if);
        }
        return this.f322for;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<Drawable> build(com.bumptech.glide.load.Cdo cdo, boolean z) {
        return cdo == com.bumptech.glide.load.Cdo.MEMORY_CACHE ? Cfor.m12024do() : m432do();
    }
}
