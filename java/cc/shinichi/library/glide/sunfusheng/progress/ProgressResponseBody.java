package cc.shinichi.library.glide.sunfusheng.progress;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* loaded from: classes.dex */
public class ProgressResponseBody extends ResponseBody {

    /* renamed from: try, reason: not valid java name */
    private static final Handler f8738try = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name */
    private String f8739do;

    /* renamed from: for, reason: not valid java name */
    private ResponseBody f8740for;

    /* renamed from: if, reason: not valid java name */
    private InternalProgressListener f8741if;

    /* renamed from: new, reason: not valid java name */
    private BufferedSource f8742new;

    public interface InternalProgressListener {
        void onProgress(String str, long j, long j2);
    }

    /* renamed from: cc.shinichi.library.glide.sunfusheng.progress.ProgressResponseBody$do, reason: invalid class name */
    public class Cdo extends ForwardingSource {

        /* renamed from: do, reason: not valid java name */
        public long f8743do;

        /* renamed from: if, reason: not valid java name */
        public long f8745if;

        /* renamed from: cc.shinichi.library.glide.sunfusheng.progress.ProgressResponseBody$do$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0008do implements Runnable {
            public RunnableC0008do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                InternalProgressListener internalProgressListener = ProgressResponseBody.this.f8741if;
                String str = ProgressResponseBody.this.f8739do;
                Cdo cdo = Cdo.this;
                internalProgressListener.onProgress(str, cdo.f8743do, ProgressResponseBody.this.contentLength());
            }
        }

        public Cdo(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NonNull Buffer buffer, long j) throws IOException {
            long j2 = super.read(buffer, j);
            this.f8743do += j2 == -1 ? 0L : j2;
            if (ProgressResponseBody.this.f8741if != null) {
                long j3 = this.f8745if;
                long j4 = this.f8743do;
                if (j3 != j4) {
                    this.f8745if = j4;
                    ProgressResponseBody.f8738try.post(new RunnableC0008do());
                }
            }
            return j2;
        }
    }

    public ProgressResponseBody(String str, InternalProgressListener internalProgressListener, ResponseBody responseBody) {
        this.f8739do = str;
        this.f8741if = internalProgressListener;
        this.f8740for = responseBody;
    }

    /* renamed from: new, reason: not valid java name */
    private Source m10431new(Source source) {
        return new Cdo(source);
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.f8740for.contentLength();
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.f8740for.contentType();
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        if (this.f8742new == null) {
            this.f8742new = Okio.buffer(m10431new(this.f8740for.source()));
        }
        return this.f8742new;
    }
}
