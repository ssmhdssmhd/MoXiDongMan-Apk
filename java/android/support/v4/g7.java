package android.support.v4;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.model.Cif;
import com.bumptech.glide.load.model.Ctry;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class g7<Model> implements ModelLoader<Model, InputStream> {

    /* renamed from: do, reason: not valid java name */
    private final ModelLoader<Cif, InputStream> f2068do;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private final Ctry<Model, Cif> f2069if;

    public g7(ModelLoader<Cif, InputStream> modelLoader) {
        this(modelLoader, null);
    }

    /* renamed from: do, reason: not valid java name */
    private static List<Key> m2590do(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new Cif(it.next()));
        }
        return arrayList;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @Nullable
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull Model model, int i, int i2, @NonNull f81 f81Var) {
        Ctry<Model, Cif> ctry = this.f2069if;
        Cif cifM11677if = ctry != null ? ctry.m11677if(model, i, i2) : null;
        if (cifM11677if == null) {
            String strM2593new = m2593new(model, i, i2, f81Var);
            if (TextUtils.isEmpty(strM2593new)) {
                return null;
            }
            Cif cif = new Cif(strM2593new, m2591for(model, i, i2, f81Var));
            Ctry<Model, Cif> ctry2 = this.f2069if;
            if (ctry2 != null) {
                ctry2.m11676for(model, i, i2, cif);
            }
            cifM11677if = cif;
        }
        List<String> listM2592if = m2592if(model, i, i2, f81Var);
        ModelLoader.Cdo<InputStream> cdoBuildLoadData = this.f2068do.buildLoadData(cifM11677if, i, i2, f81Var);
        return (cdoBuildLoadData == null || listM2592if.isEmpty()) ? cdoBuildLoadData : new ModelLoader.Cdo<>(cdoBuildLoadData.f9975do, m2590do(listM2592if), cdoBuildLoadData.f9976for);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public Headers m2591for(Model model, int i, int i2, f81 f81Var) {
        return Headers.DEFAULT;
    }

    /* renamed from: if, reason: not valid java name */
    public List<String> m2592if(Model model, int i, int i2, f81 f81Var) {
        return Collections.emptyList();
    }

    /* renamed from: new, reason: not valid java name */
    public abstract String m2593new(Model model, int i, int i2, f81 f81Var);

    public g7(ModelLoader<Cif, InputStream> modelLoader, @Nullable Ctry<Model, Cif> ctry) {
        this.f2068do = modelLoader;
        this.f2069if = ctry;
    }
}
