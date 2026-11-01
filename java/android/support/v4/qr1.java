package android.support.v4;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Ccase;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class qr1 {

    /* renamed from: do, reason: not valid java name */
    private final jw0<Key, String> f5517do = new jw0<>(1000);

    /* renamed from: do, reason: not valid java name */
    public String m6659do(Key key) throws NoSuchAlgorithmException {
        String strM4120for;
        synchronized (this.f5517do) {
            strM4120for = this.f5517do.m4120for(key);
        }
        if (strM4120for == null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                key.updateDiskCacheKey(messageDigest);
                strM4120for = Ccase.m12056switch(messageDigest.digest());
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            synchronized (this.f5517do) {
                this.f5517do.m4119else(key, strM4120for);
            }
        }
        return strM4120for;
    }
}
