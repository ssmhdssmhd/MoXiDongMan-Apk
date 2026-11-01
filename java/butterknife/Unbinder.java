package butterknife;

import androidx.annotation.UiThread;

/* loaded from: classes.dex */
public interface Unbinder {
    public static final Unbinder EMPTY = new Unbinder() { // from class: android.support.v4.fb2
        @Override // butterknife.Unbinder
        public final void unbind() {
            gb2.m2626if();
        }
    };

    @UiThread
    void unbind();
}
