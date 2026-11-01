package android.support.v4;

import com.google.protobuf.MessageLite;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class sb2 extends RuntimeException {
    private static final long serialVersionUID = -7466929953374883507L;
    private final List<String> missingFields;

    public sb2(MessageLite messageLite) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.missingFields = null;
    }

    /* renamed from: do, reason: not valid java name */
    private static String m7359do(List<String> list) {
        StringBuilder sb = new StringBuilder("Message missing required fields: ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public com.google.protobuf.n asInvalidProtocolBufferException() {
        return new com.google.protobuf.n(getMessage());
    }

    public List<String> getMissingFields() {
        return Collections.unmodifiableList(this.missingFields);
    }

    public sb2(List<String> list) {
        super(m7359do(list));
        this.missingFields = list;
    }
}
