package com.bumptech.glide.load.model;

import android.support.v4.f81;
import android.support.v4.s51;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class DataUrlLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: for, reason: not valid java name */
    private static final String f9961for = ";base64";

    /* renamed from: if, reason: not valid java name */
    private static final String f9962if = "data:image";

    /* renamed from: do, reason: not valid java name */
    private final DataDecoder<Data> f9963do;

    public interface DataDecoder<Data> {
        void close(Data data) throws IOException;

        Data decode(String str) throws IllegalArgumentException;

        Class<Data> getDataClass();
    }

    /* renamed from: com.bumptech.glide.load.model.DataUrlLoader$do, reason: invalid class name */
    public static final class Cdo<Data> implements DataFetcher<Data> {

        /* renamed from: do, reason: not valid java name */
        private final String f9964do;

        /* renamed from: for, reason: not valid java name */
        private Data f9965for;

        /* renamed from: if, reason: not valid java name */
        private final DataDecoder<Data> f9966if;

        public Cdo(String str, DataDecoder<Data> dataDecoder) {
            this.f9964do = str;
            this.f9966if = dataDecoder;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            try {
                this.f9966if.close(this.f9965for);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> getDataClass() {
            return this.f9966if.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [Data, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data dataDecode = this.f9966if.decode(this.f9964do);
                this.f9965for = dataDecode;
                dataCallback.onDataReady(dataDecode);
            } catch (IllegalArgumentException e) {
                dataCallback.onLoadFailed(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.model.DataUrlLoader$if, reason: invalid class name */
    public static final class Cif<Model> implements ModelLoaderFactory<Model, InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final DataDecoder<InputStream> f9967do = new Cdo();

        /* renamed from: com.bumptech.glide.load.model.DataUrlLoader$if$do, reason: invalid class name */
        public class Cdo implements DataDecoder<InputStream> {
            public Cdo() {
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public Class<InputStream> getDataClass() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public InputStream decode(String str) {
                if (!str.startsWith(DataUrlLoader.f9962if)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, iIndexOf).endsWith(DataUrlLoader.f9961for)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Model, InputStream> build(@NonNull Cgoto cgoto) {
            return new DataUrlLoader(this.f9967do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public DataUrlLoader(DataDecoder<Data> dataDecoder) {
        this.f9963do = dataDecoder;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull Model model, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(model), new Cdo(model.toString(), this.f9963do));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NonNull Model model) {
        return model.toString().startsWith(f9962if);
    }
}
