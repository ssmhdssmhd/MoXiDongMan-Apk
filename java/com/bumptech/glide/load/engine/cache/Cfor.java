package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.Cdo;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.engine.cache.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor implements DiskCache {

    /* renamed from: case, reason: not valid java name */
    private static final String f9709case = "DiskLruCacheWrapper";

    /* renamed from: else, reason: not valid java name */
    private static final int f9710else = 1;

    /* renamed from: goto, reason: not valid java name */
    private static final int f9711goto = 1;

    /* renamed from: this, reason: not valid java name */
    private static Cfor f9712this;

    /* renamed from: for, reason: not valid java name */
    private final long f9714for;

    /* renamed from: if, reason: not valid java name */
    private final File f9715if;

    /* renamed from: try, reason: not valid java name */
    private Cdo f9717try;

    /* renamed from: new, reason: not valid java name */
    private final Cif f9716new = new Cif();

    /* renamed from: do, reason: not valid java name */
    private final Cthis f9713do = new Cthis();

    @Deprecated
    public Cfor(File file, long j) {
        this.f9715if = file;
        this.f9714for = j;
    }

    /* renamed from: do, reason: not valid java name */
    public static DiskCache m11443do(File file, long j) {
        return new Cfor(file, j);
    }

    /* renamed from: for, reason: not valid java name */
    private synchronized Cdo m11444for() throws IOException {
        if (this.f9717try == null) {
            this.f9717try = Cdo.m11118throws(this.f9715if, 1, 1, this.f9714for);
        }
        return this.f9717try;
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static synchronized DiskCache m11445if(File file, long j) {
        if (f9712this == null) {
            f9712this = new Cfor(file, j);
        }
        return f9712this;
    }

    /* renamed from: new, reason: not valid java name */
    private synchronized void m11446new() {
        this.f9717try = null;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public synchronized void clear() {
        try {
            try {
                m11444for().m11123final();
            } catch (IOException unused) {
                Log.isLoggable(f9709case, 5);
            }
        } finally {
            m11446new();
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void delete(Key key) {
        try {
            m11444for().m11125private(this.f9713do.m11452if(key));
        } catch (IOException unused) {
            Log.isLoggable(f9709case, 5);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public File get(Key key) {
        String strM11452if = this.f9713do.m11452if(key);
        if (Log.isLoggable(f9709case, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Get: Obtained: ");
            sb.append(strM11452if);
            sb.append(" for for Key: ");
            sb.append(key);
        }
        try {
            Cdo.Ctry ctryM11124native = m11444for().m11124native(strM11452if);
            if (ctryM11124native != null) {
                return ctryM11124native.m11156if(0);
            }
            return null;
        } catch (IOException unused) {
            Log.isLoggable(f9709case, 5);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void put(Key key, DiskCache.Writer writer) {
        Cdo cdoM11444for;
        String strM11452if = this.f9713do.m11452if(key);
        this.f9716new.m11447do(strM11452if);
        try {
            if (Log.isLoggable(f9709case, 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Put: Obtained: ");
                sb.append(strM11452if);
                sb.append(" for for Key: ");
                sb.append(key);
            }
            try {
                cdoM11444for = m11444for();
            } catch (IOException unused) {
                Log.isLoggable(f9709case, 5);
            }
            if (cdoM11444for.m11124native(strM11452if) != null) {
                return;
            }
            Cdo.Cfor cforM11129throw = cdoM11444for.m11129throw(strM11452if);
            if (cforM11129throw == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + strM11452if);
            }
            try {
                if (writer.write(cforM11129throw.m11134case(0))) {
                    cforM11129throw.m11139try();
                }
                cforM11129throw.m11137if();
            } catch (Throwable th) {
                cforM11129throw.m11137if();
                throw th;
            }
        } finally {
            this.f9716new.m11448if(strM11452if);
        }
    }
}
