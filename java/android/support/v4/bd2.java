package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.Cif;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;
import java.net.URL;

/* loaded from: classes.dex */
public class bd2 implements ModelLoader<URL, InputStream> {

    /* renamed from: do, reason: not valid java name */
    private final ModelLoader<Cif, InputStream> f417do;

    /* renamed from: android.support.v4.bd2$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<URL, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<URL, InputStream> build(Cgoto cgoto) {
            return new bd2(cgoto.m11651new(Cif.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public bd2(ModelLoader<Cif, InputStream> modelLoader) {
        this.f417do = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull URL url, int i, int i2, @NonNull f81 f81Var) {
        return this.f417do.buildLoadData(new Cif(url), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull URL url) {
        return true;
    }
}
