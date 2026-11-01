package org.mozilla.javascript;

import org.mozilla.javascript.ContextFactory;

@Deprecated
/* loaded from: classes3.dex */
public interface ContextListener extends ContextFactory.Listener {
    @Deprecated
    void contextEntered(Context context);

    @Deprecated
    void contextExited(Context context);
}
