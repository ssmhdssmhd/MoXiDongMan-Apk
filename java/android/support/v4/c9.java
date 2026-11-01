package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public class c9 implements ResourceTranscoder<Bitmap, byte[]> {

    /* renamed from: do, reason: not valid java name */
    private final Bitmap.CompressFormat f638do;

    /* renamed from: if, reason: not valid java name */
    private final int f639if;

    public c9() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<byte[]> transcode(@NonNull Resource<Bitmap> resource, @NonNull f81 f81Var) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        resource.get().compress(this.f638do, this.f639if, byteArrayOutputStream);
        resource.recycle();
        return new fe(byteArrayOutputStream.toByteArray());
    }

    public c9(@NonNull Bitmap.CompressFormat compressFormat, int i) {
        this.f638do = compressFormat;
        this.f639if = i;
    }
}
