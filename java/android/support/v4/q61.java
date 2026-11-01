package android.support.v4;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.Cif;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public class q61 implements DataFetcher<InputStream>, Callback {

    /* renamed from: else, reason: not valid java name */
    private static final String f5269else = "OkHttpFetcher";

    /* renamed from: case, reason: not valid java name */
    private volatile Call f5270case;

    /* renamed from: do, reason: not valid java name */
    private final Call.Factory f5271do;

    /* renamed from: for, reason: not valid java name */
    private InputStream f5272for;

    /* renamed from: if, reason: not valid java name */
    private final Cif f5273if;

    /* renamed from: new, reason: not valid java name */
    private ResponseBody f5274new;

    /* renamed from: try, reason: not valid java name */
    private DataFetcher.DataCallback<? super InputStream> f5275try;

    public q61(Call.Factory factory, Cif cif) {
        this.f5271do = factory;
        this.f5273if = cif;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        Call call = this.f5270case;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() throws IOException {
        try {
            InputStream inputStream = this.f5272for;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException unused) {
        }
        ResponseBody responseBody = this.f5274new;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f5275try = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Cdo getDataSource() {
        return Cdo.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        Request.Builder builderUrl = new Request.Builder().url(this.f5273if.m11660case());
        for (Map.Entry<String, String> entry : this.f5273if.m11663for().entrySet()) {
            builderUrl.addHeader(entry.getKey(), entry.getValue());
        }
        Request requestBuild = builderUrl.build();
        this.f5275try = dataCallback;
        this.f5270case = this.f5271do.newCall(requestBuild);
        this.f5270case.enqueue(this);
    }

    @Override // okhttp3.Callback
    public void onFailure(@NonNull Call call, @NonNull IOException iOException) {
        Log.isLoggable(f5269else, 3);
        this.f5275try.onLoadFailed(iOException);
    }

    @Override // okhttp3.Callback
    public void onResponse(@NonNull Call call, @NonNull Response response) {
        this.f5274new = response.body();
        if (!response.isSuccessful()) {
            this.f5275try.onLoadFailed(new nk0(response.message(), response.code()));
            return;
        }
        InputStream inputStreamM12076if = com.bumptech.glide.util.Cif.m12076if(this.f5274new.byteStream(), ((ResponseBody) cf1.m900new(this.f5274new)).contentLength());
        this.f5272for = inputStreamM12076if;
        this.f5275try.onDataReady(inputStreamM12076if);
    }
}
