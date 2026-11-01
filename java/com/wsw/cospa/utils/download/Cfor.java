package com.wsw.cospa.utils.download;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* renamed from: com.wsw.cospa.utils.download.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor extends ResponseBody {

    /* renamed from: do, reason: not valid java name */
    private final ResponseBody f22612do;

    /* renamed from: for, reason: not valid java name */
    private BufferedSource f22613for;

    /* renamed from: if, reason: not valid java name */
    private final ProgressResponseListener f22614if;

    /* renamed from: com.wsw.cospa.utils.download.for$do, reason: invalid class name */
    public class Cdo extends ForwardingSource {

        /* renamed from: do, reason: not valid java name */
        public long f22615do;

        public Cdo(Source source) {
            super(source);
            this.f22615do = 0L;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            long j2 = super.read(buffer, j);
            this.f22615do += j2 != -1 ? j2 : 0L;
            if (Cfor.this.f22614if != null) {
                Cfor.this.f22614if.onResponseProgress(this.f22615do, Cfor.this.f22612do.contentLength(), j2 == -1);
            }
            return j2;
        }
    }

    public Cfor(ResponseBody responseBody, ProgressResponseListener progressResponseListener) {
        this.f22612do = responseBody;
        this.f22614if = progressResponseListener;
    }

    /* renamed from: for, reason: not valid java name */
    private Source m26858for(Source source) {
        return new Cdo(source);
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.f22612do.contentLength();
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.f22612do.contentType();
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        if (this.f22613for == null) {
            this.f22613for = Okio.buffer(m26858for(this.f22612do.source()));
        }
        return this.f22613for;
    }
}
