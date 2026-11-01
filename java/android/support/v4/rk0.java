package android.support.v4;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.Cif;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class rk0 implements ModelLoader<Uri, InputStream> {

    /* renamed from: if, reason: not valid java name */
    private static final Set<String> f5846if = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: do, reason: not valid java name */
    private final ModelLoader<Cif, InputStream> f5847do;

    /* renamed from: android.support.v4.rk0$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<Uri, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(Cgoto cgoto) {
            return new rk0(cgoto.m11651new(Cif.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public rk0(ModelLoader<Cif, InputStream> modelLoader) {
        this.f5847do = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        return this.f5847do.buildLoadData(new Cif(uri.toString()), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return f5846if.contains(uri.getScheme());
    }
}
