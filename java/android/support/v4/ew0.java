package android.support.v4;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ew0 extends rk {

    /* renamed from: do, reason: not valid java name */
    private final HashMap<String, CharSequence> f1610do = new HashMap<>();

    /* renamed from: for, reason: not valid java name */
    private final int f1611for;

    /* renamed from: if, reason: not valid java name */
    private final int f1612if;

    public ew0(CharSequence[]... charSequenceArr) {
        int i = 0;
        int i2 = Integer.MAX_VALUE;
        if (charSequenceArr != null) {
            int i3 = 0;
            for (CharSequence[] charSequenceArr2 : charSequenceArr) {
                this.f1610do.put(charSequenceArr2[0].toString(), charSequenceArr2[1]);
                int length = charSequenceArr2[0].length();
                i2 = length < i2 ? length : i2;
                if (length > i3) {
                    i3 = length;
                }
            }
            i = i3;
        }
        this.f1612if = i2;
        this.f1611for = i;
    }

    @Override // android.support.v4.rk
    /* renamed from: if, reason: not valid java name */
    public int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
        int length = this.f1611for;
        if (i + length > charSequence.length()) {
            length = charSequence.length() - i;
        }
        while (length >= this.f1612if) {
            CharSequence charSequence2 = this.f1610do.get(charSequence.subSequence(i, i + length).toString());
            if (charSequence2 != null) {
                writer.write(charSequence2.toString());
                return length;
            }
            length--;
        }
        return 0;
    }
}
