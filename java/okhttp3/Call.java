package okhttp3;

import android.support.v4.m41;
import java.io.IOException;
import kotlin.Cwhile;
import okio.Timeout;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0001\u0011J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\n\u001a\u00020\bH&J\b\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\u000bH&J\b\u0010\u000f\u001a\u00020\u000eH&J\b\u0010\u0010\u001a\u00020\u0000H&¨\u0006\u0012"}, d2 = {"Lokhttp3/Call;", "", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", SecurityConstants.FILE_EXECUTE_ACTION, "Lokhttp3/Callback;", "responseCallback", "Landroid/support/v4/ub2;", "enqueue", "cancel", "", "isExecuted", "isCanceled", "Lokio/Timeout;", "timeout", "clone", "Factory", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface Call extends Cloneable {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0006"}, d2 = {"Lokhttp3/Call$Factory;", "", "Lokhttp3/Request;", "request", "Lokhttp3/Call;", "newCall", "okhttp"}, k = 1, mv = {1, 4, 0})
    public interface Factory {
        @m41
        Call newCall(@m41 Request request);
    }

    void cancel();

    @m41
    Call clone();

    void enqueue(@m41 Callback callback);

    @m41
    Response execute() throws IOException;

    boolean isCanceled();

    boolean isExecuted();

    @m41
    Request request();

    @m41
    Timeout timeout();
}
