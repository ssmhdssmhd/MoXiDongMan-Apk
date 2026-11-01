package android.support.v4;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.mediastore.Cif;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

/* loaded from: classes.dex */
public class jz0 implements ModelLoader<Uri, InputStream> {

    /* renamed from: do, reason: not valid java name */
    private final Context f3242do;

    /* renamed from: android.support.v4.jz0$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<Uri, InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final Context f3243do;

        public Cdo(Context context) {
            this.f3243do = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(Cgoto cgoto) {
            return new jz0(this.f3243do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public jz0(Context context) {
        this.f3242do = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        if (lz0.m4810new(i, i2)) {
            return new ModelLoader.Cdo<>(new s51(uri), Cif.m11306if(this.f3242do, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return lz0.m4807do(uri);
    }
}
