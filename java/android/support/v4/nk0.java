package android.support.v4;

import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class nk0 extends IOException {
    public static final int UNKNOWN = -1;
    private static final long serialVersionUID = 1;
    private final int statusCode;

    public nk0(int i) {
        this("Http request failed with status code: " + i, i);
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public nk0(String str) {
        this(str, -1);
    }

    public nk0(String str, int i) {
        this(str, i, null);
    }

    public nk0(String str, int i, @Nullable Throwable th) {
        super(str, th);
        this.statusCode = i;
    }
}
