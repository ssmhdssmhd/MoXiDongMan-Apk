package android.support.v4;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class z20 extends Property<Drawable, Integer> {

    /* renamed from: if, reason: not valid java name */
    public static final Property<Drawable, Integer> f8424if = new z20();

    /* renamed from: do, reason: not valid java name */
    private final WeakHashMap<Drawable, Integer> f8425do;

    private z20() {
        super(Integer.class, "drawableAlphaCompat");
        this.f8425do = new WeakHashMap<>();
    }

    @Override // android.util.Property
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer get(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f8425do.containsKey(drawable)) {
            return this.f8425do.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void set(@NonNull Drawable drawable, @NonNull Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f8425do.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
