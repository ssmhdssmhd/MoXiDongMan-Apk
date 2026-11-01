package android.support.v4;

/* loaded from: classes.dex */
public class gl2 extends al2 {
    public gl2(String[] strArr) {
        super(strArr);
    }

    @Override // android.support.v4.al2
    /* renamed from: do */
    public String mo273do(Object obj) {
        String[] strArr = (String[]) obj;
        int length = 0;
        for (int i = 0; i < strArr.length; i++) {
            if (i != 0) {
                length += 2;
            }
            length += strArr[i].length();
        }
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            sb.append(strArr[i2]);
        }
        return sb.toString();
    }
}
