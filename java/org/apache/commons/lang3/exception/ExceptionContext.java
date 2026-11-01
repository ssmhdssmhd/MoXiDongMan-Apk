package org.apache.commons.lang3.exception;

import android.support.v4.pb1;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public interface ExceptionContext {
    ExceptionContext addContextValue(String str, Object obj);

    List<pb1<String, Object>> getContextEntries();

    Set<String> getContextLabels();

    List<Object> getContextValues(String str);

    Object getFirstContextValue(String str);

    String getFormattedExceptionMessage(String str);

    ExceptionContext setContextValue(String str, Object obj);
}
