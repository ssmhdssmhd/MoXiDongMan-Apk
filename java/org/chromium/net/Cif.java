package org.chromium.net;

import android.annotation.SuppressLint;
import android.support.v4.rs;
import java.nio.ByteBuffer;
import org.chromium.net.Cstatic;

/* renamed from: org.chromium.net.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif {

    /* renamed from: org.chromium.net.if$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final int f33463do = 0;

        /* renamed from: for, reason: not valid java name */
        public static final int f33464for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f33465if = 1;

        /* renamed from: new, reason: not valid java name */
        public static final int f33466new = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f33467try = 4;

        /* renamed from: do */
        public abstract Cdo mo6810do(String str, String str2);

        /* renamed from: for */
        public abstract Cdo mo6813for(boolean z);

        @SuppressLint({"WrongConstant"})
        /* renamed from: if */
        public abstract Cif mo6815if();

        /* renamed from: new */
        public abstract Cdo mo6816new(String str);

        /* renamed from: try */
        public abstract Cdo mo6820try(int i);
    }

    /* renamed from: org.chromium.net.if$if, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0480if {
        /* renamed from: case, reason: not valid java name */
        public abstract void mo37522case(Cif cif);

        /* renamed from: do, reason: not valid java name */
        public void mo37523do(Cif cif, Cstatic cstatic) {
        }

        /* renamed from: else, reason: not valid java name */
        public abstract void mo37524else(Cif cif, Cstatic cstatic);

        /* renamed from: for, reason: not valid java name */
        public abstract void mo37525for(Cif cif, Cstatic cstatic, ByteBuffer byteBuffer, boolean z);

        /* renamed from: goto, reason: not valid java name */
        public abstract void mo37526goto(Cif cif, Cstatic cstatic, ByteBuffer byteBuffer, boolean z);

        /* renamed from: if, reason: not valid java name */
        public abstract void mo37527if(Cif cif, Cstatic cstatic, rs rsVar);

        /* renamed from: new, reason: not valid java name */
        public abstract void mo37528new(Cif cif, Cstatic cstatic);

        /* renamed from: try, reason: not valid java name */
        public void mo37529try(Cif cif, Cstatic cstatic, Cstatic.Cdo cdo) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public abstract void mo37516case(ByteBuffer byteBuffer, boolean z);

    /* renamed from: do, reason: not valid java name */
    public abstract void mo37517do();

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo37518for();

    /* renamed from: if, reason: not valid java name */
    public abstract void mo37519if();

    /* renamed from: new, reason: not valid java name */
    public abstract void mo37520new(ByteBuffer byteBuffer);

    /* renamed from: try, reason: not valid java name */
    public abstract void mo37521try();
}
