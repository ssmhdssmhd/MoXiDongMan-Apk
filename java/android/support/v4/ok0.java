package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.data.HttpUrlFetcher;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.Cif;
import com.bumptech.glide.load.model.Ctry;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ok0 implements ModelLoader<Cif, InputStream> {

    /* renamed from: if, reason: not valid java name */
    public static final Option<Integer> f4662if = Option.m11261else("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final Ctry<Cif, Cif> f4663do;

    /* renamed from: android.support.v4.ok0$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<Cif, InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final Ctry<Cif, Cif> f4664do = new Ctry<>(500);

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Cif, InputStream> build(Cgoto cgoto) {
            return new ok0(this.f4664do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public ok0() {
        this(null);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull Cif cif, int i, int i2, @NonNull f81 f81Var) {
        Ctry<Cif, Cif> ctry = this.f4663do;
        if (ctry != null) {
            Cif cifM11677if = ctry.m11677if(cif, 0, 0);
            if (cifM11677if == null) {
                this.f4663do.m11676for(cif, 0, 0, cif);
            } else {
                cif = cifM11677if;
            }
        }
        return new ModelLoader.Cdo<>(cif, new HttpUrlFetcher(cif, ((Integer) f81Var.m2196do(f4662if)).intValue()));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Cif cif) {
        return true;
    }

    public ok0(@Nullable Ctry<Cif, Cif> ctry) {
        this.f4663do = ctry;
    }
}
