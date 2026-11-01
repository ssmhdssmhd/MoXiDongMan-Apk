package freemarker.core;

import android.support.v4.e91;
import android.support.v4.k52;
import freemarker.core.TemplateMarkupOutputModel;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public abstract class y1<MO extends TemplateMarkupOutputModel> extends e91 {
    /* renamed from: break */
    public abstract String mo28196break(MO mo) throws k52;

    /* renamed from: case */
    public abstract String mo28134case(String str) throws k52;

    /* renamed from: catch */
    public abstract boolean mo28182catch();

    /* renamed from: class */
    public abstract boolean mo28197class(MO mo) throws k52;

    /* renamed from: const */
    public abstract boolean mo28135const(String str) throws k52;

    /* renamed from: else */
    public abstract MO mo28198else(String str) throws k52;

    /* renamed from: final */
    public abstract void mo28199final(MO mo, Writer writer) throws k52, IOException;

    /* renamed from: goto */
    public abstract MO mo28200goto(String str) throws k52;

    /* renamed from: super */
    public abstract void mo28137super(String str, Writer writer) throws k52, IOException;

    /* renamed from: this */
    public abstract String mo28206this(MO mo) throws k52;

    /* renamed from: try */
    public abstract MO mo28208try(MO mo, MO mo2) throws k52;
}
