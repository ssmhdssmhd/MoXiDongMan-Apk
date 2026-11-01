package android.support.v4;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.data.mediastore.Cif;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import java.io.InputStream;

/* loaded from: classes.dex */
public class mz0 implements ModelLoader<Uri, InputStream> {

    /* renamed from: do, reason: not valid java name */
    private final Context f4094do;

    /* renamed from: android.support.v4.mz0$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<Uri, InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final Context f4095do;

        public Cdo(Context context) {
            this.f4095do = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(Cgoto cgoto) {
            return new mz0(this.f4095do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public mz0(Context context) {
        this.f4094do = context.getApplicationContext();
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m5058for(f81 f81Var) {
        Long l = (Long) f81Var.m2196do(VideoDecoder.f10130else);
        return l != null && l.longValue() == -1;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        if (lz0.m4810new(i, i2) && m5058for(f81Var)) {
            return new ModelLoader.Cdo<>(new s51(uri), Cif.m11305for(this.f4094do, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return lz0.m4808for(uri);
    }
}
