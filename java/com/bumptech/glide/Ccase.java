package com.bumptech.glide;

import android.support.v4.g01;
import android.support.v4.mt0;
import android.support.v4.sl0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.Cconst;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase {

    /* renamed from: catch, reason: not valid java name */
    public static final String f9271catch = "Gif";

    /* renamed from: class, reason: not valid java name */
    public static final String f9272class = "Bitmap";

    /* renamed from: const, reason: not valid java name */
    public static final String f9273const = "BitmapDrawable";

    /* renamed from: final, reason: not valid java name */
    private static final String f9274final = "legacy_prepend_all";

    /* renamed from: super, reason: not valid java name */
    private static final String f9275super = "legacy_append";

    /* renamed from: break, reason: not valid java name */
    private final Pools.Pool<List<Throwable>> f9276break;

    /* renamed from: case, reason: not valid java name */
    private final com.bumptech.glide.load.resource.transcode.Cdo f9277case;

    /* renamed from: do, reason: not valid java name */
    private final com.bumptech.glide.load.model.Ccase f9278do;

    /* renamed from: else, reason: not valid java name */
    private final sl0 f9279else;

    /* renamed from: for, reason: not valid java name */
    private final com.bumptech.glide.provider.Cif f9280for;

    /* renamed from: if, reason: not valid java name */
    private final com.bumptech.glide.provider.Cdo f9282if;

    /* renamed from: new, reason: not valid java name */
    private final com.bumptech.glide.provider.Cfor f9283new;

    /* renamed from: try, reason: not valid java name */
    private final com.bumptech.glide.load.data.Cnew f9285try;

    /* renamed from: goto, reason: not valid java name */
    private final g01 f9281goto = new g01();

    /* renamed from: this, reason: not valid java name */
    private final mt0 f9284this = new mt0();

    /* renamed from: com.bumptech.glide.case$do, reason: invalid class name */
    public static class Cdo extends RuntimeException {
        public Cdo(@NonNull String str) {
            super(str);
        }
    }

    /* renamed from: com.bumptech.glide.case$for, reason: invalid class name */
    public static class Cfor extends Cdo {
        public Cfor(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> Cfor(@NonNull M m, @NonNull List<ModelLoader<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m);
        }

        public Cfor(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* renamed from: com.bumptech.glide.case$if, reason: invalid class name */
    public static final class Cif extends Cdo {
        public Cif() {
            super("Failed to find image header parser.");
        }
    }

    /* renamed from: com.bumptech.glide.case$new, reason: invalid class name */
    public static class Cnew extends Cdo {
        public Cnew(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* renamed from: com.bumptech.glide.case$try, reason: invalid class name */
    public static class Ctry extends Cdo {
        public Ctry(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Ccase() {
        Pools.Pool<List<Throwable>> poolM12081case = FactoryPools.m12081case();
        this.f9276break = poolM12081case;
        this.f9278do = new com.bumptech.glide.load.model.Ccase(poolM12081case);
        this.f9282if = new com.bumptech.glide.provider.Cdo();
        this.f9280for = new com.bumptech.glide.provider.Cif();
        this.f9283new = new com.bumptech.glide.provider.Cfor();
        this.f9285try = new com.bumptech.glide.load.data.Cnew();
        this.f9277case = new com.bumptech.glide.load.resource.transcode.Cdo();
        this.f9279else = new sl0();
        m11079extends(Arrays.asList(f9271catch, f9272class, f9273const));
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    private <Data, TResource, Transcode> List<DecodePath<Data, TResource, Transcode>> m11071case(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f9280for.m11913new(cls, cls2)) {
            for (Class cls5 : this.f9277case.m11847if(cls4, cls3)) {
                arrayList.add(new DecodePath(cls, cls4, cls5, this.f9280for.m11912if(cls, cls4), this.f9277case.m11845do(cls4, cls5), this.f9276break));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public <Model, TResource, Transcode> List<Class<?>> m11072break(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> listM2501if = this.f9281goto.m2501if(cls, cls2, cls3);
        if (listM2501if == null) {
            listM2501if = new ArrayList<>();
            Iterator<Class<?>> it = this.f9278do.m11619new(cls).iterator();
            while (it.hasNext()) {
                for (Class<?> cls4 : this.f9280for.m11913new(it.next(), cls2)) {
                    if (!this.f9277case.m11847if(cls4, cls3).isEmpty() && !listM2501if.contains(cls4)) {
                        listM2501if.add(cls4);
                    }
                }
            }
            this.f9281goto.m2500for(cls, cls2, cls3, Collections.unmodifiableList(listM2501if));
        }
        return listM2501if;
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public <X> ResourceEncoder<X> m11073catch(@NonNull Resource<X> resource) throws Cnew {
        ResourceEncoder<X> resourceEncoderM11907if = this.f9283new.m11907if(resource.getResourceClass());
        if (resourceEncoderM11907if != null) {
            return resourceEncoderM11907if;
        }
        throw new Cnew(resource.getResourceClass());
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public <X> DataRewinder<X> m11074class(@NonNull X x) {
        return this.f9285try.m11308do(x);
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    public <X> Encoder<X> m11075const(@NonNull X x) throws Ctry {
        Encoder<X> encoderM11903if = this.f9282if.m11903if(x.getClass());
        if (encoderM11903if != null) {
            return encoderM11903if;
        }
        throw new Ctry(x.getClass());
    }

    @NonNull
    /* renamed from: default, reason: not valid java name */
    public <Model, Data> Ccase m11076default(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f9278do.m11620this(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public <Data> Ccase m11077do(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        this.f9282if.m11901do(cls, encoder);
        return this;
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public List<ImageHeaderParser> m11078else() {
        List<ImageHeaderParser> listM7507if = this.f9279else.m7507if();
        if (listM7507if.isEmpty()) {
            throw new Cif();
        }
        return listM7507if;
    }

    @NonNull
    /* renamed from: extends, reason: not valid java name */
    public final Ccase m11079extends(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, f9274final);
        arrayList.add(f9275super);
        this.f9280for.m11910case(arrayList);
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m11080final(@NonNull Resource<?> resource) {
        return this.f9283new.m11907if(resource.getResourceClass()) != null;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public <Data, TResource> Ccase m11081for(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        m11095try(f9275super, cls, cls2, resourceDecoder);
        return this;
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public <Data, TResource, Transcode> Cconst<Data, TResource, Transcode> m11082goto(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        Cconst<Data, TResource, Transcode> cconstM4998do = this.f9284this.m4998do(cls, cls2, cls3);
        if (this.f9284this.m4999for(cconstM4998do)) {
            return null;
        }
        if (cconstM4998do == null) {
            List<DecodePath<Data, TResource, Transcode>> listM11071case = m11071case(cls, cls2, cls3);
            cconstM4998do = listM11071case.isEmpty() ? null : new Cconst<>(cls, cls2, cls3, listM11071case, this.f9276break);
            this.f9284this.m5000new(cls, cls2, cls3, cconstM4998do);
        }
        return cconstM4998do;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public <TResource> Ccase m11083if(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        this.f9283new.m11905do(cls, resourceEncoder);
        return this;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public <Model, Data> Ccase m11084import(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.f9278do.m11616else(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public <Data, TResource> Ccase m11085native(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        this.f9280for.m11914try(str, resourceDecoder, cls, cls2);
        return this;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public <Model, Data> Ccase m11086new(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.f9278do.m11615do(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    /* renamed from: public, reason: not valid java name */
    public Ccase m11087public(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f9279else.m7506do(imageHeaderParser);
        return this;
    }

    @NonNull
    /* renamed from: return, reason: not valid java name */
    public Ccase m11088return(@NonNull DataRewinder.Factory<?> factory) {
        this.f9285try.m11309if(factory);
        return this;
    }

    @NonNull
    @Deprecated
    /* renamed from: static, reason: not valid java name */
    public <Data> Ccase m11089static(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        return m11077do(cls, encoder);
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    public <Data> Ccase m11090super(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        this.f9282if.m11902for(cls, encoder);
        return this;
    }

    @NonNull
    @Deprecated
    /* renamed from: switch, reason: not valid java name */
    public <TResource> Ccase m11091switch(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        return m11083if(cls, resourceEncoder);
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public <Model> List<ModelLoader<Model, ?>> m11092this(@NonNull Model model) {
        return this.f9278do.m11621try(model);
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    public <TResource> Ccase m11093throw(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        this.f9283new.m11906for(cls, resourceEncoder);
        return this;
    }

    @NonNull
    /* renamed from: throws, reason: not valid java name */
    public <TResource, Transcode> Ccase m11094throws(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull ResourceTranscoder<TResource, Transcode> resourceTranscoder) {
        this.f9277case.m11846for(cls, cls2, resourceTranscoder);
        return this;
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public <Data, TResource> Ccase m11095try(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        this.f9280for.m11911do(str, resourceDecoder, cls, cls2);
        return this;
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    public <Data, TResource> Ccase m11096while(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        m11085native(f9274final, cls, cls2, resourceDecoder);
        return this;
    }
}
