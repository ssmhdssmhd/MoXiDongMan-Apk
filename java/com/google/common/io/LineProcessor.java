package com.google.common.io;

import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.IOException;

@li0
@o8
/* loaded from: classes2.dex */
public interface LineProcessor<T> {
    T getResult();

    @lf
    boolean processLine(String str) throws IOException;
}
