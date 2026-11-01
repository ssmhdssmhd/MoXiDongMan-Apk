package org.chromium.net;

import android.support.v4.rs;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.Executor;

/* renamed from: org.chromium.net.native, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnative {

    /* renamed from: do, reason: not valid java name */
    public static final int f33696do = 0;

    /* renamed from: for, reason: not valid java name */
    public static final int f33697for = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f33698if = 1;

    /* renamed from: org.chromium.net.native$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Executor f33699do;

        public Cdo(Executor executor) {
            if (executor == null) {
                throw new IllegalStateException("Executor must not be null");
            }
            this.f33699do = executor;
        }

        /* renamed from: do */
        public Executor mo37639do() {
            return this.f33699do;
        }

        /* renamed from: if */
        public abstract void mo26740if(Cnative cnative);
    }

    /* renamed from: org.chromium.net.native$if, reason: invalid class name */
    public static abstract class Cif {
        @Nullable
        /* renamed from: break */
        public abstract Date mo8109break();

        @Nullable
        /* renamed from: case */
        public abstract Date mo8110case();

        @Nullable
        /* renamed from: catch */
        public abstract Date mo8111catch();

        @Nullable
        /* renamed from: class */
        public abstract Date mo8112class();

        @Nullable
        /* renamed from: const */
        public abstract Long mo8113const();

        @Nullable
        /* renamed from: do */
        public abstract Date mo8114do();

        @Nullable
        /* renamed from: else */
        public abstract Long mo8115else();

        /* renamed from: final */
        public abstract boolean mo8116final();

        @Nullable
        /* renamed from: for */
        public abstract Date mo8117for();

        @Nullable
        /* renamed from: goto */
        public abstract Date mo8118goto();

        @Nullable
        /* renamed from: if */
        public abstract Date mo8119if();

        @Nullable
        /* renamed from: import */
        public abstract Long mo8120import();

        @Nullable
        /* renamed from: new */
        public abstract Date mo8121new();

        @Nullable
        /* renamed from: super */
        public abstract Date mo8122super();

        @Nullable
        /* renamed from: this */
        public abstract Date mo8123this();

        @Nullable
        /* renamed from: throw */
        public abstract Date mo8124throw();

        @Nullable
        /* renamed from: try */
        public abstract Date mo8125try();

        @Nullable
        /* renamed from: while */
        public abstract Long mo8126while();
    }

    /* renamed from: case */
    public abstract String mo974case();

    /* renamed from: do */
    public abstract Collection<Object> mo975do();

    /* renamed from: for */
    public abstract int mo976for();

    @Nullable
    /* renamed from: if */
    public abstract rs mo977if();

    /* renamed from: new */
    public abstract Cif mo978new();

    @Nullable
    /* renamed from: try */
    public abstract Cstatic mo979try();
}
