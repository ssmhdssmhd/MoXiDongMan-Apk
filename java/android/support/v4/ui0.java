package android.support.v4;

import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* loaded from: classes2.dex */
public class ui0 extends URLStreamHandler {

    /* renamed from: do, reason: not valid java name */
    public static final URLStreamHandler f6896do = new ui0();

    @Override // java.net.URLStreamHandler
    public int getDefaultPort() {
        return 80;
    }

    @Override // java.net.URLStreamHandler
    public URLConnection openConnection(URL url) {
        return null;
    }

    @Override // java.net.URLStreamHandler
    public void parseURL(URL url, String str, int i, int i2) {
        super.parseURL(url, str, i, i2);
    }
}
