package org.chromium.base.memory;

import android.os.Debug;
import android.support.v4.rv0;
import java.io.IOException;
import org.chromium.base.annotations.CalledByNative;

/* loaded from: classes3.dex */
public final class JavaHeapDumpGenerator {

    /* renamed from: do, reason: not valid java name */
    private static final String f33171do = "JavaHprofGenerator";

    private JavaHeapDumpGenerator() {
    }

    @CalledByNative
    public static boolean generateHprof(String str) throws IOException {
        try {
            Debug.dumpHprofData(str);
            return true;
        } catch (IOException e) {
            rv0.m7155goto(f33171do, "Error writing to file " + str + ". Error: " + e.getMessage(), new Object[0]);
            return false;
        }
    }
}
