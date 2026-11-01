package org.antlr.v4.runtime.misc;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.antlr.v4.runtime.misc.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    public List<Cdo> f28569do;

    /* renamed from: org.antlr.v4.runtime.misc.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: for, reason: not valid java name */
        public String f28571for;

        /* renamed from: new, reason: not valid java name */
        public String f28573new;

        /* renamed from: do, reason: not valid java name */
        public long f28570do = System.currentTimeMillis();

        /* renamed from: if, reason: not valid java name */
        public StackTraceElement f28572if = new Throwable().getStackTrace()[0];

        public String toString() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date(this.f28570do)) + Cclass.f28652do + this.f28571for + Cclass.f28652do + this.f28572if.getFileName() + ":" + this.f28572if.getLineNumber() + Cclass.f28652do + this.f28573new;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m32049for(String[] strArr) throws IOException {
        Cif cif = new Cif();
        cif.m32051if("atn", "test msg");
        cif.m32051if("dfa", "test msg 2");
        System.out.println(cif);
        cif.m32052new();
    }

    /* renamed from: do, reason: not valid java name */
    public void m32050do(String str) {
        m32051if(null, str);
    }

    /* renamed from: if, reason: not valid java name */
    public void m32051if(String str, String str2) {
        Cdo cdo = new Cdo();
        cdo.f28571for = str;
        cdo.f28573new = str2;
        if (this.f28569do == null) {
            this.f28569do = new ArrayList();
        }
        this.f28569do.add(cdo);
    }

    /* renamed from: new, reason: not valid java name */
    public String m32052new() throws IOException {
        String str = "./antlr-" + new SimpleDateFormat("yyyy-MM-dd-HH.mm.ss").format(new Date()) + ".log";
        m32053try(str);
        return str;
    }

    public String toString() {
        if (this.f28569do == null) {
            return "";
        }
        String property = System.getProperty("line.separator");
        StringBuilder sb = new StringBuilder();
        Iterator<Cdo> it = this.f28569do.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(property);
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m32053try(String str) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(str));
        try {
            bufferedWriter.write(toString());
        } finally {
            bufferedWriter.close();
        }
    }
}
