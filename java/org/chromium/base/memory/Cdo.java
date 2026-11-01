package org.chromium.base.memory;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.chromium.base.Ctry;
import org.chromium.base.ThreadUtils;
import org.chromium.base.metrics.RecordHistogram;

/* renamed from: org.chromium.base.memory.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements ComponentCallbacks2 {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f33172for = false;

    /* renamed from: if, reason: not valid java name */
    private static Cdo f33173if;

    /* renamed from: do, reason: not valid java name */
    private final String f33174do;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.base.memory.do$do, reason: invalid class name and collision with other inner class name */
    /* loaded from: classes.dex */
    public @interface InterfaceC0471do {
        public static final int A6 = 7;
        public static final int B6 = 8;
        public static final int C6 = 9;
        public static final int t6 = 0;
        public static final int u6 = 1;
        public static final int v6 = 2;
        public static final int w6 = 3;
        public static final int x6 = 4;
        public static final int y6 = 5;
        public static final int z6 = 6;
    }

    private Cdo(String str) {
        this.f33174do = "Android.MemoryPressureNotification." + str;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m37123do() {
        m37124for("Browser");
    }

    /* renamed from: for, reason: not valid java name */
    private static void m37124for(String str) {
        ThreadUtils.m36938for();
        f33173if = new Cdo(str);
        Ctry.m37273case().registerComponentCallbacks(f33173if);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37125if() {
        m37124for("ChildService");
    }

    /* renamed from: new, reason: not valid java name */
    private void m37126new(int i) {
        RecordHistogram.m37132class(this.f33174do, i, 9);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m37126new(8);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 5) {
            m37126new(7);
            return;
        }
        if (i == 10) {
            m37126new(6);
            return;
        }
        if (i == 15) {
            m37126new(5);
            return;
        }
        if (i == 20) {
            m37126new(4);
            return;
        }
        if (i == 40) {
            m37126new(3);
            return;
        }
        if (i == 60) {
            m37126new(2);
        } else if (i != 80) {
            m37126new(0);
        } else {
            m37126new(1);
        }
    }
}
