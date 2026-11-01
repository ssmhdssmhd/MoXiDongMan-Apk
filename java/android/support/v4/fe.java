package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public class fe implements Resource<byte[]> {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f1774do;

    public fe(byte[] bArr) {
        this.f1774do = (byte[]) cf1.m900new(bArr);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public byte[] get() {
        return this.f1774do;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<byte[]> getResourceClass() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f1774do.length;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
