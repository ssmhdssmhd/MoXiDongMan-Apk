package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import android.support.v4.s51;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class FileLoader<Data> implements ModelLoader<File, Data> {

    /* renamed from: if, reason: not valid java name */
    private static final String f9969if = "FileLoader";

    /* renamed from: do, reason: not valid java name */
    private final FileOpener<Data> f9970do;

    public interface FileOpener<Data> {
        void close(Data data) throws IOException;

        Class<Data> getDataClass();

        Data open(File file) throws FileNotFoundException;
    }

    /* renamed from: com.bumptech.glide.load.model.FileLoader$do, reason: invalid class name */
    public static class Cdo<Data> implements ModelLoaderFactory<File, Data> {

        /* renamed from: do, reason: not valid java name */
        private final FileOpener<Data> f9971do;

        public Cdo(FileOpener<Data> fileOpener) {
            this.f9971do = fileOpener;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public final ModelLoader<File, Data> build(@NonNull Cgoto cgoto) {
            return new FileLoader(this.f9971do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.FileLoader$for, reason: invalid class name */
    public static final class Cfor<Data> implements DataFetcher<Data> {

        /* renamed from: do, reason: not valid java name */
        private final File f9972do;

        /* renamed from: for, reason: not valid java name */
        private Data f9973for;

        /* renamed from: if, reason: not valid java name */
        private final FileOpener<Data> f9974if;

        public Cfor(File file, FileOpener<Data> fileOpener) {
            this.f9972do = file;
            this.f9974if = fileOpener;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            Data data = this.f9973for;
            if (data != null) {
                try {
                    this.f9974if.close(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> getDataClass() {
            return this.f9974if.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [Data, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data dataOpen = this.f9974if.open(this.f9972do);
                this.f9973for = dataOpen;
                dataCallback.onDataReady(dataOpen);
            } catch (FileNotFoundException e) {
                Log.isLoggable(FileLoader.f9969if, 3);
                dataCallback.onLoadFailed(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.model.FileLoader$if, reason: invalid class name */
    public static class Cif extends Cdo<ParcelFileDescriptor> {

        /* renamed from: com.bumptech.glide.load.model.FileLoader$if$do, reason: invalid class name */
        public class Cdo implements FileOpener<ParcelFileDescriptor> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public Class<ParcelFileDescriptor> getDataClass() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public ParcelFileDescriptor open(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public Cif() {
            super(new Cdo());
        }
    }

    /* renamed from: com.bumptech.glide.load.model.FileLoader$new, reason: invalid class name */
    public static class Cnew extends Cdo<InputStream> {

        /* renamed from: com.bumptech.glide.load.model.FileLoader$new$do, reason: invalid class name */
        public class Cdo implements FileOpener<InputStream> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public Class<InputStream> getDataClass() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public InputStream open(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }
        }

        public Cnew() {
            super(new Cdo());
        }
    }

    public FileLoader(FileOpener<Data> fileOpener) {
        this.f9970do = fileOpener;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull File file, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(file), new Cfor(file, this.f9970do));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull File file) {
        return true;
    }
}
