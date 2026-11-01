package cc.shinichi.library.tool.file;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;

/* loaded from: classes.dex */
public class SingleMediaScanner implements MediaScannerConnection.MediaScannerConnectionClient {

    /* renamed from: do, reason: not valid java name */
    private MediaScannerConnection f8753do;

    /* renamed from: for, reason: not valid java name */
    private ScanListener f8754for;

    /* renamed from: if, reason: not valid java name */
    private String f8755if;

    public interface ScanListener {
        void onScanFinish();
    }

    public SingleMediaScanner(Context context, String str, ScanListener scanListener) {
        this.f8755if = str;
        this.f8754for = scanListener;
        MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(context, this);
        this.f8753do = mediaScannerConnection;
        mediaScannerConnection.connect();
    }

    @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
    public void onMediaScannerConnected() {
        this.f8753do.scanFile(this.f8755if, null);
    }

    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        this.f8753do.disconnect();
        ScanListener scanListener = this.f8754for;
        if (scanListener != null) {
            scanListener.onScanFinish();
        }
    }
}
