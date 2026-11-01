package com.facebook.soloader;

import android.os.StrictMode;
import android.support.v4.y41;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

/* renamed from: com.facebook.soloader.public, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cpublic {

    /* renamed from: case, reason: not valid java name */
    public static final int f10712case = 2;

    /* renamed from: do, reason: not valid java name */
    public static final int f10713do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final int f10714else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f10715for = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f10716goto = 1;

    /* renamed from: if, reason: not valid java name */
    public static final int f10717if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f10718new = 3;

    /* renamed from: this, reason: not valid java name */
    public static final int f10719this = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f10720try = 1;

    @y41
    /* renamed from: case */
    public abstract File mo2943case(String str) throws IOException;

    /* renamed from: do */
    public void mo12166do(Collection<String> collection) {
    }

    /* renamed from: for, reason: not valid java name */
    public String[] mo12208for() {
        return Creturn.m12214goto();
    }

    @y41
    /* renamed from: if */
    public String mo12168if(String str) throws IOException {
        return null;
    }

    /* renamed from: new */
    public abstract int mo2944new(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException;

    public String toString() {
        return getClass().getName();
    }

    /* renamed from: try */
    public void mo12169try(int i) throws IOException {
    }
}
