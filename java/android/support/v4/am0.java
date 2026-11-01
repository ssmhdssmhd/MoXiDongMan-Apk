package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.bumptech.glide.request.target.Cnew;

/* loaded from: classes.dex */
public class am0 {
    @NonNull
    /* renamed from: do, reason: not valid java name */
    public <Z> Cnew<ImageView, Z> m278do(@NonNull ImageView imageView, @NonNull Class<Z> cls) {
        if (Bitmap.class.equals(cls)) {
            return new j9(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new d30(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }
}
