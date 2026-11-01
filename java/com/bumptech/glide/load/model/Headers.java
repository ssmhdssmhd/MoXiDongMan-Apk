package com.bumptech.glide.load.model;

import com.bumptech.glide.load.model.Cfor;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public interface Headers {

    @Deprecated
    public static final Headers NONE = new Cdo();
    public static final Headers DEFAULT = new Cfor.Cdo().m11639for();

    /* renamed from: com.bumptech.glide.load.model.Headers$do, reason: invalid class name */
    public class Cdo implements Headers {
        @Override // com.bumptech.glide.load.model.Headers
        public Map<String, String> getHeaders() {
            return Collections.emptyMap();
        }
    }

    Map<String, String> getHeaders();
}
