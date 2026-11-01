package okhttp3;

import android.support.v4.m41;
import android.support.v4.z41;
import kotlin.Cwhile;
import okio.ByteString;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001\u0012J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H&J\b\u0010\u0011\u001a\u00020\u0010H&¨\u0006\u0013"}, d2 = {"Lokhttp3/WebSocket;", "", "Lokhttp3/Request;", "request", "", "queueSize", "", "text", "", "send", "Lokio/ByteString;", "bytes", "", "code", "reason", "close", "Landroid/support/v4/ub2;", "cancel", "Factory", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface WebSocket {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\b"}, d2 = {"Lokhttp3/WebSocket$Factory;", "", "Lokhttp3/Request;", "request", "Lokhttp3/WebSocketListener;", "listener", "Lokhttp3/WebSocket;", "newWebSocket", "okhttp"}, k = 1, mv = {1, 4, 0})
    public interface Factory {
        @m41
        WebSocket newWebSocket(@m41 Request request, @m41 WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i, @z41 String str);

    long queueSize();

    @m41
    Request request();

    boolean send(@m41 String str);

    boolean send(@m41 ByteString byteString);
}
