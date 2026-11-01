package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class sl0 {

    /* renamed from: do, reason: not valid java name */
    private final List<ImageHeaderParser> f6201do = new ArrayList();

    /* renamed from: do, reason: not valid java name */
    public synchronized void m7506do(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f6201do.add(imageHeaderParser);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public synchronized List<ImageHeaderParser> m7507if() {
        return this.f6201do;
    }
}
