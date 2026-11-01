package org.chromium.net.urlconnection;

import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.Objects;
import org.chromium.net.Ccase;

/* renamed from: org.chromium.net.urlconnection.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements URLStreamHandlerFactory {

    /* renamed from: do, reason: not valid java name */
    private final Ccase f33761do;

    public Cgoto(Ccase ccase) {
        Objects.requireNonNull(ccase, "CronetEngine is null.");
        this.f33761do = ccase;
    }

    @Override // java.net.URLStreamHandlerFactory
    public URLStreamHandler createURLStreamHandler(String str) {
        if ("http".equals(str) || "https".equals(str)) {
            return new Ctry(this.f33761do);
        }
        return null;
    }
}
