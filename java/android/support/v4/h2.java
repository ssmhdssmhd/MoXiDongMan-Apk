package android.support.v4;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.ClipDescription;
import android.os.Process;
import android.view.textclassifier.TextLinks;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import org.chromium.base.Cdo;
import org.chromium.base.Ctry;

@se2
@TargetApi(31)
/* loaded from: classes3.dex */
public final class h2 {

    /* renamed from: do, reason: not valid java name */
    private static final String f2303do = "ApiHelperForS";

    private h2() {
    }

    /* renamed from: do, reason: not valid java name */
    public static float m2872do(ClipDescription clipDescription, @NonNull String str) {
        try {
            return ((Float) ClipDescription.class.getDeclaredMethod("getConfidenceScore", String.class).invoke(clipDescription, str)).floatValue();
        } catch (IllegalAccessException | IllegalStateException | NoSuchMethodException | InvocationTargetException e) {
            rv0.m7156if(f2303do, "Failed to invoke ClipDescription#getConfidenceScore() ", e);
            return 0.0f;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m2873for() {
        return Cdo.m37069do(Ctry.m37273case(), "android.permission.BLUETOOTH_CONNECT", Process.myPid(), Process.myUid()) == 0;
    }

    /* renamed from: if, reason: not valid java name */
    public static TextLinks m2874if(ClipData.Item item) {
        try {
            return (TextLinks) ClipData.Item.class.getDeclaredMethod("getTextLinks", new Class[0]).invoke(item, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            rv0.m7156if(f2303do, "Failed to invoke ClipData.Item#getTextLinks() ", e);
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2875new(ClipDescription clipDescription) {
        try {
            return ((Boolean) ClipDescription.class.getDeclaredMethod("isStyledText", new Class[0]).invoke(clipDescription, new Object[0])).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            rv0.m7156if(f2303do, "Failed to invoke ClipDescription#isStyledText() ", e);
            return false;
        }
    }
}
