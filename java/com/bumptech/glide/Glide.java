package com.bumptech.glide;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.v4.a30;
import android.support.v4.am0;
import android.support.v4.bd2;
import android.support.v4.c9;
import android.support.v4.cf1;
import android.support.v4.dn1;
import android.support.v4.e9;
import android.support.v4.eh0;
import android.support.v4.fh0;
import android.support.v4.g9;
import android.support.v4.gx0;
import android.support.v4.i9;
import android.support.v4.jz0;
import android.support.v4.mz0;
import android.support.v4.na0;
import android.support.v4.ok0;
import android.support.v4.rk0;
import android.support.v4.ud;
import android.support.v4.v12;
import android.support.v4.vd;
import android.util.Log;
import android.view.View;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.Cbreak;
import com.bumptech.glide.load.data.Cgoto;
import com.bumptech.glide.load.engine.Celse;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.Cif;
import com.bumptech.glide.load.engine.prefill.Cnew;
import com.bumptech.glide.load.model.AssetUriLoader;
import com.bumptech.glide.load.model.ByteArrayLoader;
import com.bumptech.glide.load.model.Cbreak;
import com.bumptech.glide.load.model.Ccatch;
import com.bumptech.glide.load.model.Cclass;
import com.bumptech.glide.load.model.Cdo;
import com.bumptech.glide.load.model.Cnew;
import com.bumptech.glide.load.model.Cthis;
import com.bumptech.glide.load.model.DataUrlLoader;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.UriLoader;
import com.bumptech.glide.load.model.stream.Cdo;
import com.bumptech.glide.load.resource.bitmap.Cclass;
import com.bumptech.glide.load.resource.bitmap.Cconst;
import com.bumptech.glide.load.resource.bitmap.Cfinal;
import com.bumptech.glide.load.resource.bitmap.Cfor;
import com.bumptech.glide.load.resource.bitmap.Cgoto;
import com.bumptech.glide.load.resource.bitmap.Cnew;
import com.bumptech.glide.load.resource.bitmap.Cthis;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.gif.Cdo;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Ccase;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class Glide implements ComponentCallbacks2 {

    /* renamed from: const, reason: not valid java name */
    private static final String f9241const = "image_manager_disk_cache";

    /* renamed from: final, reason: not valid java name */
    private static final String f9242final = "Glide";

    /* renamed from: super, reason: not valid java name */
    private static volatile Glide f9243super;

    /* renamed from: throw, reason: not valid java name */
    private static volatile boolean f9244throw;

    /* renamed from: break, reason: not valid java name */
    private final RequestOptionsFactory f9245break;

    /* renamed from: case, reason: not valid java name */
    private final ArrayPool f9246case;

    /* renamed from: class, reason: not valid java name */
    @Nullable
    @GuardedBy("this")
    private Cif f9248class;

    /* renamed from: do, reason: not valid java name */
    private final Celse f9249do;

    /* renamed from: else, reason: not valid java name */
    private final RequestManagerRetriever f9250else;

    /* renamed from: for, reason: not valid java name */
    private final MemoryCache f9251for;

    /* renamed from: goto, reason: not valid java name */
    private final ConnectivityMonitorFactory f9252goto;

    /* renamed from: if, reason: not valid java name */
    private final BitmapPool f9253if;

    /* renamed from: new, reason: not valid java name */
    private final Cfor f9254new;

    /* renamed from: try, reason: not valid java name */
    private final Ccase f9256try;

    /* renamed from: this, reason: not valid java name */
    private final List<Cgoto> f9255this = new ArrayList();

    /* renamed from: catch, reason: not valid java name */
    private Cnew f9247catch = Cnew.NORMAL;

    public interface RequestOptionsFactory {
        @NonNull
        dn1 build();
    }

    public Glide(@NonNull Context context, @NonNull Celse celse, @NonNull MemoryCache memoryCache, @NonNull BitmapPool bitmapPool, @NonNull ArrayPool arrayPool, @NonNull RequestManagerRetriever requestManagerRetriever, @NonNull ConnectivityMonitorFactory connectivityMonitorFactory, int i, @NonNull RequestOptionsFactory requestOptionsFactory, @NonNull Map<Class<?>, Cthis<?, ?>> map, @NonNull List<RequestListener<Object>> list, boolean z, boolean z2) {
        ResourceDecoder cfor;
        ResourceDecoder cconst;
        this.f9249do = celse;
        this.f9253if = bitmapPool;
        this.f9246case = arrayPool;
        this.f9251for = memoryCache;
        this.f9250else = requestManagerRetriever;
        this.f9252goto = connectivityMonitorFactory;
        this.f9245break = requestOptionsFactory;
        Resources resources = context.getResources();
        Ccase ccase = new Ccase();
        this.f9256try = ccase;
        ccase.m11087public(new DefaultImageHeaderParser());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            ccase.m11087public(new Cgoto());
        }
        List<ImageHeaderParser> listM11078else = ccase.m11078else();
        Cdo cdo = new Cdo(context, listM11078else, bitmapPool, arrayPool);
        ResourceDecoder<ParcelFileDescriptor, Bitmap> resourceDecoderM11741case = VideoDecoder.m11741case(bitmapPool);
        Downsampler downsampler = new Downsampler(ccase.m11078else(), resources.getDisplayMetrics(), bitmapPool, arrayPool);
        if (!z2 || i2 < 28) {
            cfor = new Cfor(downsampler);
            cconst = new Cconst(downsampler, arrayPool);
        } else {
            cconst = new Cthis();
            cfor = new Cnew();
        }
        com.bumptech.glide.load.resource.drawable.Cif cif = new com.bumptech.glide.load.resource.drawable.Cif(context);
        Cthis.Cfor cfor2 = new Cthis.Cfor(resources);
        Cthis.Cnew cnew = new Cthis.Cnew(resources);
        Cthis.Cif cif2 = new Cthis.Cif(resources);
        Cthis.Cdo cdo2 = new Cthis.Cdo(resources);
        i9 i9Var = new i9(arrayPool);
        c9 c9Var = new c9();
        eh0 eh0Var = new eh0();
        ContentResolver contentResolver = context.getContentResolver();
        ccase.m11077do(ByteBuffer.class, new ud()).m11077do(InputStream.class, new v12(arrayPool)).m11095try(Ccase.f9272class, ByteBuffer.class, Bitmap.class, cfor).m11095try(Ccase.f9272class, InputStream.class, Bitmap.class, cconst);
        if (Cbreak.m11271do()) {
            ccase.m11095try(Ccase.f9272class, ParcelFileDescriptor.class, Bitmap.class, new com.bumptech.glide.load.resource.bitmap.Cbreak(downsampler));
        }
        ccase.m11095try(Ccase.f9272class, ParcelFileDescriptor.class, Bitmap.class, resourceDecoderM11741case).m11095try(Ccase.f9272class, AssetFileDescriptor.class, Bitmap.class, VideoDecoder.m11742do(bitmapPool)).m11086new(Bitmap.class, Bitmap.class, Ccatch.Cdo.m11626do()).m11095try(Ccase.f9272class, Bitmap.class, Bitmap.class, new Cfinal()).m11083if(Bitmap.class, i9Var).m11095try(Ccase.f9273const, ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.Cdo(resources, cfor)).m11095try(Ccase.f9273const, InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.Cdo(resources, cconst)).m11095try(Ccase.f9273const, ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.Cdo(resources, resourceDecoderM11741case)).m11083if(BitmapDrawable.class, new e9(bitmapPool, i9Var)).m11095try(Ccase.f9271catch, InputStream.class, GifDrawable.class, new com.bumptech.glide.load.resource.gif.Cfor(listM11078else, cdo, arrayPool)).m11095try(Ccase.f9271catch, ByteBuffer.class, GifDrawable.class, cdo).m11083if(GifDrawable.class, new fh0()).m11086new(GifDecoder.class, GifDecoder.class, Ccatch.Cdo.m11626do()).m11095try(Ccase.f9272class, GifDecoder.class, Bitmap.class, new com.bumptech.glide.load.resource.gif.Cif(bitmapPool)).m11081for(Uri.class, Drawable.class, cif).m11081for(Uri.class, Bitmap.class, new Cclass(cif, bitmapPool)).m11088return(new vd.Cdo()).m11086new(File.class, ByteBuffer.class, new Cdo.Cif()).m11086new(File.class, InputStream.class, new FileLoader.Cnew()).m11081for(File.class, File.class, new na0()).m11086new(File.class, ParcelFileDescriptor.class, new FileLoader.Cif()).m11086new(File.class, File.class, Ccatch.Cdo.m11626do()).m11088return(new Cgoto.Cdo(arrayPool));
        if (Cbreak.m11271do()) {
            ccase.m11088return(new Cbreak.Cdo());
        }
        Class cls = Integer.TYPE;
        ccase.m11086new(cls, InputStream.class, cfor2).m11086new(cls, ParcelFileDescriptor.class, cif2).m11086new(Integer.class, InputStream.class, cfor2).m11086new(Integer.class, ParcelFileDescriptor.class, cif2).m11086new(Integer.class, Uri.class, cnew).m11086new(cls, AssetFileDescriptor.class, cdo2).m11086new(Integer.class, AssetFileDescriptor.class, cdo2).m11086new(cls, Uri.class, cnew).m11086new(String.class, InputStream.class, new DataUrlLoader.Cif()).m11086new(Uri.class, InputStream.class, new DataUrlLoader.Cif()).m11086new(String.class, InputStream.class, new Cbreak.Cfor()).m11086new(String.class, ParcelFileDescriptor.class, new Cbreak.Cif()).m11086new(String.class, AssetFileDescriptor.class, new Cbreak.Cdo()).m11086new(Uri.class, InputStream.class, new rk0.Cdo()).m11086new(Uri.class, InputStream.class, new AssetUriLoader.Cif(context.getAssets())).m11086new(Uri.class, ParcelFileDescriptor.class, new AssetUriLoader.Cdo(context.getAssets())).m11086new(Uri.class, InputStream.class, new jz0.Cdo(context)).m11086new(Uri.class, InputStream.class, new mz0.Cdo(context));
        if (i2 >= 29) {
            ccase.m11086new(Uri.class, InputStream.class, new Cdo.Cfor(context));
            ccase.m11086new(Uri.class, ParcelFileDescriptor.class, new Cdo.Cif(context));
        }
        ccase.m11086new(Uri.class, InputStream.class, new UriLoader.Cfor(contentResolver)).m11086new(Uri.class, ParcelFileDescriptor.class, new UriLoader.Cif(contentResolver)).m11086new(Uri.class, AssetFileDescriptor.class, new UriLoader.Cdo(contentResolver)).m11086new(Uri.class, InputStream.class, new Cclass.Cdo()).m11086new(URL.class, InputStream.class, new bd2.Cdo()).m11086new(Uri.class, File.class, new Cnew.Cdo(context)).m11086new(com.bumptech.glide.load.model.Cif.class, InputStream.class, new ok0.Cdo()).m11086new(byte[].class, ByteBuffer.class, new ByteArrayLoader.Cdo()).m11086new(byte[].class, InputStream.class, new ByteArrayLoader.Cfor()).m11086new(Uri.class, Uri.class, Ccatch.Cdo.m11626do()).m11086new(Drawable.class, Drawable.class, Ccatch.Cdo.m11626do()).m11081for(Drawable.class, Drawable.class, new com.bumptech.glide.load.resource.drawable.Cfor()).m11094throws(Bitmap.class, BitmapDrawable.class, new g9(resources)).m11094throws(Bitmap.class, byte[].class, c9Var).m11094throws(Drawable.class, byte[].class, new a30(bitmapPool, c9Var, eh0Var)).m11094throws(GifDrawable.class, byte[].class, eh0Var);
        if (i2 >= 23) {
            ResourceDecoder<ByteBuffer, Bitmap> resourceDecoderM11744if = VideoDecoder.m11744if(bitmapPool);
            ccase.m11081for(ByteBuffer.class, Bitmap.class, resourceDecoderM11744if);
            ccase.m11081for(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.Cdo(resources, resourceDecoderM11744if));
        }
        this.f9254new = new Cfor(context, arrayPool, ccase, new am0(), requestOptionsFactory, map, list, celse, z, i);
    }

    @NonNull
    /* renamed from: abstract, reason: not valid java name */
    public static Cgoto m11032abstract(@NonNull Context context) {
        return m11044super(context).m11863catch(context);
    }

    @Nullable
    /* renamed from: catch, reason: not valid java name */
    public static File m11033catch(@NonNull Context context) {
        return m11034class(context, "image_manager_disk_cache");
    }

    @Nullable
    /* renamed from: class, reason: not valid java name */
    public static File m11034class(@NonNull Context context, @NonNull String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            Log.isLoggable(f9242final, 6);
            return null;
        }
        File file = new File(cacheDir, str);
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    @NonNull
    /* renamed from: continue, reason: not valid java name */
    public static Cgoto m11035continue(@NonNull View view) {
        return m11044super(view.getContext()).m11864class(view);
    }

    /* renamed from: default, reason: not valid java name */
    private static void m11036default(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @GuardedBy("Glide.class")
    /* renamed from: do, reason: not valid java name */
    private static void m11037do(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (f9244throw) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f9244throw = true;
        m11038import(context, generatedAppGlideModule);
        f9244throw = false;
    }

    @GuardedBy("Glide.class")
    /* renamed from: import, reason: not valid java name */
    private static void m11038import(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        m11039native(context, new Cif(), generatedAppGlideModule);
    }

    @GuardedBy("Glide.class")
    /* renamed from: native, reason: not valid java name */
    private static void m11039native(@NonNull Context context, @NonNull Cif cif, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<GlideModule> listEmptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.mo11030do()) {
            listEmptyList = new gx0(applicationContext).m2823do();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.mo11029if().isEmpty()) {
            Set<Class<?>> setMo11029if = generatedAppGlideModule.mo11029if();
            Iterator<GlideModule> it = listEmptyList.iterator();
            while (it.hasNext()) {
                GlideModule next = it.next();
                if (setMo11029if.contains(next.getClass())) {
                    if (Log.isLoggable(f9242final, 3)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("AppGlideModule excludes manifest GlideModule: ");
                        sb.append(next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable(f9242final, 3)) {
            for (GlideModule glideModule : listEmptyList) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Discovered GlideModule from manifest: ");
                sb2.append(glideModule.getClass());
            }
        }
        cif.m11241public(generatedAppGlideModule != null ? generatedAppGlideModule.mo11028for() : null);
        Iterator<GlideModule> it2 = listEmptyList.iterator();
        while (it2.hasNext()) {
            it2.next().applyOptions(applicationContext, cif);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.applyOptions(applicationContext, cif);
        }
        Glide glideM11237if = cif.m11237if(applicationContext);
        for (GlideModule glideModule2 : listEmptyList) {
            try {
                glideModule2.registerComponents(applicationContext, glideM11237if, glideM11237if.f9256try);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + glideModule2.getClass().getName(), e);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.registerComponents(applicationContext, glideM11237if, glideM11237if.f9256try);
        }
        applicationContext.registerComponentCallbacks(glideM11237if);
        f9243super = glideM11237if;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static Glide m11040new(@NonNull Context context) {
        if (f9243super == null) {
            GeneratedAppGlideModule generatedAppGlideModuleM11047try = m11047try(context.getApplicationContext());
            synchronized (Glide.class) {
                if (f9243super == null) {
                    m11037do(context, generatedAppGlideModuleM11047try);
                }
            }
        }
        return f9243super;
    }

    @NonNull
    /* renamed from: package, reason: not valid java name */
    public static Cgoto m11041package(@NonNull Activity activity) {
        return m11044super(activity).m11868this(activity);
    }

    @NonNull
    @Deprecated
    /* renamed from: private, reason: not valid java name */
    public static Cgoto m11042private(@NonNull Fragment fragment) {
        return m11044super(fragment.getActivity()).m11862break(fragment);
    }

    @NonNull
    /* renamed from: strictfp, reason: not valid java name */
    public static Cgoto m11043strictfp(@NonNull androidx.fragment.app.Fragment fragment) {
        return m11044super(fragment.getContext()).m11865const(fragment);
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    private static RequestManagerRetriever m11044super(@Nullable Context context) {
        cf1.m901try(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m11040new(context).m11055final();
    }

    @VisibleForTesting
    /* renamed from: throw, reason: not valid java name */
    public static void m11045throw(@NonNull Context context, @NonNull Cif cif) {
        GeneratedAppGlideModule generatedAppGlideModuleM11047try = m11047try(context);
        synchronized (Glide.class) {
            if (f9243super != null) {
                m11046throws();
            }
            m11039native(context, cif, generatedAppGlideModuleM11047try);
        }
    }

    @VisibleForTesting
    /* renamed from: throws, reason: not valid java name */
    public static synchronized void m11046throws() {
        if (f9243super != null) {
            f9243super.m11064this().getApplicationContext().unregisterComponentCallbacks(f9243super);
            f9243super.f9249do.m11482this();
        }
        f9243super = null;
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    private static GeneratedAppGlideModule m11047try(Context context) {
        try {
            return (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            Log.isLoggable(f9242final, 5);
            return null;
        } catch (IllegalAccessException e) {
            m11036default(e);
            return null;
        } catch (InstantiationException e2) {
            m11036default(e2);
            return null;
        } catch (NoSuchMethodException e3) {
            m11036default(e3);
            return null;
        } catch (InvocationTargetException e4) {
            m11036default(e4);
            return null;
        }
    }

    @NonNull
    /* renamed from: volatile, reason: not valid java name */
    public static Cgoto m11048volatile(@NonNull FragmentActivity fragmentActivity) {
        return m11044super(fragmentActivity).m11866final(fragmentActivity);
    }

    @VisibleForTesting
    @Deprecated
    /* renamed from: while, reason: not valid java name */
    public static synchronized void m11049while(Glide glide) {
        if (f9243super != null) {
            m11046throws();
        }
        f9243super = glide;
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public Cfor m11050break() {
        return this.f9254new;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public ArrayPool m11051case() {
        return this.f9246case;
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    public Ccase m11052const() {
        return this.f9256try;
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public BitmapPool m11053else() {
        return this.f9253if;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m11054extends(int i) {
        Ccase.m12048if();
        Iterator<Cgoto> it = this.f9255this.iterator();
        while (it.hasNext()) {
            it.next().onTrimMemory(i);
        }
        this.f9251for.trimMemory(i);
        this.f9253if.trimMemory(i);
        this.f9246case.trimMemory(i);
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public RequestManagerRetriever m11055final() {
        return this.f9250else;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m11056finally(Cgoto cgoto) {
        synchronized (this.f9255this) {
            if (!this.f9255this.contains(cgoto)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f9255this.remove(cgoto);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m11057for() {
        Ccase.m12048if();
        this.f9251for.clearMemory();
        this.f9253if.clearMemory();
        this.f9246case.clearMemory();
    }

    /* renamed from: goto, reason: not valid java name */
    public ConnectivityMonitorFactory m11058goto() {
        return this.f9252goto;
    }

    /* renamed from: if, reason: not valid java name */
    public void m11059if() {
        Ccase.m12043do();
        this.f9249do.m11479do();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m11057for();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        m11054extends(i);
    }

    /* renamed from: public, reason: not valid java name */
    public synchronized void m11060public(@NonNull Cnew.Cdo... cdoArr) {
        if (this.f9248class == null) {
            this.f9248class = new Cif(this.f9251for, this.f9253if, (com.bumptech.glide.load.Cif) this.f9245break.build().m11936package().m2196do(Downsampler.f10098else));
        }
        this.f9248class.m11556for(cdoArr);
    }

    /* renamed from: return, reason: not valid java name */
    public void m11061return(Cgoto cgoto) {
        synchronized (this.f9255this) {
            if (this.f9255this.contains(cgoto)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f9255this.add(cgoto);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m11062static(@NonNull Target<?> target) {
        synchronized (this.f9255this) {
            Iterator<Cgoto> it = this.f9255this.iterator();
            while (it.hasNext()) {
                if (it.next().m11222protected(target)) {
                    return true;
                }
            }
            return false;
        }
    }

    @NonNull
    /* renamed from: switch, reason: not valid java name */
    public Cnew m11063switch(@NonNull Cnew cnew) {
        Ccase.m12048if();
        this.f9251for.setSizeMultiplier(cnew.getMultiplier());
        this.f9253if.setSizeMultiplier(cnew.getMultiplier());
        Cnew cnew2 = this.f9247catch;
        this.f9247catch = cnew;
        return cnew2;
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public Context m11064this() {
        return this.f9254new.getBaseContext();
    }
}
