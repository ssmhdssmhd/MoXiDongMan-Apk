package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Objects;

/* loaded from: classes.dex */
public final class wl0 {

    /* renamed from: break, reason: not valid java name */
    public static final String f7558break = "file:///android_asset/";

    /* renamed from: this, reason: not valid java name */
    public static final String f7559this = "file:///";

    /* renamed from: case, reason: not valid java name */
    private int f7560case;

    /* renamed from: do, reason: not valid java name */
    private final Uri f7561do;

    /* renamed from: else, reason: not valid java name */
    private Rect f7562else;

    /* renamed from: for, reason: not valid java name */
    private final Integer f7563for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f7564goto;

    /* renamed from: if, reason: not valid java name */
    private final Bitmap f7565if;

    /* renamed from: new, reason: not valid java name */
    private boolean f7566new;

    /* renamed from: try, reason: not valid java name */
    private int f7567try;

    private wl0(Bitmap bitmap, boolean z) {
        this.f7565if = bitmap;
        this.f7561do = null;
        this.f7563for = null;
        this.f7566new = false;
        this.f7567try = bitmap.getWidth();
        this.f7560case = bitmap.getHeight();
        this.f7564goto = z;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static wl0 m9208do(@NonNull String str) {
        Objects.requireNonNull(str, "Asset name must not be null");
        return m9213public("file:///android_asset/" + str);
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public static wl0 m9209final(int i) {
        return new wl0(i);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static wl0 m9210for(@NonNull Bitmap bitmap) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        return new wl0(bitmap, true);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static wl0 m9211if(@NonNull Bitmap bitmap) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        return new wl0(bitmap, false);
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public static wl0 m9212native(@NonNull Uri uri) {
        Objects.requireNonNull(uri, "Uri must not be null");
        return new wl0(uri);
    }

    @NonNull
    /* renamed from: public, reason: not valid java name */
    public static wl0 m9213public(@NonNull String str) {
        Objects.requireNonNull(str, "Uri must not be null");
        if (!str.contains("://")) {
            if (str.startsWith(on0.f4694final)) {
                str = str.substring(1);
            }
            str = "file:///" + str;
        }
        return new wl0(Uri.parse(str));
    }

    /* renamed from: super, reason: not valid java name */
    private void m9214super() {
        Rect rect = this.f7562else;
        if (rect != null) {
            this.f7566new = true;
            this.f7567try = rect.width();
            this.f7560case = this.f7562else.height();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m9215break() {
        return this.f7566new;
    }

    /* renamed from: case, reason: not valid java name */
    public final Integer m9216case() {
        return this.f7563for;
    }

    /* renamed from: catch, reason: not valid java name */
    public final Uri m9217catch() {
        return this.f7561do;
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m9218class() {
        return this.f7564goto;
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    public wl0 m9219const(Rect rect) {
        this.f7562else = rect;
        m9214super();
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m9220else() {
        return this.f7560case;
    }

    /* renamed from: goto, reason: not valid java name */
    public final Rect m9221goto() {
        return this.f7562else;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public wl0 m9222import() {
        return m9225throw(true);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public wl0 m9223new(int i, int i2) {
        if (this.f7565if == null) {
            this.f7567try = i;
            this.f7560case = i2;
        }
        m9214super();
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public final int m9224this() {
        return this.f7567try;
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    public wl0 m9225throw(boolean z) {
        this.f7566new = z;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public final Bitmap m9226try() {
        return this.f7565if;
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    public wl0 m9227while() {
        return m9225throw(false);
    }

    private wl0(@NonNull Uri uri) {
        String string = uri.toString();
        if (string.startsWith("file:///") && !new File(string.substring(7)).exists()) {
            try {
                uri = Uri.parse(URLDecoder.decode(string, "UTF-8"));
            } catch (UnsupportedEncodingException unused) {
            }
        }
        this.f7565if = null;
        this.f7561do = uri;
        this.f7563for = null;
        this.f7566new = true;
    }

    private wl0(int i) {
        this.f7565if = null;
        this.f7561do = null;
        this.f7563for = Integer.valueOf(i);
        this.f7566new = true;
    }
}
