package okhttp3;

import android.support.v4.m41;
import android.support.v4.z41;
import com.umeng.analytics.pro.ak;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okio.ByteString;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0016J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0017"}, d2 = {"Lokhttp3/WebSocketListener;", "", "Lokhttp3/WebSocket;", "webSocket", "Lokhttp3/Response;", "response", "Landroid/support/v4/ub2;", "onOpen", "", "text", "onMessage", "Lokio/ByteString;", "bytes", "", "code", "reason", "onClosing", "onClosed", "", ak.aH, "onFailure", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public abstract class WebSocketListener {
    public void onClosed(@m41 WebSocket webSocket, int i, @m41 String reason) {
        Csuper.m30700throw(webSocket, "webSocket");
        Csuper.m30700throw(reason, "reason");
    }

    public void onClosing(@m41 WebSocket webSocket, int i, @m41 String reason) {
        Csuper.m30700throw(webSocket, "webSocket");
        Csuper.m30700throw(reason, "reason");
    }

    public void onFailure(@m41 WebSocket webSocket, @m41 Throwable t, @z41 Response response) {
        Csuper.m30700throw(webSocket, "webSocket");
        Csuper.m30700throw(t, "t");
    }

    public void onMessage(@m41 WebSocket webSocket, @m41 String text) {
        Csuper.m30700throw(webSocket, "webSocket");
        Csuper.m30700throw(text, "text");
    }

    public void onMessage(@m41 WebSocket webSocket, @m41 ByteString bytes) {
        Csuper.m30700throw(webSocket, "webSocket");
        Csuper.m30700throw(bytes, "bytes");
    }

    public void onOpen(@m41 WebSocket webSocket, @m41 Response response) {
        Csuper.m30700throw(webSocket, "webSocket");
        Csuper.m30700throw(response, "response");
    }
}
