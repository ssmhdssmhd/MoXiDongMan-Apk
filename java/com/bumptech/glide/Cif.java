package com.bumptech.glide;

import android.content.Context;
import android.support.v4.cf1;
import android.support.v4.dn1;
import android.support.v4.m9;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.os.BuildCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Celse;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.Ccase;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.Cnew;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.request.RequestListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {

    /* renamed from: break, reason: not valid java name */
    private ConnectivityMonitorFactory f9451break;

    /* renamed from: case, reason: not valid java name */
    private GlideExecutor f9452case;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private RequestManagerRetriever.RequestManagerFactory f9455const;

    /* renamed from: else, reason: not valid java name */
    private GlideExecutor f9457else;

    /* renamed from: final, reason: not valid java name */
    private GlideExecutor f9458final;

    /* renamed from: for, reason: not valid java name */
    private BitmapPool f9459for;

    /* renamed from: goto, reason: not valid java name */
    private DiskCache.Factory f9460goto;

    /* renamed from: if, reason: not valid java name */
    private Celse f9461if;

    /* renamed from: import, reason: not valid java name */
    private boolean f9462import;

    /* renamed from: new, reason: not valid java name */
    private ArrayPool f9463new;

    /* renamed from: super, reason: not valid java name */
    private boolean f9464super;

    /* renamed from: this, reason: not valid java name */
    private MemorySizeCalculator f9465this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private List<RequestListener<Object>> f9466throw;

    /* renamed from: try, reason: not valid java name */
    private MemoryCache f9467try;

    /* renamed from: while, reason: not valid java name */
    private boolean f9468while;

    /* renamed from: do, reason: not valid java name */
    private final Map<Class<?>, Cthis<?, ?>> f9456do = new ArrayMap();

    /* renamed from: catch, reason: not valid java name */
    private int f9453catch = 4;

    /* renamed from: class, reason: not valid java name */
    private Glide.RequestOptionsFactory f9454class = new Cdo();

    /* renamed from: com.bumptech.glide.if$do, reason: invalid class name */
    public class Cdo implements Glide.RequestOptionsFactory {
        public Cdo() {
        }

        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        @NonNull
        public dn1 build() {
            return new dn1();
        }
    }

    /* renamed from: com.bumptech.glide.if$if, reason: invalid class name and collision with other inner class name */
    public class C0023if implements Glide.RequestOptionsFactory {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dn1 f9470do;

        public C0023if(dn1 dn1Var) {
            this.f9470do = dn1Var;
        }

        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        @NonNull
        public dn1 build() {
            dn1 dn1Var = this.f9470do;
            return dn1Var != null ? dn1Var : new dn1();
        }
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public Cif m11227break(@Nullable DiskCache.Factory factory) {
        this.f9460goto = factory;
        return this;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public Cif m11228case(@Nullable ConnectivityMonitorFactory connectivityMonitorFactory) {
        this.f9451break = connectivityMonitorFactory;
        return this;
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public Cif m11229catch(@Nullable GlideExecutor glideExecutor) {
        this.f9457else = glideExecutor;
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public Cif m11230class(Celse celse) {
        this.f9461if = celse;
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Cif m11231const(boolean z) {
        if (!BuildCompat.isAtLeastQ()) {
            return this;
        }
        this.f9462import = z;
        return this;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public Cif m11232do(@NonNull RequestListener<Object> requestListener) {
        if (this.f9466throw == null) {
            this.f9466throw = new ArrayList();
        }
        this.f9466throw.add(requestListener);
        return this;
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public Cif m11233else(@Nullable dn1 dn1Var) {
        return m11236goto(new C0023if(dn1Var));
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public Cif m11234final(boolean z) {
        this.f9464super = z;
        return this;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public Cif m11235for(@Nullable GlideExecutor glideExecutor) {
        this.f9458final = glideExecutor;
        return this;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public Cif m11236goto(@NonNull Glide.RequestOptionsFactory requestOptionsFactory) {
        this.f9454class = (Glide.RequestOptionsFactory) cf1.m900new(requestOptionsFactory);
        return this;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public Glide m11237if(@NonNull Context context) {
        if (this.f9452case == null) {
            this.f9452case = GlideExecutor.m11490break();
        }
        if (this.f9457else == null) {
            this.f9457else = GlideExecutor.m11491case();
        }
        if (this.f9458final == null) {
            this.f9458final = GlideExecutor.m11497for();
        }
        if (this.f9465this == null) {
            this.f9465this = new MemorySizeCalculator.Cdo(context).m11434do();
        }
        if (this.f9451break == null) {
            this.f9451break = new Cnew();
        }
        if (this.f9459for == null) {
            int iM11431if = this.f9465this.m11431if();
            if (iM11431if > 0) {
                this.f9459for = new LruBitmapPool(iM11431if);
            } else {
                this.f9459for = new m9();
            }
        }
        if (this.f9463new == null) {
            this.f9463new = new Ccase(this.f9465this.m11430do());
        }
        if (this.f9467try == null) {
            this.f9467try = new com.bumptech.glide.load.engine.cache.Celse(this.f9465this.m11432new());
        }
        if (this.f9460goto == null) {
            this.f9460goto = new com.bumptech.glide.load.engine.cache.Ccase(context);
        }
        if (this.f9461if == null) {
            this.f9461if = new Celse(this.f9467try, this.f9460goto, this.f9457else, this.f9452case, GlideExecutor.m11494const(), this.f9458final, this.f9464super);
        }
        List<RequestListener<Object>> list = this.f9466throw;
        if (list == null) {
            this.f9466throw = Collections.emptyList();
        } else {
            this.f9466throw = Collections.unmodifiableList(list);
        }
        return new Glide(context, this.f9461if, this.f9467try, this.f9459for, this.f9463new, new RequestManagerRetriever(this.f9455const), this.f9451break, this.f9453catch, this.f9454class, this.f9456do, this.f9466throw, this.f9468while, this.f9462import);
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public Cif m11238import(@NonNull MemorySizeCalculator.Cdo cdo) {
        return m11239native(cdo.m11434do());
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public Cif m11239native(@Nullable MemorySizeCalculator memorySizeCalculator) {
        this.f9465this = memorySizeCalculator;
        return this;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public Cif m11240new(@Nullable ArrayPool arrayPool) {
        this.f9463new = arrayPool;
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public void m11241public(@Nullable RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.f9455const = requestManagerFactory;
    }

    @Deprecated
    /* renamed from: return, reason: not valid java name */
    public Cif m11242return(@Nullable GlideExecutor glideExecutor) {
        return m11243static(glideExecutor);
    }

    @NonNull
    /* renamed from: static, reason: not valid java name */
    public Cif m11243static(@Nullable GlideExecutor glideExecutor) {
        this.f9452case = glideExecutor;
        return this;
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    public Cif m11244super(int i) {
        if (i < 2 || i > 6) {
            throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
        }
        this.f9453catch = i;
        return this;
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public <T> Cif m11245this(@NonNull Class<T> cls, @Nullable Cthis<?, T> cthis) {
        this.f9456do.put(cls, cthis);
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cif m11246throw(boolean z) {
        this.f9468while = z;
        return this;
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public Cif m11247try(@Nullable BitmapPool bitmapPool) {
        this.f9459for = bitmapPool;
        return this;
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    public Cif m11248while(@Nullable MemoryCache memoryCache) {
        this.f9467try = memoryCache;
        return this;
    }
}
