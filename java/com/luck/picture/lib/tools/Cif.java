package com.luck.picture.lib.tools;

import android.content.Context;
import android.media.SoundPool;
import android.os.Handler;
import com.luck.picture.lib.R;

/* renamed from: com.luck.picture.lib.tools.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: for, reason: not valid java name */
    private static int f18877for;

    /* renamed from: if, reason: not valid java name */
    private static SoundPool f18878if;

    /* renamed from: do, reason: not valid java name */
    private boolean f18879do;

    /* renamed from: com.luck.picture.lib.tools.if$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f18880do;

        public Cdo(boolean z) {
            this.f18880do = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif.m23319if(this.f18880do, Cif.f18878if);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m23318for(Context context, boolean z) {
        if (f18878if == null) {
            SoundPool soundPool = new SoundPool(1, 4, 0);
            f18878if = soundPool;
            f18877for = soundPool.load(context, R.raw.music, 1);
        }
        new Handler().postDelayed(new Cdo(z), 20L);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m23319if(boolean z, SoundPool soundPool) {
        if (z) {
            soundPool.play(f18877for, 0.1f, 0.5f, 0, 1, 1.0f);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m23320new() {
        SoundPool soundPool = f18878if;
        if (soundPool != null) {
            soundPool.stop(f18877for);
        }
        f18878if = null;
    }
}
