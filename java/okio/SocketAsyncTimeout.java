package okio;

import android.support.v4.m41;
import android.support.v4.z41;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0004\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0014R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lokio/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "Ljava/io/IOException;", "cause", "newTimeoutException", "Landroid/support/v4/ub2;", "timedOut", "Ljava/net/Socket;", "socket", "Ljava/net/Socket;", "<init>", "(Ljava/net/Socket;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
final class SocketAsyncTimeout extends AsyncTimeout {

    @m41
    private final Socket socket;

    public SocketAsyncTimeout(@m41 Socket socket) {
        Csuper.m30700throw(socket, "socket");
        this.socket = socket;
    }

    @Override // okio.AsyncTimeout
    @m41
    public IOException newTimeoutException(@z41 IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    public void timedOut() throws IOException {
        try {
            this.socket.close();
        } catch (AssertionError e) {
            if (!Okio.isAndroidGetsocknameError(e)) {
                throw e;
            }
            Okio__JvmOkioKt.logger.log(Level.WARNING, Csuper.m30690private("Failed to close timed out socket ", this.socket), (Throwable) e);
        } catch (Exception e2) {
            Okio__JvmOkioKt.logger.log(Level.WARNING, Csuper.m30690private("Failed to close timed out socket ", this.socket), (Throwable) e2);
        }
    }
}
