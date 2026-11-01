package org.bouncycastle.util.io.pem;

import android.support.v4.ad1;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.bouncycastle.util.encoders.Cdo;

/* renamed from: org.bouncycastle.util.io.pem.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends BufferedReader {

    /* renamed from: do, reason: not valid java name */
    private static final String f32667do = "-----BEGIN ";

    /* renamed from: if, reason: not valid java name */
    private static final String f32668if = "-----END ";

    public Cif(Reader reader) {
        super(reader);
    }

    /* renamed from: do, reason: not valid java name */
    private Cdo m36379do(String str) throws IOException {
        String line;
        String str2 = f32668if + str;
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList();
        while (true) {
            line = readLine();
            if (line == null) {
                break;
            }
            if (line.indexOf(":") >= 0) {
                int iIndexOf = line.indexOf(58);
                arrayList.add(new ad1(line.substring(0, iIndexOf), line.substring(iIndexOf + 1).trim()));
            } else {
                if (line.indexOf(str2) != -1) {
                    break;
                }
                stringBuffer.append(line.trim());
            }
        }
        if (line != null) {
            return new Cdo(str, arrayList, Cdo.m36321for(stringBuffer.toString()));
        }
        throw new IOException(str2 + " not found");
    }

    /* renamed from: if, reason: not valid java name */
    public Cdo m36380if() throws IOException {
        String line;
        do {
            line = readLine();
            if (line == null) {
                break;
            }
        } while (!line.startsWith(f32667do));
        if (line == null) {
            return null;
        }
        String strSubstring = line.substring(11);
        int iIndexOf = strSubstring.indexOf(45);
        String strSubstring2 = strSubstring.substring(0, iIndexOf);
        if (iIndexOf > 0) {
            return m36379do(strSubstring2);
        }
        return null;
    }
}
