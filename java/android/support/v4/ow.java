package android.support.v4;

import com.bumptech.glide.load.Key;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class ow implements Key {

    /* renamed from: do, reason: not valid java name */
    private final Key f4777do;

    /* renamed from: if, reason: not valid java name */
    private final Key f4778if;

    public ow(Key key, Key key2) {
        this.f4777do = key;
        this.f4778if = key2;
    }

    /* renamed from: do, reason: not valid java name */
    public Key m5808do() {
        return this.f4777do;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof ow)) {
            return false;
        }
        ow owVar = (ow) obj;
        return this.f4777do.equals(owVar.f4777do) && this.f4778if.equals(owVar.f4778if);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return (this.f4777do.hashCode() * 31) + this.f4778if.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f4777do + ", signature=" + this.f4778if + MessageFormatter.DELIM_STOP;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f4777do.updateDiskCacheKey(messageDigest);
        this.f4778if.updateDiskCacheKey(messageDigest);
    }
}
