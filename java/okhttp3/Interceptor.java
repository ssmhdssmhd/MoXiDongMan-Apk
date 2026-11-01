package okhttp3;

import android.support.v4.m41;
import android.support.v4.z41;
import androidx.core.app.NotificationCompat;
import fi.iki.elonen.Cdo;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import okhttp3.Interceptor;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000 \u00062\u00020\u0001:\u0002\u0007\u0006J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\b"}, d2 = {"Lokhttp3/Interceptor;", "", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "Companion", "Chain", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface Interceptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&J\b\u0010\t\u001a\u00020\bH&J\b\u0010\u000b\u001a\u00020\nH&J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH&J\b\u0010\u0010\u001a\u00020\nH&J\u0018\u0010\u0011\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH&J\b\u0010\u0012\u001a\u00020\nH&J\u0018\u0010\u0013\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH&¨\u0006\u0014"}, d2 = {"Lokhttp3/Interceptor$Chain;", "", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "proceed", "Lokhttp3/Connection;", Cdo.HEADER_CONNECTION, "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "", "connectTimeoutMillis", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "withConnectTimeout", "readTimeoutMillis", "withReadTimeout", "writeTimeoutMillis", "withWriteTimeout", "okhttp"}, k = 1, mv = {1, 4, 0})
    public interface Chain {
        @m41
        Call call();

        int connectTimeoutMillis();

        @z41
        Connection connection();

        @m41
        Response proceed(@m41 Request request) throws IOException;

        int readTimeoutMillis();

        @m41
        Request request();

        @m41
        Chain withConnectTimeout(int i, @m41 TimeUnit timeUnit);

        @m41
        Chain withReadTimeout(int i, @m41 TimeUnit timeUnit);

        @m41
        Chain withWriteTimeout(int i, @m41 TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ1\u0010\n\u001a\u00020\t2#\b\u0004\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002H\u0086\nø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"Lokhttp3/Interceptor$Companion;", "", "Lkotlin/Function1;", "Lokhttp3/Interceptor$Chain;", "Landroid/support/v4/xb1;", "name", "chain", "Lokhttp3/Response;", "block", "Lokhttp3/Interceptor;", "invoke", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @m41
        public final Interceptor invoke(@m41 final Function1<? super Chain, Response> block) {
            Csuper.m30700throw(block, "block");
            return new Interceptor() { // from class: okhttp3.Interceptor$Companion$invoke$1
                @Override // okhttp3.Interceptor
                @m41
                public final Response intercept(@m41 Interceptor.Chain it) {
                    Csuper.m30700throw(it, "it");
                    return (Response) block.invoke(it);
                }
            };
        }
    }

    @m41
    Response intercept(@m41 Chain chain) throws IOException;
}
