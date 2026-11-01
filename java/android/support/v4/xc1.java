package android.support.v4;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

@li0
@o8
/* loaded from: classes2.dex */
public final class xc1 implements FilenameFilter {

    /* renamed from: do, reason: not valid java name */
    private final Pattern f7867do;

    public xc1(String str) {
        this(Pattern.compile(str));
    }

    @Override // java.io.FilenameFilter
    public boolean accept(@b51 File file, String str) {
        return this.f7867do.matcher(str).matches();
    }

    public xc1(Pattern pattern) {
        this.f7867do = (Pattern) af1.m205continue(pattern);
    }
}
