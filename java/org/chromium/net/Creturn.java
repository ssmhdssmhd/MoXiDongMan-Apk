package org.chromium.net;

import android.support.v4.rs;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;

/* renamed from: org.chromium.net.return, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Creturn {

    /* renamed from: org.chromium.net.return$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final int f33709do = 0;

        /* renamed from: for, reason: not valid java name */
        public static final int f33710for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f33711if = 1;

        /* renamed from: new, reason: not valid java name */
        public static final int f33712new = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f33713try = 4;

        /* renamed from: case */
        public abstract Cdo mo1266case(int i);

        /* renamed from: do */
        public abstract Cdo mo1272do(String str, String str2);

        /* renamed from: else */
        public abstract Cdo mo1273else(Cpublic cpublic, Executor executor);

        /* renamed from: for */
        public abstract Creturn mo1277for();

        /* renamed from: if */
        public abstract Cdo mo1279if();

        /* renamed from: new */
        public abstract Cdo mo1282new();

        /* renamed from: try */
        public abstract Cdo mo1294try(String str);
    }

    /* renamed from: org.chromium.net.return$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: break, reason: not valid java name */
        public static final int f33714break = 8;

        /* renamed from: case, reason: not valid java name */
        public static final int f33715case = 4;

        /* renamed from: catch, reason: not valid java name */
        public static final int f33716catch = 9;

        /* renamed from: class, reason: not valid java name */
        public static final int f33717class = 10;

        /* renamed from: const, reason: not valid java name */
        public static final int f33718const = 11;

        /* renamed from: do, reason: not valid java name */
        public static final int f33719do = -1;

        /* renamed from: else, reason: not valid java name */
        public static final int f33720else = 5;

        /* renamed from: final, reason: not valid java name */
        public static final int f33721final = 12;

        /* renamed from: for, reason: not valid java name */
        public static final int f33722for = 1;

        /* renamed from: goto, reason: not valid java name */
        public static final int f33723goto = 6;

        /* renamed from: if, reason: not valid java name */
        public static final int f33724if = 0;

        /* renamed from: new, reason: not valid java name */
        public static final int f33725new = 2;

        /* renamed from: super, reason: not valid java name */
        public static final int f33726super = 13;

        /* renamed from: this, reason: not valid java name */
        public static final int f33727this = 7;

        /* renamed from: throw, reason: not valid java name */
        public static final int f33728throw = 14;

        /* renamed from: try, reason: not valid java name */
        public static final int f33729try = 3;

        private Cfor() {
        }
    }

    /* renamed from: org.chromium.net.return$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: case */
        public abstract void mo26745case(Creturn creturn, Cstatic cstatic);

        /* renamed from: do */
        public void mo26746do(Creturn creturn, Cstatic cstatic) {
        }

        /* renamed from: for */
        public abstract void mo26747for(Creturn creturn, Cstatic cstatic, ByteBuffer byteBuffer) throws Exception;

        /* renamed from: if */
        public abstract void mo26748if(Creturn creturn, Cstatic cstatic, rs rsVar);

        /* renamed from: new */
        public abstract void mo26749new(Creturn creturn, Cstatic cstatic, String str) throws Exception;

        /* renamed from: try */
        public abstract void mo26750try(Creturn creturn, Cstatic cstatic) throws Exception;
    }

    /* renamed from: org.chromium.net.return$new, reason: invalid class name */
    public static abstract class Cnew {
        /* renamed from: do */
        public abstract void mo37638do(int i);
    }

    /* renamed from: case */
    public abstract void mo37609case();

    /* renamed from: do */
    public abstract void mo37612do();

    /* renamed from: for */
    public abstract void mo37613for(Cnew cnew);

    /* renamed from: if */
    public abstract void mo37614if();

    /* renamed from: new */
    public abstract boolean mo37615new();

    /* renamed from: try */
    public abstract void mo37618try(ByteBuffer byteBuffer);
}
