package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import org.bouncycastle.x509.X509StoreParameters;

/* loaded from: classes3.dex */
public class ch2 implements X509StoreParameters {

    /* renamed from: do, reason: not valid java name */
    private Collection f790do;

    public ch2(Collection collection) {
        Objects.requireNonNull(collection, "collection cannot be null");
        this.f790do = collection;
    }

    public Object clone() {
        return new ch2(this.f790do);
    }

    /* renamed from: do, reason: not valid java name */
    public Collection m931do() {
        return new ArrayList(this.f790do);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("X509CollectionStoreParameters: [\n");
        stringBuffer.append("  collection: " + this.f790do + "\n");
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
