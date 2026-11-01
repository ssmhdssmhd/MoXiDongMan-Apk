package com.bumptech.glide.load.engine;

import android.os.Build;
import android.support.v4.f81;
import android.support.v4.qh0;
import android.support.v4.sv0;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.Ccase;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class DecodeJob<R> implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable<DecodeJob<?>>, FactoryPools.Poolable {

    /* renamed from: strictfp, reason: not valid java name */
    private static final String f9562strictfp = "DecodeJob";

    /* renamed from: abstract, reason: not valid java name */
    private volatile boolean f9563abstract;

    /* renamed from: break, reason: not valid java name */
    private com.bumptech.glide.Ctry f9564break;

    /* renamed from: catch, reason: not valid java name */
    private Cthis f9566catch;

    /* renamed from: class, reason: not valid java name */
    private int f9567class;

    /* renamed from: const, reason: not valid java name */
    private int f9568const;

    /* renamed from: continue, reason: not valid java name */
    private volatile boolean f9569continue;

    /* renamed from: default, reason: not valid java name */
    private Key f9570default;

    /* renamed from: extends, reason: not valid java name */
    private Object f9573extends;

    /* renamed from: final, reason: not valid java name */
    private com.bumptech.glide.load.engine.Ccase f9574final;

    /* renamed from: finally, reason: not valid java name */
    private com.bumptech.glide.load.Cdo f9575finally;

    /* renamed from: goto, reason: not valid java name */
    private com.bumptech.glide.Cfor f9577goto;

    /* renamed from: import, reason: not valid java name */
    private Ccase f9579import;

    /* renamed from: native, reason: not valid java name */
    private Ctry f9580native;

    /* renamed from: new, reason: not valid java name */
    private final DiskCacheProvider f9581new;

    /* renamed from: package, reason: not valid java name */
    private DataFetcher<?> f9582package;

    /* renamed from: private, reason: not valid java name */
    private volatile DataFetcherGenerator f9583private;

    /* renamed from: public, reason: not valid java name */
    private long f9584public;

    /* renamed from: return, reason: not valid java name */
    private boolean f9585return;

    /* renamed from: static, reason: not valid java name */
    private Object f9586static;

    /* renamed from: super, reason: not valid java name */
    private f81 f9587super;

    /* renamed from: switch, reason: not valid java name */
    private Thread f9588switch;

    /* renamed from: this, reason: not valid java name */
    private Key f9589this;

    /* renamed from: throw, reason: not valid java name */
    private Callback<R> f9590throw;

    /* renamed from: throws, reason: not valid java name */
    private Key f9591throws;

    /* renamed from: try, reason: not valid java name */
    private final Pools.Pool<DecodeJob<?>> f9592try;

    /* renamed from: while, reason: not valid java name */
    private int f9593while;

    /* renamed from: do, reason: not valid java name */
    private final com.bumptech.glide.load.engine.Ctry<R> f9571do = new com.bumptech.glide.load.engine.Ctry<>();

    /* renamed from: if, reason: not valid java name */
    private final List<Throwable> f9578if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private final com.bumptech.glide.util.pool.Cdo f9576for = com.bumptech.glide.util.pool.Cdo.m12090do();

    /* renamed from: case, reason: not valid java name */
    private final Cfor<?> f9565case = new Cfor<>();

    /* renamed from: else, reason: not valid java name */
    private final Cnew f9572else = new Cnew();

    public interface Callback<R> {
        void onLoadFailed(Ccatch ccatch);

        void onResourceReady(Resource<R> resource, com.bumptech.glide.load.Cdo cdo);

        void reschedule(DecodeJob<?> decodeJob);
    }

    public interface DiskCacheProvider {
        DiskCache getDiskCache();
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$case, reason: invalid class name */
    public enum Ccase {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f9595do;

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int[] f9596for;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f9597if;

        static {
            int[] iArr = new int[com.bumptech.glide.load.Cfor.values().length];
            f9596for = iArr;
            try {
                iArr[com.bumptech.glide.load.Cfor.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9596for[com.bumptech.glide.load.Cfor.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Ccase.values().length];
            f9597if = iArr2;
            try {
                iArr2[Ccase.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9597if[Ccase.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9597if[Ccase.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9597if[Ccase.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9597if[Ccase.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[Ctry.values().length];
            f9595do = iArr3;
            try {
                iArr3[Ctry.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f9595do[Ctry.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f9595do[Ctry.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$for, reason: invalid class name */
    public static class Cfor<Z> {

        /* renamed from: do, reason: not valid java name */
        private Key f9598do;

        /* renamed from: for, reason: not valid java name */
        private Cfinal<Z> f9599for;

        /* renamed from: if, reason: not valid java name */
        private ResourceEncoder<Z> f9600if;

        /* renamed from: do, reason: not valid java name */
        public void m11344do() {
            this.f9598do = null;
            this.f9600if = null;
            this.f9599for = null;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m11345for() {
            return this.f9599for != null;
        }

        /* renamed from: if, reason: not valid java name */
        public void m11346if(DiskCacheProvider diskCacheProvider, f81 f81Var) {
            qh0.m6590do("DecodeJob.encode");
            try {
                diskCacheProvider.getDiskCache().put(this.f9598do, new com.bumptech.glide.load.engine.Cnew(this.f9600if, this.f9599for, f81Var));
            } finally {
                this.f9599for.m11513new();
                qh0.m6594try();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: new, reason: not valid java name */
        public <X> void m11347new(Key key, ResourceEncoder<X> resourceEncoder, Cfinal<X> cfinal) {
            this.f9598do = key;
            this.f9600if = resourceEncoder;
            this.f9599for = cfinal;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$if, reason: invalid class name */
    public final class Cif<Z> implements DecodePath.DecodeCallback<Z> {

        /* renamed from: do, reason: not valid java name */
        private final com.bumptech.glide.load.Cdo f9601do;

        public Cif(com.bumptech.glide.load.Cdo cdo) {
            this.f9601do = cdo;
        }

        @Override // com.bumptech.glide.load.engine.DecodePath.DecodeCallback
        @NonNull
        public Resource<Z> onResourceDecoded(@NonNull Resource<Z> resource) {
            return DecodeJob.this.m11342import(this.f9601do, resource);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private boolean f9603do;

        /* renamed from: for, reason: not valid java name */
        private boolean f9604for;

        /* renamed from: if, reason: not valid java name */
        private boolean f9605if;

        /* renamed from: do, reason: not valid java name */
        private boolean m11348do(boolean z) {
            return (this.f9604for || z || this.f9605if) && this.f9603do;
        }

        /* renamed from: for, reason: not valid java name */
        public synchronized boolean m11349for() {
            this.f9604for = true;
            return m11348do(false);
        }

        /* renamed from: if, reason: not valid java name */
        public synchronized boolean m11350if() {
            this.f9605if = true;
            return m11348do(false);
        }

        /* renamed from: new, reason: not valid java name */
        public synchronized boolean m11351new(boolean z) {
            this.f9603do = true;
            return m11348do(z);
        }

        /* renamed from: try, reason: not valid java name */
        public synchronized void m11352try() {
            this.f9605if = false;
            this.f9603do = false;
            this.f9604for = false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$try, reason: invalid class name */
    public enum Ctry {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    public DecodeJob(DiskCacheProvider diskCacheProvider, Pools.Pool<DecodeJob<?>> pool) {
        this.f9581new = diskCacheProvider;
        this.f9592try = pool;
    }

    /* renamed from: case, reason: not valid java name */
    private DataFetcherGenerator m11319case() {
        int i = Cdo.f9597if[this.f9579import.ordinal()];
        if (i == 1) {
            return new Csuper(this.f9571do, this);
        }
        if (i == 2) {
            return new com.bumptech.glide.load.engine.Cif(this.f9571do, this);
        }
        if (i == 3) {
            return new Cimport(this.f9571do, this);
        }
        if (i == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.f9579import);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m11320catch(String str, long j) {
        m11321class(str, j, null);
    }

    /* renamed from: class, reason: not valid java name */
    private void m11321class(String str, long j, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(sv0.m7612do(j));
        sb.append(", load key: ");
        sb.append(this.f9566catch);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
    }

    /* renamed from: const, reason: not valid java name */
    private void m11322const(Resource<R> resource, com.bumptech.glide.load.Cdo cdo) {
        m11335throws();
        this.f9590throw.onResourceReady(resource, cdo);
    }

    /* renamed from: else, reason: not valid java name */
    private Ccase m11323else(Ccase ccase) {
        int i = Cdo.f9597if[ccase.ordinal()];
        if (i == 1) {
            return this.f9574final.mo11455do() ? Ccase.DATA_CACHE : m11323else(Ccase.DATA_CACHE);
        }
        if (i == 2) {
            return this.f9585return ? Ccase.FINISHED : Ccase.SOURCE;
        }
        if (i == 3 || i == 4) {
            return Ccase.FINISHED;
        }
        if (i == 5) {
            return this.f9574final.mo11457if() ? Ccase.RESOURCE_CACHE : m11323else(Ccase.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + ccase);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: final, reason: not valid java name */
    private void m11324final(Resource<R> resource, com.bumptech.glide.load.Cdo cdo) {
        if (resource instanceof Initializable) {
            ((Initializable) resource).initialize();
        }
        Cfinal cfinal = 0;
        if (this.f9565case.m11345for()) {
            resource = Cfinal.m11512if(resource);
            cfinal = resource;
        }
        m11322const(resource, cdo);
        this.f9579import = Ccase.ENCODE;
        try {
            if (this.f9565case.m11345for()) {
                this.f9565case.m11346if(this.f9581new, this.f9587super);
            }
            m11334throw();
        } finally {
            if (cfinal != 0) {
                cfinal.m11513new();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private <Data> Resource<R> m11325for(DataFetcher<?> dataFetcher, Data data, com.bumptech.glide.load.Cdo cdo) throws Ccatch {
        if (data == null) {
            return null;
        }
        try {
            long jM7613if = sv0.m7613if();
            Resource<R> resourceM11327new = m11327new(data, cdo);
            if (Log.isLoggable(f9562strictfp, 2)) {
                m11320catch("Decoded result " + resourceM11327new, jM7613if);
            }
            return resourceM11327new;
        } finally {
            dataFetcher.cleanup();
        }
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private f81 m11326goto(com.bumptech.glide.load.Cdo cdo) {
        f81 f81Var = this.f9587super;
        if (Build.VERSION.SDK_INT < 26) {
            return f81Var;
        }
        boolean z = cdo == com.bumptech.glide.load.Cdo.RESOURCE_DISK_CACHE || this.f9571do.m11585switch();
        Option<Boolean> option = Downsampler.f10095catch;
        Boolean bool = (Boolean) f81Var.m2196do(option);
        if (bool != null && (!bool.booleanValue() || z)) {
            return f81Var;
        }
        f81 f81Var2 = new f81();
        f81Var2.m2198if(this.f9587super);
        f81Var2.m2197for(option, Boolean.valueOf(z));
        return f81Var2;
    }

    /* renamed from: new, reason: not valid java name */
    private <Data> Resource<R> m11327new(Data data, com.bumptech.glide.load.Cdo cdo) throws Ccatch {
        return m11330static(data, cdo, this.f9571do.m11576goto(data.getClass()));
    }

    /* renamed from: public, reason: not valid java name */
    private void m11328public() {
        this.f9572else.m11352try();
        this.f9565case.m11344do();
        this.f9571do.m11572do();
        this.f9563abstract = false;
        this.f9577goto = null;
        this.f9589this = null;
        this.f9587super = null;
        this.f9564break = null;
        this.f9566catch = null;
        this.f9590throw = null;
        this.f9579import = null;
        this.f9583private = null;
        this.f9588switch = null;
        this.f9591throws = null;
        this.f9573extends = null;
        this.f9575finally = null;
        this.f9582package = null;
        this.f9584public = 0L;
        this.f9569continue = false;
        this.f9586static = null;
        this.f9578if.clear();
        this.f9592try.release(this);
    }

    /* renamed from: return, reason: not valid java name */
    private void m11329return() {
        this.f9588switch = Thread.currentThread();
        this.f9584public = sv0.m7613if();
        boolean zStartNext = false;
        while (!this.f9569continue && this.f9583private != null && !(zStartNext = this.f9583private.startNext())) {
            this.f9579import = m11323else(this.f9579import);
            this.f9583private = m11319case();
            if (this.f9579import == Ccase.SOURCE) {
                reschedule();
                return;
            }
        }
        if ((this.f9579import == Ccase.FINISHED || this.f9569continue) && !zStartNext) {
            m11331super();
        }
    }

    /* renamed from: static, reason: not valid java name */
    private <Data, ResourceType> Resource<R> m11330static(Data data, com.bumptech.glide.load.Cdo cdo, Cconst<Data, ResourceType, R> cconst) throws Ccatch {
        f81 f81VarM11326goto = m11326goto(cdo);
        DataRewinder<Data> dataRewinderM11074class = this.f9577goto.m11171goto().m11074class(data);
        try {
            return cconst.m11472if(dataRewinderM11074class, f81VarM11326goto, this.f9567class, this.f9568const, new Cif(cdo));
        } finally {
            dataRewinderM11074class.cleanup();
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m11331super() {
        m11335throws();
        this.f9590throw.onLoadFailed(new Ccatch("Failed to load resource", new ArrayList(this.f9578if)));
        m11337while();
    }

    /* renamed from: switch, reason: not valid java name */
    private void m11332switch() {
        int i = Cdo.f9595do[this.f9580native.ordinal()];
        if (i == 1) {
            this.f9579import = m11323else(Ccase.INITIALIZE);
            this.f9583private = m11319case();
            m11329return();
        } else if (i == 2) {
            m11329return();
        } else {
            if (i == 3) {
                m11336try();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + this.f9580native);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private int m11333this() {
        return this.f9564break.ordinal();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m11334throw() {
        if (this.f9572else.m11350if()) {
            m11328public();
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m11335throws() {
        Throwable th;
        this.f9576for.mo12091for();
        if (!this.f9563abstract) {
            this.f9563abstract = true;
            return;
        }
        if (this.f9578if.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.f9578if;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    /* renamed from: try, reason: not valid java name */
    private void m11336try() {
        if (Log.isLoggable(f9562strictfp, 2)) {
            m11321class("Retrieved data", this.f9584public, "data: " + this.f9573extends + ", cache key: " + this.f9591throws + ", fetcher: " + this.f9582package);
        }
        Resource<R> resourceM11325for = null;
        try {
            resourceM11325for = m11325for(this.f9582package, this.f9573extends, this.f9575finally);
        } catch (Ccatch e) {
            e.setLoggingDetails(this.f9570default, this.f9575finally);
            this.f9578if.add(e);
        }
        if (resourceM11325for != null) {
            m11324final(resourceM11325for, this.f9575finally);
        } else {
            m11329return();
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m11337while() {
        if (this.f9572else.m11349for()) {
            m11328public();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public DecodeJob<R> m11338break(com.bumptech.glide.Cfor cfor, Object obj, Cthis cthis, Key key, int i, int i2, Class<?> cls, Class<R> cls2, com.bumptech.glide.Ctry ctry, com.bumptech.glide.load.engine.Ccase ccase, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, f81 f81Var, Callback<R> callback, int i3) {
        this.f9571do.m11582return(cfor, obj, key, i, i2, ccase, cls, cls2, ctry, f81Var, map, z, z2, this.f9581new);
        this.f9577goto = cfor;
        this.f9589this = key;
        this.f9564break = ctry;
        this.f9566catch = cthis;
        this.f9567class = i;
        this.f9568const = i2;
        this.f9574final = ccase;
        this.f9585return = z3;
        this.f9587super = f81Var;
        this.f9590throw = callback;
        this.f9593while = i3;
        this.f9580native = Ctry.INITIALIZE;
        this.f9586static = obj;
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m11339default() {
        Ccase ccaseM11323else = m11323else(Ccase.INITIALIZE);
        return ccaseM11323else == Ccase.RESOURCE_CACHE || ccaseM11323else == Ccase.DATA_CACHE;
    }

    /* renamed from: do, reason: not valid java name */
    public void m11340do() {
        this.f9569continue = true;
        DataFetcherGenerator dataFetcherGenerator = this.f9583private;
        if (dataFetcherGenerator != null) {
            dataFetcherGenerator.cancel();
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public com.bumptech.glide.util.pool.Cdo getVerifier() {
        return this.f9576for;
    }

    @Override // java.lang.Comparable
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public int compareTo(@NonNull DecodeJob<?> decodeJob) {
        int iM11333this = m11333this() - decodeJob.m11333this();
        return iM11333this == 0 ? this.f9593while - decodeJob.f9593while : iM11333this;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public <Z> Resource<Z> m11342import(com.bumptech.glide.load.Cdo cdo, @NonNull Resource<Z> resource) {
        Resource<Z> resourceTransform;
        Transformation<Z> transformation;
        com.bumptech.glide.load.Cfor encodeStrategy;
        Key cfor;
        Class<?> cls = resource.get().getClass();
        ResourceEncoder<Z> resourceEncoderM11574final = null;
        if (cdo != com.bumptech.glide.load.Cdo.RESOURCE_DISK_CACHE) {
            Transformation<Z> transformationM11578import = this.f9571do.m11578import(cls);
            transformation = transformationM11578import;
            resourceTransform = transformationM11578import.transform(this.f9577goto, resource, this.f9567class, this.f9568const);
        } else {
            resourceTransform = resource;
            transformation = null;
        }
        if (!resource.equals(resourceTransform)) {
            resource.recycle();
        }
        if (this.f9571do.m11583static(resourceTransform)) {
            resourceEncoderM11574final = this.f9571do.m11574final(resourceTransform);
            encodeStrategy = resourceEncoderM11574final.getEncodeStrategy(this.f9587super);
        } else {
            encodeStrategy = com.bumptech.glide.load.Cfor.NONE;
        }
        ResourceEncoder resourceEncoder = resourceEncoderM11574final;
        if (!this.f9574final.mo11458new(!this.f9571do.m11588throws(this.f9591throws), cdo, encodeStrategy)) {
            return resourceTransform;
        }
        if (resourceEncoder == null) {
            throw new Ccase.Cnew(resourceTransform.get().getClass());
        }
        int i = Cdo.f9596for[encodeStrategy.ordinal()];
        if (i == 1) {
            cfor = new com.bumptech.glide.load.engine.Cfor(this.f9591throws, this.f9589this);
        } else {
            if (i != 2) {
                throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
            }
            cfor = new Cthrow(this.f9571do.m11577if(), this.f9591throws, this.f9589this, this.f9567class, this.f9568const, transformation, cls, this.f9587super);
        }
        Cfinal cfinalM11512if = Cfinal.m11512if(resourceTransform);
        this.f9565case.m11347new(cfor, resourceEncoder, cfinalM11512if);
        return cfinalM11512if;
    }

    /* renamed from: native, reason: not valid java name */
    public void m11343native(boolean z) {
        if (this.f9572else.m11351new(z)) {
            m11328public();
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, com.bumptech.glide.load.Cdo cdo) {
        dataFetcher.cleanup();
        Ccatch ccatch = new Ccatch("Fetching data failed", exc);
        ccatch.setLoggingDetails(key, cdo, dataFetcher.getDataClass());
        this.f9578if.add(ccatch);
        if (Thread.currentThread() == this.f9588switch) {
            m11329return();
        } else {
            this.f9580native = Ctry.SWITCH_TO_SOURCE_SERVICE;
            this.f9590throw.reschedule(this);
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, com.bumptech.glide.load.Cdo cdo, Key key2) {
        this.f9591throws = key;
        this.f9573extends = obj;
        this.f9582package = dataFetcher;
        this.f9575finally = cdo;
        this.f9570default = key2;
        if (Thread.currentThread() != this.f9588switch) {
            this.f9580native = Ctry.DECODE_DATA;
            this.f9590throw.reschedule(this);
        } else {
            qh0.m6590do("DecodeJob.decodeFromRetrievedData");
            try {
                m11336try();
            } finally {
                qh0.m6594try();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void reschedule() {
        this.f9580native = Ctry.SWITCH_TO_SOURCE_SERVICE;
        this.f9590throw.reschedule(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        qh0.m6592if("DecodeJob#run(model=%s)", this.f9586static);
        DataFetcher<?> dataFetcher = this.f9582package;
        try {
            try {
                if (this.f9569continue) {
                    m11331super();
                    return;
                }
                m11332switch();
                if (dataFetcher != null) {
                    dataFetcher.cleanup();
                }
                qh0.m6594try();
            } finally {
                if (dataFetcher != null) {
                    dataFetcher.cleanup();
                }
                qh0.m6594try();
            }
        } catch (com.bumptech.glide.load.engine.Cdo e) {
            throw e;
        } catch (Throwable th) {
            if (Log.isLoggable(f9562strictfp, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("DecodeJob threw unexpectedly, isCancelled: ");
                sb.append(this.f9569continue);
                sb.append(", stage: ");
                sb.append(this.f9579import);
            }
            if (this.f9579import != Ccase.ENCODE) {
                this.f9578if.add(th);
                m11331super();
            }
            if (!this.f9569continue) {
                throw th;
            }
            throw th;
        }
    }
}
