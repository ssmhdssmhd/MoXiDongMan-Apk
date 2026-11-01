package org.mozilla.intl.chardet;

/* loaded from: classes3.dex */
public interface nsICharsetDetector {
    boolean DoIt(byte[] bArr, int i, boolean z);

    void Done();

    void Init(nsICharsetDetectionObserver nsicharsetdetectionobserver);
}
