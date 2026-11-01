package android.support.v4;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import java.io.File;

/* loaded from: classes.dex */
public final class yi0 {

    /* renamed from: break, reason: not valid java name */
    private static final int f8233break = 700;

    /* renamed from: case, reason: not valid java name */
    @VisibleForTesting
    public static final int f8234case = 128;

    /* renamed from: catch, reason: not valid java name */
    private static final int f8235catch = 20000;

    /* renamed from: class, reason: not valid java name */
    private static volatile yi0 f8236class = null;

    /* renamed from: else, reason: not valid java name */
    private static final int f8237else = 0;

    /* renamed from: goto, reason: not valid java name */
    private static final File f8238goto = new File("/proc/self/fd");

    /* renamed from: this, reason: not valid java name */
    private static final int f8239this = 50;

    /* renamed from: for, reason: not valid java name */
    private final int f8241for;

    /* renamed from: if, reason: not valid java name */
    private final int f8242if;

    /* renamed from: new, reason: not valid java name */
    @GuardedBy("this")
    private int f8243new;

    /* renamed from: try, reason: not valid java name */
    @GuardedBy("this")
    private boolean f8244try = true;

    /* renamed from: do, reason: not valid java name */
    private final boolean f8240do = m9875new();

    @VisibleForTesting
    public yi0() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f8242if = f8235catch;
            this.f8241for = 0;
        } else {
            this.f8242if = 700;
            this.f8241for = 128;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static yi0 m9873do() {
        if (f8236class == null) {
            synchronized (yi0.class) {
                if (f8236class == null) {
                    f8236class = new yi0();
                }
            }
        }
        return f8236class;
    }

    /* renamed from: if, reason: not valid java name */
    private synchronized boolean m9874if() {
        boolean z = true;
        int i = this.f8243new + 1;
        this.f8243new = i;
        if (i >= 50) {
            this.f8243new = 0;
            int length = f8238goto.list().length;
            if (length >= this.f8242if) {
                z = false;
            }
            this.f8244try = z;
            if (!z && Log.isLoggable(Downsampler.f10094case, 5)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors ");
                sb.append(length);
                sb.append(", limit ");
                sb.append(this.f8242if);
            }
        }
        return this.f8244try;
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m9875new() {
        String str = Build.MODEL;
        if (str == null || str.length() < 7) {
            return true;
        }
        String strSubstring = str.substring(0, 7);
        strSubstring.hashCode();
        switch (strSubstring) {
            case "SM-A520":
            case "SM-G930":
            case "SM-G935":
            case "SM-G960":
            case "SM-G965":
            case "SM-J720":
            case "SM-N935":
                if (Build.VERSION.SDK_INT != 26) {
                }
                break;
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m9876for(int i, int i2, boolean z, boolean z2) {
        int i3;
        return z && this.f8240do && Build.VERSION.SDK_INT >= 26 && !z2 && i >= (i3 = this.f8241for) && i2 >= i3 && m9874if();
    }

    @TargetApi(26)
    /* renamed from: try, reason: not valid java name */
    public boolean m9877try(int i, int i2, BitmapFactory.Options options, boolean z, boolean z2) {
        boolean zM9876for = m9876for(i, i2, z, z2);
        if (zM9876for) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return zM9876for;
    }
}
