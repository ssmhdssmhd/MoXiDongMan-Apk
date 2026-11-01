package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.support.v4.f81;
import android.support.v4.lz0;
import android.support.v4.s51;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

@RequiresApi(29)
/* renamed from: com.bumptech.glide.load.model.stream.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo<DataT> implements ModelLoader<Uri, DataT> {

    /* renamed from: do, reason: not valid java name */
    private final Context f10035do;

    /* renamed from: for, reason: not valid java name */
    private final ModelLoader<Uri, DataT> f10036for;

    /* renamed from: if, reason: not valid java name */
    private final ModelLoader<File, DataT> f10037if;

    /* renamed from: new, reason: not valid java name */
    private final Class<DataT> f10038new;

    /* renamed from: com.bumptech.glide.load.model.stream.do$do, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0035do<DataT> implements ModelLoaderFactory<Uri, DataT> {

        /* renamed from: do, reason: not valid java name */
        private final Context f10039do;

        /* renamed from: if, reason: not valid java name */
        private final Class<DataT> f10040if;

        public AbstractC0035do(Context context, Class<DataT> cls) {
            this.f10039do = context;
            this.f10040if = cls;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public final ModelLoader<Uri, DataT> build(@NonNull Cgoto cgoto) {
            return new Cdo(this.f10039do, cgoto.m11651new(File.class, this.f10040if), cgoto.m11651new(Uri.class, this.f10040if), this.f10040if);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    @RequiresApi(29)
    /* renamed from: com.bumptech.glide.load.model.stream.do$for, reason: invalid class name */
    public static final class Cfor extends AbstractC0035do<InputStream> {
        public Cfor(Context context) {
            super(context, InputStream.class);
        }
    }

    @RequiresApi(29)
    /* renamed from: com.bumptech.glide.load.model.stream.do$if, reason: invalid class name */
    public static final class Cif extends AbstractC0035do<ParcelFileDescriptor> {
        public Cif(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* renamed from: com.bumptech.glide.load.model.stream.do$new, reason: invalid class name */
    public static final class Cnew<DataT> implements DataFetcher<DataT> {

        /* renamed from: catch, reason: not valid java name */
        private static final String[] f10041catch = {"_data"};

        /* renamed from: break, reason: not valid java name */
        @Nullable
        private volatile DataFetcher<DataT> f10042break;

        /* renamed from: case, reason: not valid java name */
        private final int f10043case;

        /* renamed from: do, reason: not valid java name */
        private final Context f10044do;

        /* renamed from: else, reason: not valid java name */
        private final f81 f10045else;

        /* renamed from: for, reason: not valid java name */
        private final ModelLoader<Uri, DataT> f10046for;

        /* renamed from: goto, reason: not valid java name */
        private final Class<DataT> f10047goto;

        /* renamed from: if, reason: not valid java name */
        private final ModelLoader<File, DataT> f10048if;

        /* renamed from: new, reason: not valid java name */
        private final Uri f10049new;

        /* renamed from: this, reason: not valid java name */
        private volatile boolean f10050this;

        /* renamed from: try, reason: not valid java name */
        private final int f10051try;

        public Cnew(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Uri uri, int i, int i2, f81 f81Var, Class<DataT> cls) {
            this.f10044do = context.getApplicationContext();
            this.f10048if = modelLoader;
            this.f10046for = modelLoader2;
            this.f10049new = uri;
            this.f10051try = i;
            this.f10043case = i2;
            this.f10045else = f81Var;
            this.f10047goto = cls;
        }

        @Nullable
        /* renamed from: do, reason: not valid java name */
        private ModelLoader.Cdo<DataT> m11668do() throws FileNotFoundException {
            if (Environment.isExternalStorageLegacy()) {
                return this.f10048if.buildLoadData(m11671new(this.f10049new), this.f10051try, this.f10043case, this.f10045else);
            }
            return this.f10046for.buildLoadData(m11669for() ? MediaStore.setRequireOriginal(this.f10049new) : this.f10049new, this.f10051try, this.f10043case, this.f10045else);
        }

        /* renamed from: for, reason: not valid java name */
        private boolean m11669for() {
            return this.f10044do.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        @Nullable
        /* renamed from: if, reason: not valid java name */
        private DataFetcher<DataT> m11670if() throws FileNotFoundException {
            ModelLoader.Cdo<DataT> cdoM11668do = m11668do();
            if (cdoM11668do != null) {
                return cdoM11668do.f9976for;
            }
            return null;
        }

        @NonNull
        /* renamed from: new, reason: not valid java name */
        private File m11671new(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor cursorQuery = this.f10044do.getContentResolver().query(uri, f10041catch, null, null, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                }
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                if (!TextUtils.isEmpty(string)) {
                    File file = new File(string);
                    cursorQuery.close();
                    return file;
                }
                throw new FileNotFoundException("File path was empty in media store for: " + uri);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            this.f10050this = true;
            DataFetcher<DataT> dataFetcher = this.f10042break;
            if (dataFetcher != null) {
                dataFetcher.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            DataFetcher<DataT> dataFetcher = this.f10042break;
            if (dataFetcher != null) {
                dataFetcher.cleanup();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<DataT> getDataClass() {
            return this.f10047goto;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super DataT> dataCallback) {
            try {
                DataFetcher<DataT> dataFetcherM11670if = m11670if();
                if (dataFetcherM11670if == null) {
                    dataCallback.onLoadFailed(new IllegalArgumentException("Failed to build fetcher for: " + this.f10049new));
                    return;
                }
                this.f10042break = dataFetcherM11670if;
                if (this.f10050this) {
                    cancel();
                } else {
                    dataFetcherM11670if.loadData(ctry, dataCallback);
                }
            } catch (FileNotFoundException e) {
                dataCallback.onLoadFailed(e);
            }
        }
    }

    public Cdo(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Class<DataT> cls) {
        this.f10035do = context.getApplicationContext();
        this.f10037if = modelLoader;
        this.f10036for = modelLoader2;
        this.f10038new = cls;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<DataT> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(uri), new Cnew(this.f10035do, this.f10037if, this.f10036for, uri, i, i2, f81Var, this.f10038new));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && lz0.m4809if(uri);
    }
}
