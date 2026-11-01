package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class vl0 {

    /* renamed from: break, reason: not valid java name */
    public static final String f7283break = "file:///android_asset/";

    /* renamed from: this, reason: not valid java name */
    public static final String f7284this = "file:///";

    /* renamed from: case, reason: not valid java name */
    private int f7285case;

    /* renamed from: do, reason: not valid java name */
    private final Uri f7286do;

    /* renamed from: else, reason: not valid java name */
    private Rect f7287else;

    /* renamed from: for, reason: not valid java name */
    private final Integer f7288for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f7289goto;

    /* renamed from: if, reason: not valid java name */
    private final Bitmap f7290if;

    /* renamed from: new, reason: not valid java name */
    private boolean f7291new;

    /* renamed from: try, reason: not valid java name */
    private int f7292try;

    private vl0(Bitmap bitmap, boolean z) {
        this.f7290if = bitmap;
        this.f7286do = null;
        this.f7288for = null;
        this.f7291new = false;
        this.f7292try = bitmap.getWidth();
        this.f7285case = bitmap.getHeight();
        this.f7289goto = z;
    }

    /* renamed from: do, reason: not valid java name */
    public static vl0 m8899do(String str) {
        Objects.requireNonNull(str, "Asset name must not be null");
        return m8904public("file:///android_asset/" + str);
    }

    /* renamed from: final, reason: not valid java name */
    public static vl0 m8900final(int i) {
        return new vl0(i);
    }

    /* renamed from: for, reason: not valid java name */
    public static vl0 m8901for(Bitmap bitmap) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        return new vl0(bitmap, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static vl0 m8902if(Bitmap bitmap) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        return new vl0(bitmap, false);
    }

    /* renamed from: native, reason: not valid java name */
    public static vl0 m8903native(Uri uri) {
        Objects.requireNonNull(uri, "Uri must not be null");
        return new vl0(uri);
    }

    /* renamed from: public, reason: not valid java name */
    public static vl0 m8904public(String str) {
        Objects.requireNonNull(str, "Uri must not be null");
        if (!str.contains("://")) {
            if (str.startsWith(on0.f4694final)) {
                str = str.substring(1);
            }
            str = "file:///" + str;
        }
        return new vl0(Uri.parse(str));
    }

    /* renamed from: super, reason: not valid java name */
    private void m8905super() {
        Rect rect = this.f7287else;
        if (rect != null) {
            this.f7291new = true;
            this.f7292try = rect.width();
            this.f7285case = this.f7287else.height();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m8906break() {
        return this.f7291new;
    }

    /* renamed from: case, reason: not valid java name */
    public final Integer m8907case() {
        return this.f7288for;
    }

    /* renamed from: catch, reason: not valid java name */
    public final Uri m8908catch() {
        return this.f7286do;
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m8909class() {
        return this.f7289goto;
    }

    /* renamed from: const, reason: not valid java name */
    public vl0 m8910const(Rect rect) {
        this.f7287else = rect;
        m8905super();
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m8911else() {
        return this.f7285case;
    }

    /* renamed from: goto, reason: not valid java name */
    public final Rect m8912goto() {
        return this.f7287else;
    }

    /* renamed from: import, reason: not valid java name */
    public vl0 m8913import() {
        return m8916throw(true);
    }

    /* renamed from: new, reason: not valid java name */
    public vl0 m8914new(int i, int i2) {
        if (this.f7290if == null) {
            this.f7292try = i;
            this.f7285case = i2;
        }
        m8905super();
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public final int m8915this() {
        return this.f7292try;
    }

    /* renamed from: throw, reason: not valid java name */
    public vl0 m8916throw(boolean z) {
        this.f7291new = z;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public final Bitmap m8917try() {
        return this.f7290if;
    }

    /* renamed from: while, reason: not valid java name */
    public vl0 m8918while() {
        return m8916throw(false);
    }

    private vl0(Uri uri) {
        String string = uri.toString();
        if (string.startsWith("file:///") && !new File(string.substring(7)).exists()) {
            try {
                uri = Uri.parse(URLDecoder.decode(string, "UTF-8"));
            } catch (UnsupportedEncodingException unused) {
            }
        }
        this.f7290if = null;
        this.f7286do = uri;
        this.f7288for = null;
        this.f7291new = true;
    }

    private vl0(int i) {
        this.f7290if = null;
        this.f7286do = null;
        this.f7288for = Integer.valueOf(i);
        this.f7291new = true;
    }
}
