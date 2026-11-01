package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;

/* loaded from: classes.dex */
public class vb2<Z> implements ResourceTranscoder<Z, Z> {

    /* renamed from: do, reason: not valid java name */
    private static final vb2<?> f7138do = new vb2<>();

    /* renamed from: do, reason: not valid java name */
    public static <Z> ResourceTranscoder<Z, Z> m8823do() {
        return f7138do;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<Z> transcode(@NonNull Resource<Z> resource, @NonNull f81 f81Var) {
        return resource;
    }
}
