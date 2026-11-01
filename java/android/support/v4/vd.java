package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class vd implements DataRewinder<ByteBuffer> {

    /* renamed from: do, reason: not valid java name */
    private final ByteBuffer f7150do;

    /* renamed from: android.support.v4.vd$do, reason: invalid class name */
    public static class Cdo implements DataRewinder.Factory<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public DataRewinder<ByteBuffer> build(ByteBuffer byteBuffer) {
            return new vd(byteBuffer);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }
    }

    public vd(ByteBuffer byteBuffer) {
        this.f7150do = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public void cleanup() {
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ByteBuffer rewindAndGet() {
        this.f7150do.position(0);
        return this.f7150do;
    }
}
