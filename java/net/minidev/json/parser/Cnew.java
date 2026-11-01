package net.minidev.json.parser;

import android.support.v4.ic1;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import net.minidev.json.writer.Ccase;

/* renamed from: net.minidev.json.parser.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew extends Ccase {
    public Cnew(int i) {
        super(i);
    }

    /* renamed from: switch, reason: not valid java name */
    public Object m31681switch(InputStream inputStream) throws ic1, UnsupportedEncodingException {
        return super.m31636return(new InputStreamReader(inputStream, "utf8"));
    }

    /* renamed from: throws, reason: not valid java name */
    public <T> T m31682throws(InputStream inputStream, Ccase<T> ccase) throws ic1, UnsupportedEncodingException {
        return (T) super.m31637static(new InputStreamReader(inputStream, "utf8"), ccase);
    }
}
