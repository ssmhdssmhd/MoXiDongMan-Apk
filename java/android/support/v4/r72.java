package android.support.v4;

import java.io.OutputStream;
import org.bouncycastle.crypto.tls.TlsCompression;

/* loaded from: classes3.dex */
public class r72 implements TlsCompression {
    @Override // org.bouncycastle.crypto.tls.TlsCompression
    public OutputStream compress(OutputStream outputStream) {
        return outputStream;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCompression
    public OutputStream decompress(OutputStream outputStream) {
        return outputStream;
    }
}
