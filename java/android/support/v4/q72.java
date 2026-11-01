package android.support.v4;

import java.io.EOFException;

/* loaded from: classes3.dex */
public class q72 extends EOFException {
    public q72() {
        super("No close_notify alert received before connection closed");
    }
}
