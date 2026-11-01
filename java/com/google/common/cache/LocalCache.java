package com.google.common.cache;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.df;
import android.support.v4.hf2;
import android.support.v4.ib2;
import android.support.v4.ji0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.li0;
import android.support.v4.vm1;
import android.support.v4.y80;
import com.google.common.base.Function;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.Cfor;
import com.google.common.cache.Cif;
import com.google.common.collect.Maps;
import com.google.common.collect.c3;
import com.google.common.collect.g1;
import com.google.common.collect.s1;
import com.google.common.collect.x0;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.e;
import com.google.common.util.concurrent.m;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

@ki0(emulated = true)
/* loaded from: classes.dex */
class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* renamed from: default, reason: not valid java name */
    public static final int f13771default = 3;

    /* renamed from: extends, reason: not valid java name */
    public static final int f13772extends = 63;

    /* renamed from: finally, reason: not valid java name */
    public static final int f13773finally = 16;

    /* renamed from: switch, reason: not valid java name */
    public static final int f13776switch = 1073741824;

    /* renamed from: throws, reason: not valid java name */
    public static final int f13777throws = 65536;

    /* renamed from: break, reason: not valid java name */
    public final Weigher<K, V> f13778break;

    /* renamed from: case, reason: not valid java name */
    public final com.google.common.base.Cthis<Object> f13779case;

    /* renamed from: catch, reason: not valid java name */
    public final long f13780catch;

    /* renamed from: class, reason: not valid java name */
    public final long f13781class;

    /* renamed from: const, reason: not valid java name */
    public final long f13782const;

    /* renamed from: do, reason: not valid java name */
    public final int f13783do;

    /* renamed from: else, reason: not valid java name */
    public final Cpublic f13784else;

    /* renamed from: final, reason: not valid java name */
    public final Queue<vm1<K, V>> f13785final;

    /* renamed from: for, reason: not valid java name */
    public final Cimport<K, V>[] f13786for;

    /* renamed from: goto, reason: not valid java name */
    public final Cpublic f13787goto;

    /* renamed from: if, reason: not valid java name */
    public final int f13788if;

    /* renamed from: import, reason: not valid java name */
    public final AbstractCache.StatsCounter f13789import;

    /* renamed from: native, reason: not valid java name */
    @b51
    public final com.google.common.cache.Cfor<? super K, V> f13790native;

    /* renamed from: new, reason: not valid java name */
    public final int f13791new;

    /* renamed from: public, reason: not valid java name */
    @l01
    public Set<K> f13792public;

    /* renamed from: return, reason: not valid java name */
    @l01
    public Collection<V> f13793return;

    /* renamed from: static, reason: not valid java name */
    @l01
    public Set<Map.Entry<K, V>> f13794static;

    /* renamed from: super, reason: not valid java name */
    public final RemovalListener<K, V> f13795super;

    /* renamed from: this, reason: not valid java name */
    public final long f13796this;

    /* renamed from: throw, reason: not valid java name */
    public final com.google.common.base.Cfinally f13797throw;

    /* renamed from: try, reason: not valid java name */
    public final com.google.common.base.Cthis<Object> f13798try;

    /* renamed from: while, reason: not valid java name */
    public final Ccase f13799while;

    /* renamed from: package, reason: not valid java name */
    public static final Logger f13774package = Logger.getLogger(LocalCache.class.getName());

    /* renamed from: private, reason: not valid java name */
    public static final ValueReference<Object, Object> f13775private = new Cdo();

    /* renamed from: abstract, reason: not valid java name */
    public static final Queue<?> f13770abstract = new Cif();

    public interface ValueReference<K, V> {
        ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @b51 V v, ReferenceEntry<K, V> referenceEntry);

        @b51
        V get();

        @b51
        ReferenceEntry<K, V> getEntry();

        int getWeight();

        boolean isActive();

        boolean isLoading();

        void notifyNewValue(@b51 V v);

        V waitForValue() throws ExecutionException;
    }

    /* renamed from: com.google.common.cache.LocalCache$abstract, reason: invalid class name */
    public static class Cabstract<K, V> extends WeakReference<K> implements ReferenceEntry<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final int f13800do;

        /* renamed from: for, reason: not valid java name */
        public volatile ValueReference<K, V> f13801for;

        /* renamed from: if, reason: not valid java name */
        @b51
        public final ReferenceEntry<K, V> f13802if;

        public Cabstract(ReferenceQueue<K> referenceQueue, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(k, referenceQueue);
            this.f13801for = LocalCache.d();
            this.f13800do = i;
            this.f13802if = referenceEntry;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            return this.f13800do;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public K getKey() {
            return get();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            return this.f13802if;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            return this.f13801for;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            this.f13801for = valueReference;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$break, reason: invalid class name */
    public final class Cbreak extends LocalCache<K, V>.Cthis<K> {
        public Cbreak() {
            super();
        }

        @Override // com.google.common.cache.LocalCache.Cthis, java.util.Iterator
        public K next() {
            return m15278for().getKey();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.cache.LocalCache$case, reason: invalid class name */
    public static abstract class Ccase {
        public static final int ACCESS_MASK = 1;
        public static final Ccase STRONG;
        public static final Ccase STRONG_ACCESS;
        public static final Ccase STRONG_ACCESS_WRITE;
        public static final Ccase STRONG_WRITE;
        public static final Ccase WEAK;
        public static final Ccase WEAK_ACCESS;
        public static final Ccase WEAK_ACCESS_WRITE;
        public static final int WEAK_MASK = 4;
        public static final Ccase WEAK_WRITE;
        public static final int WRITE_MASK = 2;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Ccase[] f13804do;
        public static final Ccase[] factories;

        /* renamed from: com.google.common.cache.LocalCache$case$case, reason: invalid class name and collision with other inner class name */
        public enum C0079case extends Ccase {
            public C0079case(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = super.copyEntry(cimport, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, referenceEntryCopyEntry);
                return referenceEntryCopyEntry;
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cpackage(cimport.keyReferenceQueue, k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$do, reason: invalid class name */
        public enum Cdo extends Ccase {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cswitch(k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$else, reason: invalid class name */
        public enum Celse extends Ccase {
            public Celse(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = super.copyEntry(cimport, referenceEntry, referenceEntry2);
                copyWriteEntry(referenceEntry, referenceEntryCopyEntry);
                return referenceEntryCopyEntry;
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cstrictfp(cimport.keyReferenceQueue, k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$for, reason: invalid class name */
        public enum Cfor extends Ccase {
            public Cfor(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = super.copyEntry(cimport, referenceEntry, referenceEntry2);
                copyWriteEntry(referenceEntry, referenceEntryCopyEntry);
                return referenceEntryCopyEntry;
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cdefault(k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$goto, reason: invalid class name */
        public enum Cgoto extends Ccase {
            public Cgoto(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = super.copyEntry(cimport, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, referenceEntryCopyEntry);
                copyWriteEntry(referenceEntry, referenceEntryCopyEntry);
                return referenceEntryCopyEntry;
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cprivate(cimport.keyReferenceQueue, k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$if, reason: invalid class name */
        public enum Cif extends Ccase {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = super.copyEntry(cimport, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, referenceEntryCopyEntry);
                return referenceEntryCopyEntry;
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Creturn(k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$new, reason: invalid class name */
        public enum Cnew extends Ccase {
            public Cnew(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = super.copyEntry(cimport, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, referenceEntryCopyEntry);
                copyWriteEntry(referenceEntry, referenceEntryCopyEntry);
                return referenceEntryCopyEntry;
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cstatic(k, i, referenceEntry);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$case$try, reason: invalid class name */
        public enum Ctry extends Ccase {
            public Ctry(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Ccase
            public <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
                return new Cabstract(cimport.keyReferenceQueue, k, i, referenceEntry);
            }
        }

        static {
            Cdo cdo = new Cdo("STRONG", 0);
            STRONG = cdo;
            Cif cif = new Cif("STRONG_ACCESS", 1);
            STRONG_ACCESS = cif;
            Cfor cfor = new Cfor("STRONG_WRITE", 2);
            STRONG_WRITE = cfor;
            Cnew cnew = new Cnew("STRONG_ACCESS_WRITE", 3);
            STRONG_ACCESS_WRITE = cnew;
            Ctry ctry = new Ctry("WEAK", 4);
            WEAK = ctry;
            C0079case c0079case = new C0079case("WEAK_ACCESS", 5);
            WEAK_ACCESS = c0079case;
            Celse celse = new Celse("WEAK_WRITE", 6);
            WEAK_WRITE = celse;
            Cgoto cgoto = new Cgoto("WEAK_ACCESS_WRITE", 7);
            WEAK_ACCESS_WRITE = cgoto;
            f13804do = new Ccase[]{cdo, cif, cfor, cnew, ctry, c0079case, celse, cgoto};
            factories = new Ccase[]{cdo, cif, cfor, cnew, ctry, c0079case, celse, cgoto};
        }

        private Ccase(String str, int i) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Ccase getFactory(Cpublic cpublic, boolean z, boolean z2) {
            return factories[(cpublic == Cpublic.WEAK ? (char) 4 : (char) 0) | (z ? 1 : 0) | (z2 ? 2 : 0)];
        }

        public static Ccase valueOf(String str) {
            return (Ccase) Enum.valueOf(Ccase.class, str);
        }

        public static Ccase[] values() {
            return (Ccase[]) f13804do.clone();
        }

        public <K, V> void copyAccessEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setAccessTime(referenceEntry.getAccessTime());
            LocalCache.m15234for(referenceEntry.getPreviousInAccessQueue(), referenceEntry2);
            LocalCache.m15234for(referenceEntry2, referenceEntry.getNextInAccessQueue());
            LocalCache.m15231abstract(referenceEntry);
        }

        public <K, V> ReferenceEntry<K, V> copyEntry(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            return newEntry(cimport, referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry2);
        }

        public <K, V> void copyWriteEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setWriteTime(referenceEntry.getWriteTime());
            LocalCache.m15236new(referenceEntry.getPreviousInWriteQueue(), referenceEntry2);
            LocalCache.m15236new(referenceEntry2, referenceEntry.getNextInWriteQueue());
            LocalCache.m15232continue(referenceEntry);
        }

        public abstract <K, V> ReferenceEntry<K, V> newEntry(Cimport<K, V> cimport, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry);

        public /* synthetic */ Ccase(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$catch, reason: invalid class name */
    public final class Ccatch extends LocalCache<K, V>.Cfor<K> {
        public Ccatch(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f13818do.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new Cbreak();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f13818do.remove(obj) != null;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$class, reason: invalid class name */
    public static final class Cclass<K, V> extends Cthrow<K, V> implements LoadingCache<K, V>, Serializable {
        private static final long serialVersionUID = 1;

        @l01
        public transient LoadingCache<K, V> autoDelegate;

        public Cclass(LocalCache<K, V> localCache) {
            super(localCache);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.autoDelegate = (LoadingCache<K, V>) recreateCacheBuilder().m15313if(this.loader);
        }

        private Object readResolve() {
            return this.autoDelegate;
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return this.autoDelegate.apply(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            return this.autoDelegate.get(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public x0<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.autoDelegate.getAll(iterable);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            return this.autoDelegate.getUnchecked(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.autoDelegate.refresh(k);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$const, reason: invalid class name */
    public static class Cconst<K, V> implements ValueReference<K, V> {

        /* renamed from: do, reason: not valid java name */
        public volatile ValueReference<K, V> f13806do;

        /* renamed from: for, reason: not valid java name */
        public final com.google.common.base.Cthrows f13807for;

        /* renamed from: if, reason: not valid java name */
        public final e<V> f13808if;

        /* renamed from: com.google.common.cache.LocalCache$const$do, reason: invalid class name */
        public class Cdo implements Function<V, V> {
            public Cdo() {
            }

            @Override // com.google.common.base.Function
            public V apply(V v) {
                Cconst.this.m15275try(v);
                return v;
            }
        }

        public Cconst() {
            this(LocalCache.d());
        }

        /* renamed from: if, reason: not valid java name */
        private ListenableFuture<V> m15270if(Throwable th) {
            return com.google.common.util.concurrent.Cprivate.m18265catch(th);
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m15271case(Throwable th) {
            return this.f13808if.mo17980private(th);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @b51 V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public long m15272do() {
            return this.f13807for.m15217else(TimeUnit.NANOSECONDS);
        }

        /* renamed from: for, reason: not valid java name */
        public ValueReference<K, V> m15273for() {
            return this.f13806do;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V get() {
            return this.f13806do.get();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.f13806do.getWeight();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return this.f13806do.isActive();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return true;
        }

        /* renamed from: new, reason: not valid java name */
        public ListenableFuture<V> m15274new(K k, com.google.common.cache.Cfor<? super K, V> cfor) {
            try {
                this.f13807for.m15215catch();
                V v = this.f13806do.get();
                if (v == null) {
                    V vLoad = cfor.load(k);
                    return m15275try(vLoad) ? this.f13808if : com.google.common.util.concurrent.Cprivate.m18266class(vLoad);
                }
                ListenableFuture<V> listenableFutureReload = cfor.reload(k, v);
                return listenableFutureReload == null ? com.google.common.util.concurrent.Cprivate.m18266class(null) : com.google.common.util.concurrent.Cprivate.m18284static(listenableFutureReload, new Cdo(), com.google.common.util.concurrent.Cimplements.m18221for());
            } catch (Throwable th) {
                ListenableFuture<V> listenableFutureM15270if = m15271case(th) ? this.f13808if : m15270if(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return listenableFutureM15270if;
            }
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(@b51 V v) {
            if (v != null) {
                m15275try(v);
            } else {
                this.f13806do = LocalCache.d();
            }
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m15275try(@b51 V v) {
            return this.f13808if.mo17979package(v);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() throws ExecutionException {
            return (V) m.m18259new(this.f13808if);
        }

        public Cconst(ValueReference<K, V> valueReference) {
            this.f13808if = e.m18143strictfp();
            this.f13807for = com.google.common.base.Cthrows.m15213try();
            this.f13806do = valueReference;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$continue, reason: invalid class name */
    public static class Ccontinue<K, V> extends WeakReference<V> implements ValueReference<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final ReferenceEntry<K, V> f13810do;

        public Ccontinue(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.f13810do = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new Ccontinue(referenceQueue, v, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return this.f13810do;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V v) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$default, reason: invalid class name */
    public static final class Cdefault<K, V> extends Cswitch<K, V> {

        /* renamed from: case, reason: not valid java name */
        public ReferenceEntry<K, V> f13811case;

        /* renamed from: else, reason: not valid java name */
        public ReferenceEntry<K, V> f13812else;

        /* renamed from: try, reason: not valid java name */
        public volatile long f13813try;

        public Cdefault(K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
            this.f13813try = Long.MAX_VALUE;
            this.f13811case = LocalCache.m15237private();
            this.f13812else = LocalCache.m15237private();
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.f13811case;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.f13812else;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.f13813try;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13811case = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13812else = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.f13813try = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$do, reason: invalid class name */
    public static class Cdo implements ValueReference<Object, Object> {
        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<Object, Object> copyFor(ReferenceQueue<Object> referenceQueue, @b51 Object obj, ReferenceEntry<Object, Object> referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<Object, Object> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public Object waitForValue() {
            return null;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$else, reason: invalid class name */
    public final class Celse extends LocalCache<K, V>.Cthis<Map.Entry<K, V>> {
        public Celse() {
            super();
        }

        @Override // com.google.common.cache.LocalCache.Cthis, java.util.Iterator
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m15278for();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$extends, reason: invalid class name */
    public final class Cextends extends LocalCache<K, V>.Cthis<V> {
        public Cextends() {
            super();
        }

        @Override // com.google.common.cache.LocalCache.Cthis, java.util.Iterator
        public V next() {
            return m15278for().getValue();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$final, reason: invalid class name */
    public static class Cfinal<K, V> extends Csuper<K, V> implements LoadingCache<K, V> {
        private static final long serialVersionUID = 1;

        public Cfinal(com.google.common.cache.Cif<? super K, ? super V> cif, com.google.common.cache.Cfor<? super K, V> cfor) {
            super(new LocalCache(cif, (com.google.common.cache.Cfor) af1.m205continue(cfor)), null);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return getUnchecked(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            return this.localCache.m15253native(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public x0<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.localCache.m15246final(iterable);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new ib2(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.localCache.m15251instanceof(k);
        }

        @Override // com.google.common.cache.LocalCache.Csuper
        public Object writeReplace() {
            return new Cclass(this.localCache);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$finally, reason: invalid class name */
    public final class Cfinally extends AbstractCollection<V> {

        /* renamed from: do, reason: not valid java name */
        private final ConcurrentMap<?, ?> f13816do;

        public Cfinally(ConcurrentMap<?, ?> concurrentMap) {
            this.f13816do = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f13816do.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f13816do.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f13816do.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new Cextends();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f13816do.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return LocalCache.c(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.c(this).toArray(eArr);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$for, reason: invalid class name */
    public abstract class Cfor<T> extends AbstractSet<T> {

        /* renamed from: do, reason: not valid java name */
        @hf2
        public final ConcurrentMap<?, ?> f13818do;

        public Cfor(ConcurrentMap<?, ?> concurrentMap) {
            this.f13818do = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f13818do.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f13818do.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f13818do.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return LocalCache.c(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.c(this).toArray(eArr);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$goto, reason: invalid class name */
    public final class Cgoto extends LocalCache<K, V>.Cfor<Map.Entry<K, V>> {
        public Cgoto(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = LocalCache.this.get(key)) != null && LocalCache.this.f13779case.equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new Celse();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && LocalCache.this.remove(key, entry.getValue());
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$if, reason: invalid class name */
    public static class Cif extends AbstractQueue<Object> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return g1.of().iterator();
        }

        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$implements, reason: invalid class name */
    public final class Cimplements implements Map.Entry<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f13821do;

        /* renamed from: if, reason: not valid java name */
        public V f13823if;

        public Cimplements(K k, V v) {
            this.f13821do = k;
            this.f13823if = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f13821do.equals(entry.getKey()) && this.f13823if.equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f13821do;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f13823if;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f13821do.hashCode() ^ this.f13823if.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) LocalCache.this.put(this.f13821do, v);
            this.f13823if = v;
            return v2;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$interface, reason: invalid class name */
    public static final class Cinterface<K, V> extends Cthrows<K, V> {

        /* renamed from: if, reason: not valid java name */
        public final int f13829if;

        public Cinterface(V v, int i) {
            super(v);
            this.f13829if = i;
        }

        @Override // com.google.common.cache.LocalCache.Cthrows, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.f13829if;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$native, reason: invalid class name */
    public static class Cnative<K, V> extends SoftReference<V> implements ValueReference<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final ReferenceEntry<K, V> f13830do;

        public Cnative(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.f13830do = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new Cnative(referenceQueue, v, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return this.f13830do;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V v) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$new, reason: invalid class name */
    public static abstract class Cnew<K, V> implements ReferenceEntry<K, V> {
        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$package, reason: invalid class name */
    public static final class Cpackage<K, V> extends Cabstract<K, V> {

        /* renamed from: case, reason: not valid java name */
        public ReferenceEntry<K, V> f13831case;

        /* renamed from: new, reason: not valid java name */
        public volatile long f13832new;

        /* renamed from: try, reason: not valid java name */
        public ReferenceEntry<K, V> f13833try;

        public Cpackage(ReferenceQueue<K> referenceQueue, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
            this.f13832new = Long.MAX_VALUE;
            this.f13833try = LocalCache.m15237private();
            this.f13831case = LocalCache.m15237private();
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.f13832new;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.f13833try;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.f13831case;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.f13832new = j;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13833try = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13831case = referenceEntry;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$private, reason: invalid class name */
    public static final class Cprivate<K, V> extends Cabstract<K, V> {

        /* renamed from: case, reason: not valid java name */
        public ReferenceEntry<K, V> f13834case;

        /* renamed from: else, reason: not valid java name */
        public volatile long f13835else;

        /* renamed from: goto, reason: not valid java name */
        public ReferenceEntry<K, V> f13836goto;

        /* renamed from: new, reason: not valid java name */
        public volatile long f13837new;

        /* renamed from: this, reason: not valid java name */
        public ReferenceEntry<K, V> f13838this;

        /* renamed from: try, reason: not valid java name */
        public ReferenceEntry<K, V> f13839try;

        public Cprivate(ReferenceQueue<K> referenceQueue, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
            this.f13837new = Long.MAX_VALUE;
            this.f13839try = LocalCache.m15237private();
            this.f13834case = LocalCache.m15237private();
            this.f13835else = Long.MAX_VALUE;
            this.f13836goto = LocalCache.m15237private();
            this.f13838this = LocalCache.m15237private();
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.f13837new;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.f13839try;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.f13836goto;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.f13834case;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.f13838this;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.f13835else;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.f13837new = j;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13839try = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13836goto = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13834case = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13838this = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.f13835else = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$protected, reason: invalid class name */
    public static final class Cprotected<K, V> extends Ccontinue<K, V> {

        /* renamed from: if, reason: not valid java name */
        public final int f13840if;

        public Cprotected(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry, int i) {
            super(referenceQueue, v, referenceEntry);
            this.f13840if = i;
        }

        @Override // com.google.common.cache.LocalCache.Ccontinue, com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new Cprotected(referenceQueue, v, referenceEntry, this.f13840if);
        }

        @Override // com.google.common.cache.LocalCache.Ccontinue, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.f13840if;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.cache.LocalCache$public, reason: invalid class name */
    public static abstract class Cpublic {
        public static final Cpublic SOFT;
        public static final Cpublic STRONG;
        public static final Cpublic WEAK;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cpublic[] f13841do;

        /* renamed from: com.google.common.cache.LocalCache$public$do, reason: invalid class name */
        public enum Cdo extends Cpublic {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Cpublic
            public com.google.common.base.Cthis<Object> defaultEquivalence() {
                return com.google.common.base.Cthis.equals();
            }

            @Override // com.google.common.cache.LocalCache.Cpublic
            public <K, V> ValueReference<K, V> referenceValue(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, V v, int i) {
                return i == 1 ? new Cthrows(v) : new Cinterface(v, i);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$public$for, reason: invalid class name */
        public enum Cfor extends Cpublic {
            public Cfor(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Cpublic
            public com.google.common.base.Cthis<Object> defaultEquivalence() {
                return com.google.common.base.Cthis.identity();
            }

            @Override // com.google.common.cache.LocalCache.Cpublic
            public <K, V> ValueReference<K, V> referenceValue(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, V v, int i) {
                return i == 1 ? new Ccontinue(cimport.valueReferenceQueue, v, referenceEntry) : new Cprotected(cimport.valueReferenceQueue, v, referenceEntry, i);
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$public$if, reason: invalid class name */
        public enum Cif extends Cpublic {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.cache.LocalCache.Cpublic
            public com.google.common.base.Cthis<Object> defaultEquivalence() {
                return com.google.common.base.Cthis.identity();
            }

            @Override // com.google.common.cache.LocalCache.Cpublic
            public <K, V> ValueReference<K, V> referenceValue(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, V v, int i) {
                return i == 1 ? new Cnative(cimport.valueReferenceQueue, v, referenceEntry) : new Cvolatile(cimport.valueReferenceQueue, v, referenceEntry, i);
            }
        }

        static {
            Cdo cdo = new Cdo("STRONG", 0);
            STRONG = cdo;
            Cif cif = new Cif("SOFT", 1);
            SOFT = cif;
            Cfor cfor = new Cfor("WEAK", 2);
            WEAK = cfor;
            f13841do = new Cpublic[]{cdo, cif, cfor};
        }

        private Cpublic(String str, int i) {
        }

        public static Cpublic valueOf(String str) {
            return (Cpublic) Enum.valueOf(Cpublic.class, str);
        }

        public static Cpublic[] values() {
            return (Cpublic[]) f13841do.clone();
        }

        public abstract com.google.common.base.Cthis<Object> defaultEquivalence();

        public abstract <K, V> ValueReference<K, V> referenceValue(Cimport<K, V> cimport, ReferenceEntry<K, V> referenceEntry, V v, int i);

        public /* synthetic */ Cpublic(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$return, reason: invalid class name */
    public static final class Creturn<K, V> extends Cswitch<K, V> {

        /* renamed from: case, reason: not valid java name */
        public ReferenceEntry<K, V> f13842case;

        /* renamed from: else, reason: not valid java name */
        public ReferenceEntry<K, V> f13843else;

        /* renamed from: try, reason: not valid java name */
        public volatile long f13844try;

        public Creturn(K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
            this.f13844try = Long.MAX_VALUE;
            this.f13842case = LocalCache.m15237private();
            this.f13843else = LocalCache.m15237private();
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.f13844try;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.f13842case;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.f13843else;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.f13844try = j;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13842case = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13843else = referenceEntry;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$static, reason: invalid class name */
    public static final class Cstatic<K, V> extends Cswitch<K, V> {

        /* renamed from: break, reason: not valid java name */
        public ReferenceEntry<K, V> f13845break;

        /* renamed from: case, reason: not valid java name */
        public ReferenceEntry<K, V> f13846case;

        /* renamed from: else, reason: not valid java name */
        public ReferenceEntry<K, V> f13847else;

        /* renamed from: goto, reason: not valid java name */
        public volatile long f13848goto;

        /* renamed from: this, reason: not valid java name */
        public ReferenceEntry<K, V> f13849this;

        /* renamed from: try, reason: not valid java name */
        public volatile long f13850try;

        public Cstatic(K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
            this.f13850try = Long.MAX_VALUE;
            this.f13846case = LocalCache.m15237private();
            this.f13847else = LocalCache.m15237private();
            this.f13848goto = Long.MAX_VALUE;
            this.f13849this = LocalCache.m15237private();
            this.f13845break = LocalCache.m15237private();
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.f13850try;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.f13846case;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.f13849this;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.f13847else;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.f13845break;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.f13848goto;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.f13850try = j;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13846case = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13849this = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13847else = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13845break = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.f13848goto = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$strictfp, reason: invalid class name */
    public static final class Cstrictfp<K, V> extends Cabstract<K, V> {

        /* renamed from: case, reason: not valid java name */
        public ReferenceEntry<K, V> f13851case;

        /* renamed from: new, reason: not valid java name */
        public volatile long f13852new;

        /* renamed from: try, reason: not valid java name */
        public ReferenceEntry<K, V> f13853try;

        public Cstrictfp(ReferenceQueue<K> referenceQueue, K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
            this.f13852new = Long.MAX_VALUE;
            this.f13853try = LocalCache.m15237private();
            this.f13851case = LocalCache.m15237private();
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.f13853try;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.f13851case;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.f13852new;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13853try = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.f13851case = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cabstract, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.f13852new = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$super, reason: invalid class name */
    public static class Csuper<K, V> implements Cache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        public final LocalCache<K, V> localCache;

        /* renamed from: com.google.common.cache.LocalCache$super$do, reason: invalid class name */
        public class Cdo extends com.google.common.cache.Cfor<Object, V> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Callable f13854do;

            public Cdo(Callable callable) {
                this.f13854do = callable;
            }

            @Override // com.google.common.cache.Cfor
            public V load(Object obj) throws Exception {
                return (V) this.f13854do.call();
            }
        }

        public /* synthetic */ Csuper(LocalCache localCache, Cdo cdo) {
            this(localCache);
        }

        @Override // com.google.common.cache.Cache
        public ConcurrentMap<K, V> asMap() {
            return this.localCache;
        }

        @Override // com.google.common.cache.Cache
        public void cleanUp() {
            this.localCache.m15248if();
        }

        @Override // com.google.common.cache.Cache
        public V get(K k, Callable<? extends V> callable) throws ExecutionException {
            af1.m205continue(callable);
            return this.localCache.m15242const(k, new Cdo(callable));
        }

        @Override // com.google.common.cache.Cache
        public x0<K, V> getAllPresent(Iterable<?> iterable) {
            return this.localCache.m15260super(iterable);
        }

        @Override // com.google.common.cache.Cache
        @b51
        public V getIfPresent(Object obj) {
            return this.localCache.m15269while(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidate(Object obj) {
            af1.m205continue(obj);
            this.localCache.remove(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll(Iterable<?> iterable) {
            this.localCache.m15257return(iterable);
        }

        @Override // com.google.common.cache.Cache
        public void put(K k, V v) {
            this.localCache.put(k, v);
        }

        @Override // com.google.common.cache.Cache
        public void putAll(Map<? extends K, ? extends V> map) {
            this.localCache.putAll(map);
        }

        @Override // com.google.common.cache.Cache
        public long size() {
            return this.localCache.m15243default();
        }

        @Override // com.google.common.cache.Cache
        public df stats() {
            AbstractCache.Cdo cdo = new AbstractCache.Cdo();
            cdo.m15220do(this.localCache.f13789import);
            for (Cimport<K, V> cimport : this.localCache.f13786for) {
                cdo.m15220do(cimport.statsCounter);
            }
            return cdo.snapshot();
        }

        Object writeReplace() {
            return new Cthrow(this.localCache);
        }

        public Csuper(com.google.common.cache.Cif<? super K, ? super V> cif) {
            this(new LocalCache(cif, null));
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll() {
            this.localCache.clear();
        }

        private Csuper(LocalCache<K, V> localCache) {
            this.localCache = localCache;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$switch, reason: invalid class name */
    public static class Cswitch<K, V> extends Cnew<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f13856do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public final ReferenceEntry<K, V> f13857for;

        /* renamed from: if, reason: not valid java name */
        public final int f13858if;

        /* renamed from: new, reason: not valid java name */
        public volatile ValueReference<K, V> f13859new = LocalCache.d();

        public Cswitch(K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            this.f13856do = k;
            this.f13858if = i;
            this.f13857for = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public int getHash() {
            return this.f13858if;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public K getKey() {
            return this.f13856do;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            return this.f13857for;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            return this.f13859new;
        }

        @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            this.f13859new = valueReference;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$this, reason: invalid class name */
    public abstract class Cthis<T> implements Iterator<T> {

        /* renamed from: case, reason: not valid java name */
        @b51
        public LocalCache<K, V>.Cimplements f13860case;

        /* renamed from: do, reason: not valid java name */
        public int f13861do;

        /* renamed from: else, reason: not valid java name */
        @b51
        public LocalCache<K, V>.Cimplements f13862else;

        /* renamed from: for, reason: not valid java name */
        @l01
        public Cimport<K, V> f13863for;

        /* renamed from: if, reason: not valid java name */
        public int f13865if = -1;

        /* renamed from: new, reason: not valid java name */
        @l01
        public AtomicReferenceArray<ReferenceEntry<K, V>> f13866new;

        /* renamed from: try, reason: not valid java name */
        @b51
        public ReferenceEntry<K, V> f13867try;

        public Cthis() {
            this.f13861do = LocalCache.this.f13786for.length - 1;
            m15277do();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m15277do() {
            this.f13860case = null;
            if (m15280new() || m15281try()) {
                return;
            }
            while (true) {
                int i = this.f13861do;
                if (i < 0) {
                    return;
                }
                Cimport<K, V>[] cimportArr = LocalCache.this.f13786for;
                this.f13861do = i - 1;
                Cimport<K, V> cimport = cimportArr[i];
                this.f13863for = cimport;
                if (cimport.count != 0) {
                    this.f13866new = this.f13863for.table;
                    this.f13865if = r0.length() - 1;
                    if (m15281try()) {
                        return;
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public LocalCache<K, V>.Cimplements m15278for() {
            LocalCache<K, V>.Cimplements cimplements = this.f13860case;
            if (cimplements == null) {
                throw new NoSuchElementException();
            }
            this.f13862else = cimplements;
            m15277do();
            return this.f13862else;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13860case != null;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m15279if(ReferenceEntry<K, V> referenceEntry) {
            boolean z;
            try {
                long jMo15100do = LocalCache.this.f13797throw.mo15100do();
                K key = referenceEntry.getKey();
                Object objM15250import = LocalCache.this.m15250import(referenceEntry, jMo15100do);
                if (objM15250import != null) {
                    this.f13860case = new Cimplements(key, objM15250import);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            } finally {
                this.f13863for.postReadCleanup();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m15280new() {
            ReferenceEntry<K, V> referenceEntry = this.f13867try;
            if (referenceEntry == null) {
                return false;
            }
            while (true) {
                this.f13867try = referenceEntry.getNext();
                ReferenceEntry<K, V> referenceEntry2 = this.f13867try;
                if (referenceEntry2 == null) {
                    return false;
                }
                if (m15279if(referenceEntry2)) {
                    return true;
                }
                referenceEntry = this.f13867try;
            }
        }

        @Override // java.util.Iterator
        public abstract T next();

        @Override // java.util.Iterator
        public void remove() {
            af1.t(this.f13862else != null);
            LocalCache.this.remove(this.f13862else.getKey());
            this.f13862else = null;
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m15281try() {
            while (true) {
                int i = this.f13865if;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.f13866new;
                this.f13865if = i - 1;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i);
                this.f13867try = referenceEntry;
                if (referenceEntry != null && (m15279if(referenceEntry) || m15280new())) {
                    return true;
                }
            }
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$throw, reason: invalid class name */
    public static class Cthrow<K, V> extends com.google.common.cache.Cnew<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        public final int concurrencyLevel;

        @l01
        public transient Cache<K, V> delegate;
        public final long expireAfterAccessNanos;
        public final long expireAfterWriteNanos;
        public final com.google.common.base.Cthis<Object> keyEquivalence;
        public final Cpublic keyStrength;
        public final com.google.common.cache.Cfor<? super K, V> loader;
        public final long maxWeight;
        public final RemovalListener<? super K, ? super V> removalListener;

        @b51
        public final com.google.common.base.Cfinally ticker;
        public final com.google.common.base.Cthis<Object> valueEquivalence;
        public final Cpublic valueStrength;
        public final Weigher<K, V> weigher;

        public Cthrow(LocalCache<K, V> localCache) {
            this(localCache.f13784else, localCache.f13787goto, localCache.f13798try, localCache.f13779case, localCache.f13781class, localCache.f13780catch, localCache.f13796this, localCache.f13778break, localCache.f13791new, localCache.f13795super, localCache.f13797throw, localCache.f13790native);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.delegate = (Cache<K, V>) recreateCacheBuilder().m15308do();
        }

        private Object readResolve() {
            return this.delegate;
        }

        public com.google.common.cache.Cif<K, V> recreateCacheBuilder() {
            com.google.common.cache.Cif<K, V> cif = (com.google.common.cache.Cif<K, V>) com.google.common.cache.Cif.m15296abstract().m15317interface(this.keyStrength).m15321protected(this.valueStrength).m15310extends(this.keyEquivalence).m15316instanceof(this.valueEquivalence).m15332try(this.concurrencyLevel).m15333volatile(this.removalListener);
            cif.f13923do = false;
            long j = this.expireAfterWriteNanos;
            if (j > 0) {
                cif.m15309else(j, TimeUnit.NANOSECONDS);
            }
            long j2 = this.expireAfterAccessNanos;
            if (j2 > 0) {
                cif.m15302case(j2, TimeUnit.NANOSECONDS);
            }
            Weigher weigher = this.weigher;
            if (weigher != Cif.Ctry.INSTANCE) {
                cif.b(weigher);
                long j3 = this.maxWeight;
                if (j3 != -1) {
                    cif.m15320private(j3);
                }
            } else {
                long j4 = this.maxWeight;
                if (j4 != -1) {
                    cif.m15319package(j4);
                }
            }
            com.google.common.base.Cfinally cfinally = this.ticker;
            if (cfinally != null) {
                cif.m15314implements(cfinally);
            }
            return cif;
        }

        private Cthrow(Cpublic cpublic, Cpublic cpublic2, com.google.common.base.Cthis<Object> cthis, com.google.common.base.Cthis<Object> cthis2, long j, long j2, long j3, Weigher<K, V> weigher, int i, RemovalListener<? super K, ? super V> removalListener, com.google.common.base.Cfinally cfinally, com.google.common.cache.Cfor<? super K, V> cfor) {
            this.keyStrength = cpublic;
            this.valueStrength = cpublic2;
            this.keyEquivalence = cthis;
            this.valueEquivalence = cthis2;
            this.expireAfterWriteNanos = j;
            this.expireAfterAccessNanos = j2;
            this.maxWeight = j3;
            this.weigher = weigher;
            this.concurrencyLevel = i;
            this.removalListener = removalListener;
            this.ticker = (cfinally == com.google.common.base.Cfinally.m15099if() || cfinally == com.google.common.cache.Cif.f13916throws) ? null : cfinally;
            this.loader = cfor;
        }

        @Override // com.google.common.cache.Cnew, android.support.v4.ae0
        public Cache<K, V> delegate() {
            return this.delegate;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$throws, reason: invalid class name */
    public static class Cthrows<K, V> implements ValueReference<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final V f13868do;

        public Cthrows(V v) {
            this.f13868do = v;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V get() {
            return this.f13868do;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V v) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$transient, reason: invalid class name */
    public static final class Ctransient<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final ReferenceEntry<K, V> f13869do = new Cdo();

        /* renamed from: com.google.common.cache.LocalCache$transient$do, reason: invalid class name */
        public class Cdo extends Cnew<K, V> {

            /* renamed from: do, reason: not valid java name */
            public ReferenceEntry<K, V> f13870do = this;

            /* renamed from: if, reason: not valid java name */
            public ReferenceEntry<K, V> f13872if = this;

            public Cdo() {
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getNextInWriteQueue() {
                return this.f13870do;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getPreviousInWriteQueue() {
                return this.f13872if;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
                this.f13870do = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
                this.f13872if = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public void setWriteTime(long j) {
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$transient$if, reason: invalid class name */
        public class Cif extends android.support.v4.e<ReferenceEntry<K, V>> {
            public Cif(ReferenceEntry referenceEntry) {
                super(referenceEntry);
            }

            @Override // android.support.v4.e
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public ReferenceEntry<K, V> mo1571do(ReferenceEntry<K, V> referenceEntry) {
                ReferenceEntry<K, V> nextInWriteQueue = referenceEntry.getNextInWriteQueue();
                if (nextInWriteQueue == Ctransient.this.f13869do) {
                    return null;
                }
                return nextInWriteQueue;
            }
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ReferenceEntry<K, V> nextInWriteQueue = this.f13869do.getNextInWriteQueue();
            while (true) {
                ReferenceEntry<K, V> referenceEntry = this.f13869do;
                if (nextInWriteQueue == referenceEntry) {
                    referenceEntry.setNextInWriteQueue(referenceEntry);
                    ReferenceEntry<K, V> referenceEntry2 = this.f13869do;
                    referenceEntry2.setPreviousInWriteQueue(referenceEntry2);
                    return;
                } else {
                    ReferenceEntry<K, V> nextInWriteQueue2 = nextInWriteQueue.getNextInWriteQueue();
                    LocalCache.m15232continue(nextInWriteQueue);
                    nextInWriteQueue = nextInWriteQueue2;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((ReferenceEntry) obj).getNextInWriteQueue() != Cwhile.INSTANCE;
        }

        @Override // java.util.Queue
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean offer(ReferenceEntry<K, V> referenceEntry) {
            LocalCache.m15236new(referenceEntry.getPreviousInWriteQueue(), referenceEntry.getNextInWriteQueue());
            LocalCache.m15236new(this.f13869do.getPreviousInWriteQueue(), referenceEntry);
            LocalCache.m15236new(referenceEntry, this.f13869do);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReferenceEntry<K, V> poll() {
            ReferenceEntry<K, V> nextInWriteQueue = this.f13869do.getNextInWriteQueue();
            if (nextInWriteQueue == this.f13869do) {
                return null;
            }
            remove(nextInWriteQueue);
            return nextInWriteQueue;
        }

        @Override // java.util.Queue
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> nextInWriteQueue = this.f13869do.getNextInWriteQueue();
            if (nextInWriteQueue == this.f13869do) {
                return null;
            }
            return nextInWriteQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f13869do.getNextInWriteQueue() == this.f13869do;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new Cif(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry<K, V> previousInWriteQueue = referenceEntry.getPreviousInWriteQueue();
            ReferenceEntry<K, V> nextInWriteQueue = referenceEntry.getNextInWriteQueue();
            LocalCache.m15236new(previousInWriteQueue, nextInWriteQueue);
            LocalCache.m15232continue(referenceEntry);
            return nextInWriteQueue != Cwhile.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (ReferenceEntry<K, V> nextInWriteQueue = this.f13869do.getNextInWriteQueue(); nextInWriteQueue != this.f13869do; nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue()) {
                i++;
            }
            return i;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$try, reason: invalid class name */
    public static final class Ctry<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final ReferenceEntry<K, V> f13874do = new Cdo();

        /* renamed from: com.google.common.cache.LocalCache$try$do, reason: invalid class name */
        public class Cdo extends Cnew<K, V> {

            /* renamed from: do, reason: not valid java name */
            public ReferenceEntry<K, V> f13875do = this;

            /* renamed from: if, reason: not valid java name */
            public ReferenceEntry<K, V> f13877if = this;

            public Cdo() {
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getNextInAccessQueue() {
                return this.f13875do;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getPreviousInAccessQueue() {
                return this.f13877if;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public void setAccessTime(long j) {
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
                this.f13875do = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.Cnew, com.google.common.cache.ReferenceEntry
            public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
                this.f13877if = referenceEntry;
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$try$if, reason: invalid class name */
        public class Cif extends android.support.v4.e<ReferenceEntry<K, V>> {
            public Cif(ReferenceEntry referenceEntry) {
                super(referenceEntry);
            }

            @Override // android.support.v4.e
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public ReferenceEntry<K, V> mo1571do(ReferenceEntry<K, V> referenceEntry) {
                ReferenceEntry<K, V> nextInAccessQueue = referenceEntry.getNextInAccessQueue();
                if (nextInAccessQueue == Ctry.this.f13874do) {
                    return null;
                }
                return nextInAccessQueue;
            }
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ReferenceEntry<K, V> nextInAccessQueue = this.f13874do.getNextInAccessQueue();
            while (true) {
                ReferenceEntry<K, V> referenceEntry = this.f13874do;
                if (nextInAccessQueue == referenceEntry) {
                    referenceEntry.setNextInAccessQueue(referenceEntry);
                    ReferenceEntry<K, V> referenceEntry2 = this.f13874do;
                    referenceEntry2.setPreviousInAccessQueue(referenceEntry2);
                    return;
                } else {
                    ReferenceEntry<K, V> nextInAccessQueue2 = nextInAccessQueue.getNextInAccessQueue();
                    LocalCache.m15231abstract(nextInAccessQueue);
                    nextInAccessQueue = nextInAccessQueue2;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((ReferenceEntry) obj).getNextInAccessQueue() != Cwhile.INSTANCE;
        }

        @Override // java.util.Queue
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean offer(ReferenceEntry<K, V> referenceEntry) {
            LocalCache.m15234for(referenceEntry.getPreviousInAccessQueue(), referenceEntry.getNextInAccessQueue());
            LocalCache.m15234for(this.f13874do.getPreviousInAccessQueue(), referenceEntry);
            LocalCache.m15234for(referenceEntry, this.f13874do);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReferenceEntry<K, V> poll() {
            ReferenceEntry<K, V> nextInAccessQueue = this.f13874do.getNextInAccessQueue();
            if (nextInAccessQueue == this.f13874do) {
                return null;
            }
            remove(nextInAccessQueue);
            return nextInAccessQueue;
        }

        @Override // java.util.Queue
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> nextInAccessQueue = this.f13874do.getNextInAccessQueue();
            if (nextInAccessQueue == this.f13874do) {
                return null;
            }
            return nextInAccessQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f13874do.getNextInAccessQueue() == this.f13874do;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new Cif(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry<K, V> previousInAccessQueue = referenceEntry.getPreviousInAccessQueue();
            ReferenceEntry<K, V> nextInAccessQueue = referenceEntry.getNextInAccessQueue();
            LocalCache.m15234for(previousInAccessQueue, nextInAccessQueue);
            LocalCache.m15231abstract(referenceEntry);
            return nextInAccessQueue != Cwhile.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (ReferenceEntry<K, V> nextInAccessQueue = this.f13874do.getNextInAccessQueue(); nextInAccessQueue != this.f13874do; nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue()) {
                i++;
            }
            return i;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$volatile, reason: invalid class name */
    public static final class Cvolatile<K, V> extends Cnative<K, V> {

        /* renamed from: if, reason: not valid java name */
        public final int f13879if;

        public Cvolatile(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry, int i) {
            super(referenceQueue, v, referenceEntry);
            this.f13879if = i;
        }

        @Override // com.google.common.cache.LocalCache.Cnative, com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new Cvolatile(referenceQueue, v, referenceEntry, this.f13879if);
        }

        @Override // com.google.common.cache.LocalCache.Cnative, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.f13879if;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$while, reason: invalid class name */
    public enum Cwhile implements ReferenceEntry<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return 0L;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            return 0;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNext() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNextInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNextInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<Object, Object> getValueReference() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return 0L;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<Object, Object> valueReference) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
        }
    }

    public LocalCache(com.google.common.cache.Cif<? super K, ? super V> cif, @b51 com.google.common.cache.Cfor<? super K, V> cfor) {
        this.f13791new = Math.min(cif.m15301break(), 65536);
        Cpublic cpublicM15326super = cif.m15326super();
        this.f13784else = cpublicM15326super;
        this.f13787goto = cif.m15324static();
        this.f13798try = cif.m15311final();
        this.f13779case = cif.m15323return();
        long jM15329throw = cif.m15329throw();
        this.f13796this = jM15329throw;
        this.f13778break = (Weigher<K, V>) cif.m15327switch();
        this.f13780catch = cif.m15303catch();
        this.f13781class = cif.m15304class();
        this.f13782const = cif.m15334while();
        Cif.Cnew cnew = (RemovalListener<K, V>) cif.m15315import();
        this.f13795super = cnew;
        this.f13785final = cnew == Cif.Cnew.INSTANCE ? m15235goto() : new ConcurrentLinkedQueue<>();
        this.f13797throw = cif.m15322public(m15266transient());
        this.f13799while = Ccase.getFactory(cpublicM15326super, e(), i());
        this.f13789import = cif.m15318native().get();
        this.f13790native = cfor;
        int iMin = Math.min(cif.m15305const(), 1073741824);
        if (m15263this() && !m15244else()) {
            iMin = (int) Math.min(iMin, jM15329throw);
        }
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        int i4 = 0;
        while (i3 < this.f13791new && (!m15263this() || i3 * 20 <= this.f13796this)) {
            i4++;
            i3 <<= 1;
        }
        this.f13788if = 32 - i4;
        this.f13783do = i3 - 1;
        this.f13786for = m15247finally(i3);
        int i5 = iMin / i3;
        while (i2 < (i5 * i3 < iMin ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        if (m15263this()) {
            long j = this.f13796this;
            long j2 = i3;
            long j3 = (j / j2) + 1;
            long j4 = j % j2;
            while (true) {
                Cimport<K, V>[] cimportArr = this.f13786for;
                if (i >= cimportArr.length) {
                    return;
                }
                if (i == j4) {
                    j3--;
                }
                cimportArr[i] = m15239case(i2, j3, cif.m15318native().get());
                i++;
            }
        } else {
            while (true) {
                Cimport<K, V>[] cimportArr2 = this.f13786for;
                if (i >= cimportArr2.length) {
                    return;
                }
                cimportArr2[i] = m15239case(i2, -1L, cif.m15318native().get());
                i++;
            }
        }
    }

    public static int a(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <K, V> void m15231abstract(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry<K, V> referenceEntryM15237private = m15237private();
        referenceEntry.setNextInAccessQueue(referenceEntryM15237private);
        referenceEntry.setPreviousInAccessQueue(referenceEntryM15237private);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> c(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        s1.m16222do(arrayList, collection.iterator());
        return arrayList;
    }

    /* renamed from: continue, reason: not valid java name */
    public static <K, V> void m15232continue(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry<K, V> referenceEntryM15237private = m15237private();
        referenceEntry.setNextInWriteQueue(referenceEntryM15237private);
        referenceEntry.setPreviousInWriteQueue(referenceEntryM15237private);
    }

    public static <K, V> ValueReference<K, V> d() {
        return (ValueReference<K, V>) f13775private;
    }

    /* renamed from: for, reason: not valid java name */
    public static <K, V> void m15234for(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextInAccessQueue(referenceEntry2);
        referenceEntry2.setPreviousInAccessQueue(referenceEntry);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <E> Queue<E> m15235goto() {
        return (Queue<E>) f13770abstract;
    }

    /* renamed from: new, reason: not valid java name */
    public static <K, V> void m15236new(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextInWriteQueue(referenceEntry2);
        referenceEntry2.setPreviousInWriteQueue(referenceEntry);
    }

    /* renamed from: private, reason: not valid java name */
    public static <K, V> ReferenceEntry<K, V> m15237private() {
        return Cwhile.INSTANCE;
    }

    public Cimport<K, V> b(int i) {
        return this.f13786for[(i >>> this.f13788if) & this.f13783do];
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m15238break() {
        return m15241class() || m15240catch();
    }

    /* renamed from: case, reason: not valid java name */
    public Cimport<K, V> m15239case(int i, long j, AbstractCache.StatsCounter statsCounter) {
        return new Cimport<>(this, i, j, statsCounter);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m15240catch() {
        return this.f13780catch > 0;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m15241class() {
        return this.f13781class > 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Cimport<K, V> cimport : this.f13786for) {
            cimport.clear();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public V m15242const(K k, com.google.common.cache.Cfor<? super K, V> cfor) throws ExecutionException {
        int iM15256public = m15256public(af1.m205continue(k));
        return b(iM15256public).get(k, iM15256public, cfor);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        int iM15256public = m15256public(obj);
        return b(iM15256public).containsKey(obj, iM15256public);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        long jMo15100do = this.f13797throw.mo15100do();
        Cimport<K, V>[] cimportArr = this.f13786for;
        long j = -1;
        int i = 0;
        while (i < 3) {
            long j2 = 0;
            int length = cimportArr.length;
            int i2 = 0;
            while (i2 < length) {
                Cimport<K, V> cimport = cimportArr[i2];
                int i3 = cimport.count;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = cimport.table;
                for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                    ReferenceEntry<K, V> next = atomicReferenceArray.get(i4);
                    while (next != null) {
                        Cimport<K, V>[] cimportArr2 = cimportArr;
                        V liveValue = cimport.getLiveValue(next, jMo15100do);
                        long j3 = jMo15100do;
                        if (liveValue != null && this.f13779case.equivalent(obj, liveValue)) {
                            return true;
                        }
                        next = next.getNext();
                        cimportArr = cimportArr2;
                        jMo15100do = j3;
                    }
                }
                j2 += cimport.modCount;
                i2++;
                jMo15100do = jMo15100do;
            }
            long j4 = jMo15100do;
            Cimport<K, V>[] cimportArr3 = cimportArr;
            if (j2 == j) {
                return false;
            }
            i++;
            j = j2;
            cimportArr = cimportArr3;
            jMo15100do = j4;
        }
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public long m15243default() {
        long jMax = 0;
        for (int i = 0; i < this.f13786for.length; i++) {
            jMax += Math.max(0, r0[i].count);
        }
        return jMax;
    }

    public boolean e() {
        return f() || m15255protected();
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m15244else() {
        return this.f13778break != Cif.Ctry.INSTANCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @li0
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f13794static;
        if (set != null) {
            return set;
        }
        Cgoto cgoto = new Cgoto(this);
        this.f13794static = cgoto;
        return cgoto;
    }

    @af2
    /* renamed from: extends, reason: not valid java name */
    public ReferenceEntry<K, V> m15245extends(K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
        Cimport<K, V> cimportB = b(i);
        cimportB.lock();
        try {
            return cimportB.newEntry(k, i, referenceEntry);
        } finally {
            cimportB.unlock();
        }
    }

    public boolean f() {
        return m15240catch() || m15263this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: final, reason: not valid java name */
    public x0<K, V> m15246final(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap linkedHashMapP = Maps.p();
        LinkedHashSet linkedHashSetM15692finally = c3.m15692finally();
        int i = 0;
        int i2 = 0;
        for (K k : iterable) {
            Object obj = get(k);
            if (!linkedHashMapP.containsKey(k)) {
                linkedHashMapP.put(k, obj);
                if (obj == null) {
                    i2++;
                    linkedHashSetM15692finally.add(k);
                } else {
                    i++;
                }
            }
        }
        try {
            if (!linkedHashSetM15692finally.isEmpty()) {
                try {
                    Map mapM15265throws = m15265throws(linkedHashSetM15692finally, this.f13790native);
                    for (Object obj2 : linkedHashSetM15692finally) {
                        Object obj3 = mapM15265throws.get(obj2);
                        if (obj3 == null) {
                            throw new Cfor.C0081for("loadAll failed to return a value for " + obj2);
                        }
                        linkedHashMapP.put(obj2, obj3);
                    }
                } catch (Cfor.Ctry unused) {
                    for (Object obj4 : linkedHashSetM15692finally) {
                        i2--;
                        linkedHashMapP.put(obj4, m15242const(obj4, this.f13790native));
                    }
                }
            }
            return x0.copyOf((Map) linkedHashMapP);
        } finally {
            this.f13789import.recordHits(i);
            this.f13789import.recordMisses(i2);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public final Cimport<K, V>[] m15247finally(int i) {
        return new Cimport[i];
    }

    public boolean g() {
        return this.f13784else != Cpublic.STRONG;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @b51
    public V get(@b51 Object obj) {
        if (obj == null) {
            return null;
        }
        int iM15256public = m15256public(obj);
        return b(iM15256public).get(obj, iM15256public);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @b51
    public V getOrDefault(@b51 Object obj, @b51 V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    public boolean h() {
        return this.f13787goto != Cpublic.STRONG;
    }

    public boolean i() {
        return j() || m15249implements();
    }

    /* renamed from: if, reason: not valid java name */
    public void m15248if() {
        for (Cimport<K, V> cimport : this.f13786for) {
            cimport.cleanUp();
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public boolean m15249implements() {
        return m15241class() || m15262synchronized();
    }

    @b51
    /* renamed from: import, reason: not valid java name */
    public V m15250import(ReferenceEntry<K, V> referenceEntry, long j) {
        V v;
        if (referenceEntry.getKey() == null || (v = referenceEntry.getValueReference().get()) == null || m15258static(referenceEntry, j)) {
            return null;
        }
        return v;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m15251instanceof(K k) {
        int iM15256public = m15256public(af1.m205continue(k));
        b(iM15256public).refresh(k, iM15256public, this.f13790native, false);
    }

    /* renamed from: interface, reason: not valid java name */
    public void m15252interface(ValueReference<K, V> valueReference) {
        ReferenceEntry<K, V> entry = valueReference.getEntry();
        int hash = entry.getHash();
        b(hash).reclaimValue(entry.getKey(), hash, valueReference);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Cimport<K, V>[] cimportArr = this.f13786for;
        long j = 0;
        for (int i = 0; i < cimportArr.length; i++) {
            if (cimportArr[i].count != 0) {
                return false;
            }
            j += cimportArr[i].modCount;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < cimportArr.length; i2++) {
            if (cimportArr[i2].count != 0) {
                return false;
            }
            j -= cimportArr[i2].modCount;
        }
        return j == 0;
    }

    public boolean j() {
        return m15241class();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f13792public;
        if (set != null) {
            return set;
        }
        Ccatch ccatch = new Ccatch(this);
        this.f13792public = ccatch;
        return ccatch;
    }

    /* renamed from: native, reason: not valid java name */
    public V m15253native(K k) throws ExecutionException {
        return m15242const(k, this.f13790native);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @af2
    /* renamed from: package, reason: not valid java name */
    public ValueReference<K, V> m15254package(ReferenceEntry<K, V> referenceEntry, V v, int i) {
        return this.f13787goto.referenceValue(b(referenceEntry.getHash()), referenceEntry, af1.m205continue(v), i);
    }

    /* renamed from: protected, reason: not valid java name */
    public boolean m15255protected() {
        return m15240catch();
    }

    /* renamed from: public, reason: not valid java name */
    public int m15256public(@b51 Object obj) {
        return a(this.f13798try.hash(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        af1.m205continue(k);
        af1.m205continue(v);
        int iM15256public = m15256public(k);
        return b(iM15256public).put(k, iM15256public, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        af1.m205continue(k);
        af1.m205continue(v);
        int iM15256public = m15256public(k);
        return b(iM15256public).put(k, iM15256public, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@b51 Object obj) {
        if (obj == null) {
            return null;
        }
        int iM15256public = m15256public(obj);
        return b(iM15256public).remove(obj, iM15256public);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, @b51 V v, V v2) {
        af1.m205continue(k);
        af1.m205continue(v2);
        if (v == null) {
            return false;
        }
        int iM15256public = m15256public(k);
        return b(iM15256public).replace(k, iM15256public, v, v2);
    }

    /* renamed from: return, reason: not valid java name */
    public void m15257return(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return com.google.common.primitives.Cthis.m17704throws(m15243default());
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m15258static(ReferenceEntry<K, V> referenceEntry, long j) {
        af1.m205continue(referenceEntry);
        if (!m15240catch() || j - referenceEntry.getAccessTime() < this.f13780catch) {
            return m15241class() && j - referenceEntry.getWriteTime() >= this.f13781class;
        }
        return true;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m15259strictfp() {
        while (true) {
            vm1<K, V> vm1VarPoll = this.f13785final.poll();
            if (vm1VarPoll == null) {
                return;
            }
            try {
                this.f13795super.onRemoval(vm1VarPoll);
            } catch (Throwable th) {
                f13774package.log(Level.WARNING, "Exception thrown by removal listener", th);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: super, reason: not valid java name */
    public x0<K, V> m15260super(Iterable<?> iterable) {
        LinkedHashMap linkedHashMapP = Maps.p();
        int i = 0;
        int i2 = 0;
        for (Object obj : iterable) {
            V v = get(obj);
            if (v == null) {
                i2++;
            } else {
                linkedHashMapP.put(obj, v);
                i++;
            }
        }
        this.f13789import.recordHits(i);
        this.f13789import.recordMisses(i2);
        return x0.copyOf((Map) linkedHashMapP);
    }

    @af2
    /* renamed from: switch, reason: not valid java name */
    public boolean m15261switch(ReferenceEntry<K, V> referenceEntry, long j) {
        return b(referenceEntry.getHash()).getLiveValue(referenceEntry, j) != null;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public boolean m15262synchronized() {
        return this.f13782const > 0;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m15263this() {
        return this.f13796this >= 0;
    }

    /* renamed from: throw, reason: not valid java name */
    public ReferenceEntry<K, V> m15264throw(@b51 Object obj) {
        if (obj == null) {
            return null;
        }
        int iM15256public = m15256public(obj);
        return b(iM15256public).getEntry(obj, iM15256public);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    @b51
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<K, V> m15265throws(Set<? extends K> set, com.google.common.cache.Cfor<? super K, V> cfor) throws Throwable {
        af1.m205continue(cfor);
        af1.m205continue(set);
        com.google.common.base.Cthrows cthrowsM15209for = com.google.common.base.Cthrows.m15209for();
        boolean z = true;
        boolean z2 = false;
        try {
            try {
                try {
                    Map<? super K, V> mapLoadAll = cfor.loadAll(set);
                    if (mapLoadAll == null) {
                        this.f13789import.recordLoadException(cthrowsM15209for.m15217else(TimeUnit.NANOSECONDS));
                        throw new Cfor.C0081for(cfor + " returned null map from loadAll");
                    }
                    cthrowsM15209for.m15216class();
                    for (Map.Entry<K, V> entry : mapLoadAll.entrySet()) {
                        K key = entry.getKey();
                        V value = entry.getValue();
                        if (key == null || value == null) {
                            z2 = true;
                        } else {
                            put(key, value);
                        }
                    }
                    if (!z2) {
                        this.f13789import.recordLoadSuccess(cthrowsM15209for.m15217else(TimeUnit.NANOSECONDS));
                        return mapLoadAll;
                    }
                    this.f13789import.recordLoadException(cthrowsM15209for.m15217else(TimeUnit.NANOSECONDS));
                    throw new Cfor.C0081for(cfor + " returned null keys or values from loadAll");
                } catch (RuntimeException e) {
                    throw new ib2(e);
                } catch (Exception e2) {
                    throw new ExecutionException(e2);
                }
            } catch (Cfor.Ctry e3) {
                try {
                    throw e3;
                } catch (Throwable th) {
                    th = th;
                    if (!z) {
                        this.f13789import.recordLoadException(cthrowsM15209for.m15217else(TimeUnit.NANOSECONDS));
                    }
                    throw th;
                }
            } catch (Error e4) {
                throw new y80(e4);
            } catch (InterruptedException e5) {
                Thread.currentThread().interrupt();
                throw new ExecutionException(e5);
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
            if (!z) {
            }
            throw th;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public boolean m15266transient() {
        return m15249implements() || m15255protected();
    }

    @af2
    /* renamed from: try, reason: not valid java name */
    public ReferenceEntry<K, V> m15267try(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        return b(referenceEntry.getHash()).copyEntry(referenceEntry, referenceEntry2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f13793return;
        if (collection != null) {
            return collection;
        }
        Cfinally cfinally = new Cfinally(this);
        this.f13793return = cfinally;
        return cfinally;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m15268volatile(ReferenceEntry<K, V> referenceEntry) {
        int hash = referenceEntry.getHash();
        b(hash).reclaimKey(referenceEntry, hash);
    }

    @b51
    /* renamed from: while, reason: not valid java name */
    public V m15269while(Object obj) {
        int iM15256public = m15256public(af1.m205continue(obj));
        V v = b(iM15256public).get(obj, iM15256public);
        if (v == null) {
            this.f13789import.recordMisses(1);
        } else {
            this.f13789import.recordHits(1);
        }
        return v;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@b51 Object obj, @b51 Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iM15256public = m15256public(obj);
        return b(iM15256public).remove(obj, iM15256public, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        af1.m205continue(k);
        af1.m205continue(v);
        int iM15256public = m15256public(k);
        return b(iM15256public).replace(k, iM15256public, v);
    }

    /* renamed from: com.google.common.cache.LocalCache$import, reason: invalid class name */
    public static class Cimport<K, V> extends ReentrantLock {

        @ji0("this")
        public final Queue<ReferenceEntry<K, V>> accessQueue;
        public volatile int count;

        @b51
        public final ReferenceQueue<K> keyReferenceQueue;

        @hf2
        public final LocalCache<K, V> map;
        public final long maxSegmentWeight;
        public int modCount;
        public final AtomicInteger readCount = new AtomicInteger();
        public final Queue<ReferenceEntry<K, V>> recencyQueue;
        public final AbstractCache.StatsCounter statsCounter;

        @l01
        public volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;
        public int threshold;

        @ji0("this")
        public long totalWeight;

        @b51
        public final ReferenceQueue<V> valueReferenceQueue;

        @ji0("this")
        public final Queue<ReferenceEntry<K, V>> writeQueue;

        /* renamed from: com.google.common.cache.LocalCache$import$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Object f13824do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Cconst f13825for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f13826if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ ListenableFuture f13827new;

            public Cdo(Object obj, int i, Cconst cconst, ListenableFuture listenableFuture) {
                this.f13824do = obj;
                this.f13826if = i;
                this.f13825for = cconst;
                this.f13827new = listenableFuture;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cimport.this.getAndRecordStats(this.f13824do, this.f13826if, this.f13825for, this.f13827new);
                } catch (Throwable th) {
                    LocalCache.f13774package.log(Level.WARNING, "Exception thrown during refresh", th);
                    this.f13825for.m15271case(th);
                }
            }
        }

        public Cimport(LocalCache<K, V> localCache, int i, long j, AbstractCache.StatsCounter statsCounter) {
            this.map = localCache;
            this.maxSegmentWeight = j;
            this.statsCounter = (AbstractCache.StatsCounter) af1.m205continue(statsCounter);
            initTable(newEntryArray(i));
            this.keyReferenceQueue = localCache.g() ? new ReferenceQueue<>() : null;
            this.valueReferenceQueue = localCache.h() ? new ReferenceQueue<>() : null;
            this.recencyQueue = localCache.f() ? new ConcurrentLinkedQueue<>() : LocalCache.m15235goto();
            this.writeQueue = localCache.j() ? new Ctransient<>() : LocalCache.m15235goto();
            this.accessQueue = localCache.f() ? new Ctry<>() : LocalCache.m15235goto();
        }

        public void cleanUp() {
            runLockedCleanup(this.map.f13797throw.mo15100do());
            runUnlockedCleanup();
        }

        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    preWriteCleanup(this.map.f13797throw.mo15100do());
                    AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (ReferenceEntry<K, V> next = atomicReferenceArray.get(i); next != null; next = next.getNext()) {
                            if (next.getValueReference().isActive()) {
                                K key = next.getKey();
                                V v = next.getValueReference().get();
                                enqueueNotification(key, next.getHash(), v, next.getValueReference().getWeight(), (key == null || v == null) ? com.google.common.cache.Cgoto.COLLECTED : com.google.common.cache.Cgoto.EXPLICIT);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    clearReferenceQueues();
                    this.writeQueue.clear();
                    this.accessQueue.clear();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                    postWriteCleanup();
                }
            }
        }

        public void clearKeyReferenceQueue() {
            while (this.keyReferenceQueue.poll() != null) {
            }
        }

        public void clearReferenceQueues() {
            if (this.map.g()) {
                clearKeyReferenceQueue();
            }
            if (this.map.h()) {
                clearValueReferenceQueue();
            }
        }

        public void clearValueReferenceQueue() {
            while (this.valueReferenceQueue.poll() != null) {
            }
        }

        public boolean containsKey(Object obj, int i) {
            try {
                if (this.count == 0) {
                    return false;
                }
                ReferenceEntry<K, V> liveEntry = getLiveEntry(obj, i, this.map.f13797throw.mo15100do());
                if (liveEntry == null) {
                    return false;
                }
                return liveEntry.getValueReference().get() != null;
            } finally {
                postReadCleanup();
            }
        }

        @af2
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    long jMo15100do = this.map.f13797throw.mo15100do();
                    AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (ReferenceEntry<K, V> next = atomicReferenceArray.get(i); next != null; next = next.getNext()) {
                            V liveValue = getLiveValue(next, jMo15100do);
                            if (liveValue != null && this.map.f13779case.equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                postReadCleanup();
            }
        }

        @ji0("this")
        public ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            if (referenceEntry.getKey() == null) {
                return null;
            }
            ValueReference<K, V> valueReference = referenceEntry.getValueReference();
            V v = valueReference.get();
            if (v == null && valueReference.isActive()) {
                return null;
            }
            ReferenceEntry<K, V> referenceEntryCopyEntry = this.map.f13799while.copyEntry(this, referenceEntry, referenceEntry2);
            referenceEntryCopyEntry.setValueReference(valueReference.copyFor(this.valueReferenceQueue, v, referenceEntryCopyEntry));
            return referenceEntryCopyEntry;
        }

        @ji0("this")
        public void drainKeyReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends K> referencePoll = this.keyReferenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.m15268volatile((ReferenceEntry) referencePoll);
                i++;
            } while (i != 16);
        }

        @ji0("this")
        public void drainRecencyQueue() {
            while (true) {
                ReferenceEntry<K, V> referenceEntryPoll = this.recencyQueue.poll();
                if (referenceEntryPoll == null) {
                    return;
                }
                if (this.accessQueue.contains(referenceEntryPoll)) {
                    this.accessQueue.add(referenceEntryPoll);
                }
            }
        }

        @ji0("this")
        public void drainReferenceQueues() {
            if (this.map.g()) {
                drainKeyReferenceQueue();
            }
            if (this.map.h()) {
                drainValueReferenceQueue();
            }
        }

        @ji0("this")
        public void drainValueReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends V> referencePoll = this.valueReferenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.m15252interface((ValueReference) referencePoll);
                i++;
            } while (i != 16);
        }

        @ji0("this")
        public void enqueueNotification(@b51 K k, int i, @b51 V v, int i2, com.google.common.cache.Cgoto cgoto) {
            this.totalWeight -= i2;
            if (cgoto.wasEvicted()) {
                this.statsCounter.recordEviction();
            }
            if (this.map.f13785final != LocalCache.f13770abstract) {
                this.map.f13785final.offer(vm1.create(k, v, cgoto));
            }
        }

        @ji0("this")
        public void evictEntries(ReferenceEntry<K, V> referenceEntry) {
            if (this.map.m15263this()) {
                drainRecencyQueue();
                if (referenceEntry.getValueReference().getWeight() > this.maxSegmentWeight && !removeEntry(referenceEntry, referenceEntry.getHash(), com.google.common.cache.Cgoto.SIZE)) {
                    throw new AssertionError();
                }
                while (this.totalWeight > this.maxSegmentWeight) {
                    ReferenceEntry<K, V> nextEvictable = getNextEvictable();
                    if (!removeEntry(nextEvictable, nextEvictable.getHash(), com.google.common.cache.Cgoto.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        @ji0("this")
        public void expand() {
            AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.count;
            AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArrayNewEntryArray = newEntryArray(length << 1);
            this.threshold = (atomicReferenceArrayNewEntryArray.length() * 3) / 4;
            int length2 = atomicReferenceArrayNewEntryArray.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                ReferenceEntry<K, V> next = atomicReferenceArray.get(i2);
                if (next != null) {
                    ReferenceEntry<K, V> next2 = next.getNext();
                    int hash = next.getHash() & length2;
                    if (next2 == null) {
                        atomicReferenceArrayNewEntryArray.set(hash, next);
                    } else {
                        ReferenceEntry<K, V> referenceEntry = next;
                        while (next2 != null) {
                            int hash2 = next2.getHash() & length2;
                            if (hash2 != hash) {
                                referenceEntry = next2;
                                hash = hash2;
                            }
                            next2 = next2.getNext();
                        }
                        atomicReferenceArrayNewEntryArray.set(hash, referenceEntry);
                        while (next != referenceEntry) {
                            int hash3 = next.getHash() & length2;
                            ReferenceEntry<K, V> referenceEntryCopyEntry = copyEntry(next, atomicReferenceArrayNewEntryArray.get(hash3));
                            if (referenceEntryCopyEntry != null) {
                                atomicReferenceArrayNewEntryArray.set(hash3, referenceEntryCopyEntry);
                            } else {
                                removeCollectedEntry(next);
                                i--;
                            }
                            next = next.getNext();
                        }
                    }
                }
            }
            this.table = atomicReferenceArrayNewEntryArray;
            this.count = i;
        }

        @ji0("this")
        public void expireEntries(long j) {
            ReferenceEntry<K, V> referenceEntryPeek;
            ReferenceEntry<K, V> referenceEntryPeek2;
            drainRecencyQueue();
            do {
                referenceEntryPeek = this.writeQueue.peek();
                if (referenceEntryPeek == null || !this.map.m15258static(referenceEntryPeek, j)) {
                    do {
                        referenceEntryPeek2 = this.accessQueue.peek();
                        if (referenceEntryPeek2 == null || !this.map.m15258static(referenceEntryPeek2, j)) {
                            return;
                        }
                    } while (removeEntry(referenceEntryPeek2, referenceEntryPeek2.getHash(), com.google.common.cache.Cgoto.EXPIRED));
                    throw new AssertionError();
                }
            } while (removeEntry(referenceEntryPeek, referenceEntryPeek.getHash(), com.google.common.cache.Cgoto.EXPIRED));
            throw new AssertionError();
        }

        public V get(K k, int i, com.google.common.cache.Cfor<? super K, V> cfor) throws ExecutionException {
            ReferenceEntry<K, V> entry;
            af1.m205continue(k);
            af1.m205continue(cfor);
            try {
                try {
                    if (this.count != 0 && (entry = getEntry(k, i)) != null) {
                        long jMo15100do = this.map.f13797throw.mo15100do();
                        V liveValue = getLiveValue(entry, jMo15100do);
                        if (liveValue != null) {
                            recordRead(entry, jMo15100do);
                            this.statsCounter.recordHits(1);
                            return scheduleRefresh(entry, k, i, liveValue, jMo15100do, cfor);
                        }
                        ValueReference<K, V> valueReference = entry.getValueReference();
                        if (valueReference.isLoading()) {
                            return waitForLoadingValue(entry, k, valueReference);
                        }
                    }
                    return lockedGetOrLoad(k, i, cfor);
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause instanceof Error) {
                        throw new y80((Error) cause);
                    }
                    if (cause instanceof RuntimeException) {
                        throw new ib2(cause);
                    }
                    throw e;
                }
            } finally {
                postReadCleanup();
            }
        }

        public V getAndRecordStats(K k, int i, Cconst<K, V> cconst, ListenableFuture<V> listenableFuture) throws Throwable {
            V v;
            try {
                v = (V) m.m18259new(listenableFuture);
            } catch (Throwable th) {
                th = th;
                v = null;
            }
            try {
                if (v != null) {
                    this.statsCounter.recordLoadSuccess(cconst.m15272do());
                    storeLoadedValue(k, i, cconst, v);
                    return v;
                }
                throw new Cfor.C0081for("CacheLoader returned null for key " + k + ".");
            } catch (Throwable th2) {
                th = th2;
                if (v == null) {
                    this.statsCounter.recordLoadException(cconst.m15272do());
                    removeLoadingValue(k, i, cconst);
                }
                throw th;
            }
        }

        @b51
        public ReferenceEntry<K, V> getEntry(Object obj, int i) {
            for (ReferenceEntry<K, V> first = getFirst(i); first != null; first = first.getNext()) {
                if (first.getHash() == i) {
                    K key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.f13798try.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        public ReferenceEntry<K, V> getFirst(int i) {
            return this.table.get(i & (r0.length() - 1));
        }

        @b51
        public ReferenceEntry<K, V> getLiveEntry(Object obj, int i, long j) {
            ReferenceEntry<K, V> entry = getEntry(obj, i);
            if (entry == null) {
                return null;
            }
            if (!this.map.m15258static(entry, j)) {
                return entry;
            }
            tryExpireEntries(j);
            return null;
        }

        public V getLiveValue(ReferenceEntry<K, V> referenceEntry, long j) {
            if (referenceEntry.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = referenceEntry.getValueReference().get();
            if (v == null) {
                tryDrainReferenceQueues();
                return null;
            }
            if (!this.map.m15258static(referenceEntry, j)) {
                return v;
            }
            tryExpireEntries(j);
            return null;
        }

        @ji0("this")
        public ReferenceEntry<K, V> getNextEvictable() {
            for (ReferenceEntry<K, V> referenceEntry : this.accessQueue) {
                if (referenceEntry.getValueReference().getWeight() > 0) {
                    return referenceEntry;
                }
            }
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            if (!this.map.m15244else()) {
                int i = this.threshold;
                if (i == this.maxSegmentWeight) {
                    this.threshold = i + 1;
                }
            }
            this.table = atomicReferenceArray;
        }

        @b51
        public Cconst<K, V> insertLoadingValueReference(K k, int i, boolean z) {
            lock();
            try {
                long jMo15100do = this.map.f13797throw.mo15100do();
                preWriteCleanup(jMo15100do);
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry next = referenceEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.f13798try.equivalent(k, key)) {
                        ValueReference<K, V> valueReference = next.getValueReference();
                        if (!valueReference.isLoading() && (!z || jMo15100do - next.getWriteTime() >= this.map.f13782const)) {
                            this.modCount++;
                            Cconst<K, V> cconst = new Cconst<>(valueReference);
                            next.setValueReference(cconst);
                            return cconst;
                        }
                        return null;
                    }
                }
                this.modCount++;
                Cconst<K, V> cconst2 = new Cconst<>();
                ReferenceEntry<K, V> referenceEntryNewEntry = newEntry(k, i, referenceEntry);
                referenceEntryNewEntry.setValueReference(cconst2);
                atomicReferenceArray.set(length, referenceEntryNewEntry);
                return cconst2;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public ListenableFuture<V> loadAsync(K k, int i, Cconst<K, V> cconst, com.google.common.cache.Cfor<? super K, V> cfor) {
            ListenableFuture<V> listenableFutureM15274new = cconst.m15274new(k, cfor);
            listenableFutureM15274new.addListener(new Cdo(k, i, cconst, listenableFutureM15274new), com.google.common.util.concurrent.Cimplements.m18221for());
            return listenableFutureM15274new;
        }

        public V loadSync(K k, int i, Cconst<K, V> cconst, com.google.common.cache.Cfor<? super K, V> cfor) throws ExecutionException {
            return getAndRecordStats(k, i, cconst, cconst.m15274new(k, cfor));
        }

        public V lockedGetOrLoad(K k, int i, com.google.common.cache.Cfor<? super K, V> cfor) throws ExecutionException {
            Cconst<K, V> cconst;
            ValueReference<K, V> valueReference;
            boolean z;
            V vLoadSync;
            lock();
            try {
                long jMo15100do = this.map.f13797throw.mo15100do();
                preWriteCleanup(jMo15100do);
                int i2 = this.count - 1;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntryNewEntry = referenceEntry;
                while (true) {
                    cconst = null;
                    if (referenceEntryNewEntry == null) {
                        valueReference = null;
                        break;
                    }
                    K key = referenceEntryNewEntry.getKey();
                    if (referenceEntryNewEntry.getHash() == i && key != null && this.map.f13798try.equivalent(k, key)) {
                        ValueReference<K, V> valueReference2 = referenceEntryNewEntry.getValueReference();
                        if (valueReference2.isLoading()) {
                            z = false;
                            valueReference = valueReference2;
                        } else {
                            V v = valueReference2.get();
                            if (v == null) {
                                enqueueNotification(key, i, v, valueReference2.getWeight(), com.google.common.cache.Cgoto.COLLECTED);
                            } else {
                                if (!this.map.m15258static(referenceEntryNewEntry, jMo15100do)) {
                                    recordLockedRead(referenceEntryNewEntry, jMo15100do);
                                    this.statsCounter.recordHits(1);
                                    return v;
                                }
                                enqueueNotification(key, i, v, valueReference2.getWeight(), com.google.common.cache.Cgoto.EXPIRED);
                            }
                            this.writeQueue.remove(referenceEntryNewEntry);
                            this.accessQueue.remove(referenceEntryNewEntry);
                            this.count = i2;
                            valueReference = valueReference2;
                        }
                    } else {
                        referenceEntryNewEntry = referenceEntryNewEntry.getNext();
                    }
                }
                z = true;
                if (z) {
                    cconst = new Cconst<>();
                    if (referenceEntryNewEntry == null) {
                        referenceEntryNewEntry = newEntry(k, i, referenceEntry);
                        referenceEntryNewEntry.setValueReference(cconst);
                        atomicReferenceArray.set(length, referenceEntryNewEntry);
                    } else {
                        referenceEntryNewEntry.setValueReference(cconst);
                    }
                }
                if (!z) {
                    return waitForLoadingValue(referenceEntryNewEntry, k, valueReference);
                }
                try {
                    synchronized (referenceEntryNewEntry) {
                        vLoadSync = loadSync(k, i, cconst, cfor);
                    }
                    return vLoadSync;
                } finally {
                    this.statsCounter.recordMisses(1);
                }
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @ji0("this")
        public ReferenceEntry<K, V> newEntry(K k, int i, @b51 ReferenceEntry<K, V> referenceEntry) {
            return this.map.f13799while.newEntry(this, af1.m205continue(k), i, referenceEntry);
        }

        public AtomicReferenceArray<ReferenceEntry<K, V>> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                cleanUp();
            }
        }

        public void postWriteCleanup() {
            runUnlockedCleanup();
        }

        @ji0("this")
        public void preWriteCleanup(long j) {
            runLockedCleanup(j);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        
            return null;
         */
        @b51
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public V put(K k, int i, V v, boolean z) {
            int i2;
            lock();
            try {
                long jMo15100do = this.map.f13797throw.mo15100do();
                preWriteCleanup(jMo15100do);
                if (this.count + 1 > this.threshold) {
                    expand();
                }
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        this.modCount++;
                        ReferenceEntry<K, V> referenceEntryNewEntry = newEntry(k, i, referenceEntry);
                        setValue(referenceEntryNewEntry, k, v, jMo15100do);
                        atomicReferenceArray.set(length, referenceEntryNewEntry);
                        this.count++;
                        evictEntries(referenceEntryNewEntry);
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.f13798try.equivalent(k, key)) {
                        ValueReference<K, V> valueReference = next.getValueReference();
                        V v2 = valueReference.get();
                        if (v2 != null) {
                            if (z) {
                                recordLockedRead(next, jMo15100do);
                            } else {
                                this.modCount++;
                                enqueueNotification(k, i, v2, valueReference.getWeight(), com.google.common.cache.Cgoto.REPLACED);
                                setValue(next, k, v, jMo15100do);
                                evictEntries(next);
                            }
                            return v2;
                        }
                        this.modCount++;
                        if (valueReference.isActive()) {
                            enqueueNotification(k, i, v2, valueReference.getWeight(), com.google.common.cache.Cgoto.COLLECTED);
                            setValue(next, k, v, jMo15100do);
                            i2 = this.count;
                        } else {
                            setValue(next, k, v, jMo15100do);
                            i2 = this.count + 1;
                        }
                        this.count = i2;
                        evictEntries(next);
                    } else {
                        next = next.getNext();
                    }
                }
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public boolean reclaimKey(ReferenceEntry<K, V> referenceEntry, int i) {
            lock();
            try {
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry2 = atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> next = referenceEntry2; next != null; next = next.getNext()) {
                    if (next == referenceEntry) {
                        this.modCount++;
                        ReferenceEntry<K, V> referenceEntryRemoveValueFromChain = removeValueFromChain(referenceEntry2, next, next.getKey(), i, next.getValueReference().get(), next.getValueReference(), com.google.common.cache.Cgoto.COLLECTED);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, referenceEntryRemoveValueFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public boolean reclaimValue(K k, int i, ValueReference<K, V> valueReference) {
            lock();
            try {
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> next = referenceEntry; next != null; next = next.getNext()) {
                    K key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.f13798try.equivalent(k, key)) {
                        if (next.getValueReference() != valueReference) {
                            unlock();
                            if (!isHeldByCurrentThread()) {
                                postWriteCleanup();
                            }
                            return false;
                        }
                        this.modCount++;
                        ReferenceEntry<K, V> referenceEntryRemoveValueFromChain = removeValueFromChain(referenceEntry, next, key, i, valueReference.get(), valueReference, com.google.common.cache.Cgoto.COLLECTED);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, referenceEntryRemoveValueFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
            }
        }

        @ji0("this")
        public void recordLockedRead(ReferenceEntry<K, V> referenceEntry, long j) {
            if (this.map.m15255protected()) {
                referenceEntry.setAccessTime(j);
            }
            this.accessQueue.add(referenceEntry);
        }

        public void recordRead(ReferenceEntry<K, V> referenceEntry, long j) {
            if (this.map.m15255protected()) {
                referenceEntry.setAccessTime(j);
            }
            this.recencyQueue.add(referenceEntry);
        }

        @ji0("this")
        public void recordWrite(ReferenceEntry<K, V> referenceEntry, int i, long j) {
            drainRecencyQueue();
            this.totalWeight += i;
            if (this.map.m15255protected()) {
                referenceEntry.setAccessTime(j);
            }
            if (this.map.m15249implements()) {
                referenceEntry.setWriteTime(j);
            }
            this.accessQueue.add(referenceEntry);
            this.writeQueue.add(referenceEntry);
        }

        @b51
        public V refresh(K k, int i, com.google.common.cache.Cfor<? super K, V> cfor, boolean z) {
            Cconst<K, V> cconstInsertLoadingValueReference = insertLoadingValueReference(k, i, z);
            if (cconstInsertLoadingValueReference == null) {
                return null;
            }
            ListenableFuture<V> listenableFutureLoadAsync = loadAsync(k, i, cconstInsertLoadingValueReference, cfor);
            if (listenableFutureLoadAsync.isDone()) {
                try {
                    return (V) m.m18259new(listenableFutureLoadAsync);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        
            r9 = r5.getValueReference();
            r12 = r9.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        
            if (r12 == null) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
        
            r2 = com.google.common.cache.Cgoto.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        
            r10 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
        
            if (r9.isActive() == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        
            r2 = com.google.common.cache.Cgoto.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
        
            r11.modCount++;
            r13 = removeValueFromChain(r4, r5, r6, r13, r12, r9, r10);
            r2 = r11.count - 1;
            r0.set(r1, r13);
            r11.count = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
        
            return r12;
         */
        @b51
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup(this.map.f13797throw.mo15100do());
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.f13798try.equivalent(obj, key)) {
                        break;
                    }
                    next = next.getNext();
                }
                return null;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        @ji0("this")
        public void removeCollectedEntry(ReferenceEntry<K, V> referenceEntry) {
            enqueueNotification(referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry.getValueReference().get(), referenceEntry.getValueReference().getWeight(), com.google.common.cache.Cgoto.COLLECTED);
            this.writeQueue.remove(referenceEntry);
            this.accessQueue.remove(referenceEntry);
        }

        @af2
        @ji0("this")
        public boolean removeEntry(ReferenceEntry<K, V> referenceEntry, int i, com.google.common.cache.Cgoto cgoto) {
            AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
            int length = (atomicReferenceArray.length() - 1) & i;
            ReferenceEntry<K, V> referenceEntry2 = atomicReferenceArray.get(length);
            for (ReferenceEntry<K, V> next = referenceEntry2; next != null; next = next.getNext()) {
                if (next == referenceEntry) {
                    this.modCount++;
                    ReferenceEntry<K, V> referenceEntryRemoveValueFromChain = removeValueFromChain(referenceEntry2, next, next.getKey(), i, next.getValueReference().get(), next.getValueReference(), cgoto);
                    int i2 = this.count - 1;
                    atomicReferenceArray.set(length, referenceEntryRemoveValueFromChain);
                    this.count = i2;
                    return true;
                }
            }
            return false;
        }

        @ji0("this")
        @b51
        public ReferenceEntry<K, V> removeEntryFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            int i = this.count;
            ReferenceEntry<K, V> next = referenceEntry2.getNext();
            while (referenceEntry != referenceEntry2) {
                ReferenceEntry<K, V> referenceEntryCopyEntry = copyEntry(referenceEntry, next);
                if (referenceEntryCopyEntry != null) {
                    next = referenceEntryCopyEntry;
                } else {
                    removeCollectedEntry(referenceEntry);
                    i--;
                }
                referenceEntry = referenceEntry.getNext();
            }
            this.count = i;
            return next;
        }

        public boolean removeLoadingValue(K k, int i, Cconst<K, V> cconst) {
            lock();
            try {
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() != i || key == null || !this.map.f13798try.equivalent(k, key)) {
                        next = next.getNext();
                    } else if (next.getValueReference() == cconst) {
                        if (cconst.isActive()) {
                            next.setValueReference(cconst.m15273for());
                        } else {
                            atomicReferenceArray.set(length, removeEntryFromChain(referenceEntry, next));
                        }
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        @ji0("this")
        @b51
        public ReferenceEntry<K, V> removeValueFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2, @b51 K k, int i, V v, ValueReference<K, V> valueReference, com.google.common.cache.Cgoto cgoto) {
            enqueueNotification(k, i, v, valueReference.getWeight(), cgoto);
            this.writeQueue.remove(referenceEntry2);
            this.accessQueue.remove(referenceEntry2);
            if (!valueReference.isLoading()) {
                return removeEntryFromChain(referenceEntry, referenceEntry2);
            }
            valueReference.notifyNewValue(null);
            return referenceEntry;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                long jMo15100do = this.map.f13797throw.mo15100do();
                preWriteCleanup(jMo15100do);
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() == i && key != null) {
                        if (this.map.f13798try.equivalent(k, key)) {
                            ValueReference<K, V> valueReference = next.getValueReference();
                            V v3 = valueReference.get();
                            if (v3 == null) {
                                if (valueReference.isActive()) {
                                    this.modCount++;
                                    ReferenceEntry<K, V> referenceEntryRemoveValueFromChain = removeValueFromChain(referenceEntry, next, key, i, v3, valueReference, com.google.common.cache.Cgoto.COLLECTED);
                                    int i2 = this.count - 1;
                                    atomicReferenceArray.set(length, referenceEntryRemoveValueFromChain);
                                    this.count = i2;
                                }
                            } else {
                                if (this.map.f13779case.equivalent(v, v3)) {
                                    this.modCount++;
                                    enqueueNotification(k, i, v3, valueReference.getWeight(), com.google.common.cache.Cgoto.REPLACED);
                                    setValue(next, k, v2, jMo15100do);
                                    evictEntries(next);
                                    return true;
                                }
                                recordLockedRead(next, jMo15100do);
                            }
                        }
                    }
                    next = next.getNext();
                }
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public void runLockedCleanup(long j) {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries(j);
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public void runUnlockedCleanup() {
            if (isHeldByCurrentThread()) {
                return;
            }
            this.map.m15259strictfp();
        }

        public V scheduleRefresh(ReferenceEntry<K, V> referenceEntry, K k, int i, V v, long j, com.google.common.cache.Cfor<? super K, V> cfor) {
            V vRefresh;
            return (!this.map.m15262synchronized() || j - referenceEntry.getWriteTime() <= this.map.f13782const || referenceEntry.getValueReference().isLoading() || (vRefresh = refresh(k, i, cfor, true)) == null) ? v : vRefresh;
        }

        @ji0("this")
        public void setValue(ReferenceEntry<K, V> referenceEntry, K k, V v, long j) {
            ValueReference<K, V> valueReference = referenceEntry.getValueReference();
            int iWeigh = this.map.f13778break.weigh(k, v);
            af1.u(iWeigh >= 0, "Weights must be non-negative");
            referenceEntry.setValueReference(this.map.f13787goto.referenceValue(this, referenceEntry, v, iWeigh));
            recordWrite(referenceEntry, iWeigh, j);
            valueReference.notifyNewValue(v);
        }

        public boolean storeLoadedValue(K k, int i, Cconst<K, V> cconst, V v) {
            lock();
            try {
                long jMo15100do = this.map.f13797throw.mo15100do();
                preWriteCleanup(jMo15100do);
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                int i3 = i2;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        this.modCount++;
                        ReferenceEntry<K, V> referenceEntryNewEntry = newEntry(k, i, referenceEntry);
                        setValue(referenceEntryNewEntry, k, v, jMo15100do);
                        atomicReferenceArray.set(length, referenceEntryNewEntry);
                        this.count = i3;
                        evictEntries(referenceEntryNewEntry);
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.f13798try.equivalent(k, key)) {
                        ValueReference<K, V> valueReference = next.getValueReference();
                        V v2 = valueReference.get();
                        if (cconst != valueReference && (v2 != null || valueReference == LocalCache.f13775private)) {
                            enqueueNotification(k, i, v, 0, com.google.common.cache.Cgoto.REPLACED);
                            return false;
                        }
                        this.modCount++;
                        if (cconst.isActive()) {
                            enqueueNotification(k, i, v2, cconst.getWeight(), v2 == null ? com.google.common.cache.Cgoto.COLLECTED : com.google.common.cache.Cgoto.REPLACED);
                            i3--;
                        }
                        setValue(next, k, v, jMo15100do);
                        this.count = i3;
                        evictEntries(next);
                    } else {
                        next = next.getNext();
                    }
                }
                return true;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        public void tryExpireEntries(long j) {
            if (tryLock()) {
                try {
                    expireEntries(j);
                } finally {
                    unlock();
                }
            }
        }

        public V waitForLoadingValue(ReferenceEntry<K, V> referenceEntry, K k, ValueReference<K, V> valueReference) throws ExecutionException {
            if (!valueReference.isLoading()) {
                throw new AssertionError();
            }
            af1.K(!Thread.holdsLock(referenceEntry), "Recursive load of: %s", k);
            try {
                V vWaitForValue = valueReference.waitForValue();
                if (vWaitForValue != null) {
                    recordRead(referenceEntry, this.map.f13797throw.mo15100do());
                    return vWaitForValue;
                }
                throw new Cfor.C0081for("CacheLoader returned null for key " + k + ".");
            } finally {
                this.statsCounter.recordMisses(1);
            }
        }

        @b51
        public V get(Object obj, int i) {
            try {
                if (this.count != 0) {
                    long jMo15100do = this.map.f13797throw.mo15100do();
                    ReferenceEntry<K, V> liveEntry = getLiveEntry(obj, i, jMo15100do);
                    if (liveEntry == null) {
                        return null;
                    }
                    V v = liveEntry.getValueReference().get();
                    if (v != null) {
                        recordRead(liveEntry, jMo15100do);
                        return scheduleRefresh(liveEntry, liveEntry.getKey(), i, v, jMo15100do, this.map.f13790native);
                    }
                    tryDrainReferenceQueues();
                }
                return null;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        
            r10 = r6.getValueReference();
            r9 = r10.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
        
            if (r12.map.f13779case.equivalent(r15, r9) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
        
            r13 = com.google.common.cache.Cgoto.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
        
            if (r9 != null) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        
            if (r10.isActive() == false) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        
            r13 = com.google.common.cache.Cgoto.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
        
            r12.modCount++;
            r14 = removeValueFromChain(r5, r6, r7, r14, r9, r10, r13);
            r15 = r12.count - 1;
            r0.set(r1, r14);
            r12.count = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
        
            if (r13 != com.google.common.cache.Cgoto.EXPLICIT) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
        
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
        
            return r2;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean remove(Object obj, int i, Object obj2) {
            lock();
            try {
                preWriteCleanup(this.map.f13797throw.mo15100do());
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                boolean z = true;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.f13798try.equivalent(obj, key)) {
                        break;
                    }
                    next = next.getNext();
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
        
            return null;
         */
        @b51
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public V replace(K k, int i, V v) {
            lock();
            try {
                long jMo15100do = this.map.f13797throw.mo15100do();
                preWriteCleanup(jMo15100do);
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> next = referenceEntry;
                while (true) {
                    if (next == null) {
                        break;
                    }
                    K key = next.getKey();
                    if (next.getHash() == i && key != null) {
                        if (this.map.f13798try.equivalent(k, key)) {
                            ValueReference<K, V> valueReference = next.getValueReference();
                            V v2 = valueReference.get();
                            if (v2 == null) {
                                if (valueReference.isActive()) {
                                    this.modCount++;
                                    ReferenceEntry<K, V> referenceEntryRemoveValueFromChain = removeValueFromChain(referenceEntry, next, key, i, v2, valueReference, com.google.common.cache.Cgoto.COLLECTED);
                                    int i2 = this.count - 1;
                                    atomicReferenceArray.set(length, referenceEntryRemoveValueFromChain);
                                    this.count = i2;
                                }
                            } else {
                                this.modCount++;
                                enqueueNotification(k, i, v2, valueReference.getWeight(), com.google.common.cache.Cgoto.REPLACED);
                                setValue(next, k, v, jMo15100do);
                                evictEntries(next);
                                return v2;
                            }
                        }
                    }
                    next = next.getNext();
                }
            } finally {
                unlock();
                postWriteCleanup();
            }
        }
    }
}
