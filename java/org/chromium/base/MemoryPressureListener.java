package org.chromium.base;

import android.app.Activity;
import android.support.v4.cx0;
import java.util.Iterator;
import org.chromium.base.MemoryPressureListener;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.memory.MemoryPressureCallback;

@cx0
/* loaded from: classes3.dex */
public class MemoryPressureListener {

    /* renamed from: do, reason: not valid java name */
    private static final String f33031do = "org.chromium.base.ACTION_LOW_MEMORY";

    /* renamed from: for, reason: not valid java name */
    private static final String f33032for = "org.chromium.base.ACTION_TRIM_MEMORY_RUNNING_CRITICAL";

    /* renamed from: if, reason: not valid java name */
    private static final String f33033if = "org.chromium.base.ACTION_TRIM_MEMORY";

    /* renamed from: new, reason: not valid java name */
    private static final String f33034new = "org.chromium.base.ACTION_TRIM_MEMORY_MODERATE";

    /* renamed from: try, reason: not valid java name */
    private static final ObserverList<MemoryPressureCallback> f33035try = new ObserverList<>();

    public interface Natives {
        void onMemoryPressure(int i);
    }

    @CalledByNative
    private static void addNativeCallback() {
        m36860if(new MemoryPressureCallback() { // from class: android.support.v4.pz0
            @Override // org.chromium.base.memory.MemoryPressureCallback
            public final void onPressure(int i) {
                MemoryPressureListener.m36861new(i);
            }
        });
    }

    /* renamed from: case, reason: not valid java name */
    public static void m36855case(MemoryPressureCallback memoryPressureCallback) {
        f33035try.m36876class(memoryPressureCallback);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m36857else(Activity activity) {
        activity.getApplication().onLowMemory();
        activity.onLowMemory();
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m36858for(Activity activity, String str) {
        if (f33031do.equals(str)) {
            m36857else(activity);
            return true;
        }
        if (f33033if.equals(str)) {
            m36859goto(activity, 80);
            return true;
        }
        if (f33032for.equals(str)) {
            m36859goto(activity, 15);
            return true;
        }
        if (!f33034new.equals(str)) {
            return false;
        }
        m36859goto(activity, 60);
        return true;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m36859goto(Activity activity, int i) {
        activity.getApplication().onTrimMemory(i);
        activity.onTrimMemory(i);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36860if(MemoryPressureCallback memoryPressureCallback) {
        f33035try.m36878try(memoryPressureCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ void m36861new(int i) {
        Csuper.m37197if().onMemoryPressure(i);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36862try(int i) {
        Iterator<MemoryPressureCallback> it = f33035try.iterator();
        while (it.hasNext()) {
            it.next().onPressure(i);
        }
    }
}
