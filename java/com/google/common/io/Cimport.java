package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;
import java.util.Queue;

@li0
@o8
/* renamed from: com.google.common.io.import, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cimport {

    /* renamed from: case, reason: not valid java name */
    private final Cwhile f15314case;

    /* renamed from: do, reason: not valid java name */
    private final Readable f15315do;

    /* renamed from: for, reason: not valid java name */
    private final CharBuffer f15316for;

    /* renamed from: if, reason: not valid java name */
    @b51
    private final Reader f15317if;

    /* renamed from: new, reason: not valid java name */
    private final char[] f15318new;

    /* renamed from: try, reason: not valid java name */
    private final Queue<String> f15319try;

    /* renamed from: com.google.common.io.import$do, reason: invalid class name */
    public class Cdo extends Cwhile {
        public Cdo() {
        }

        @Override // com.google.common.io.Cwhile
        /* renamed from: new, reason: not valid java name */
        public void mo17075new(String str, String str2) {
            Cimport.this.f15319try.add(str);
        }
    }

    public Cimport(Readable readable) {
        CharBuffer charBufferM17155try = Cthis.m17155try();
        this.f15316for = charBufferM17155try;
        this.f15318new = charBufferM17155try.array();
        this.f15319try = new LinkedList();
        this.f15314case = new Cdo();
        this.f15315do = (Readable) af1.m205continue(readable);
        this.f15317if = readable instanceof Reader ? (Reader) readable : null;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public String m17074if() throws IOException {
        int i;
        while (true) {
            if (this.f15319try.peek() != null) {
                break;
            }
            this.f15316for.clear();
            Reader reader = this.f15317if;
            if (reader != null) {
                char[] cArr = this.f15318new;
                i = reader.read(cArr, 0, cArr.length);
            } else {
                i = this.f15315do.read(this.f15316for);
            }
            if (i == -1) {
                this.f15314case.m17194if();
                break;
            }
            this.f15314case.m17193do(this.f15318new, 0, i);
        }
        return this.f15319try.poll();
    }
}
