package org.chromium.base.compat;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.input.InputManager;
import android.net.Uri;
import android.os.storage.StorageManager;
import android.support.v4.re2;
import android.view.Display;
import android.view.InputEvent;
import android.view.VerifiedInputEvent;
import java.io.File;

@re2
@TargetApi(30)
/* renamed from: org.chromium.base.compat.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew {
    private Cnew() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Display m37057do(Context context) throws UnsupportedOperationException {
        return context.getDisplay();
    }

    /* renamed from: for, reason: not valid java name */
    public static VerifiedInputEvent m37058for(InputManager inputManager, InputEvent inputEvent) {
        return inputManager.verifyInputEvent(inputEvent);
    }

    /* renamed from: if, reason: not valid java name */
    public static File m37059if(StorageManager storageManager, Uri uri) {
        return storageManager.getStorageVolume(uri).getDirectory();
    }
}
