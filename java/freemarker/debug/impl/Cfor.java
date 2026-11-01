package freemarker.debug.impl;

import android.support.v4.k52;
import freemarker.debug.DebugModel;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.TemplateTransformModel;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.ArrayList;
import java.util.Date;

/* renamed from: freemarker.debug.impl.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor extends UnicastRemoteObject implements DebugModel {

    /* renamed from: for, reason: not valid java name */
    private static final long f24380for = 1;

    /* renamed from: do, reason: not valid java name */
    private final TemplateModel f24381do;

    /* renamed from: if, reason: not valid java name */
    private final int f24382if;

    public Cfor(TemplateModel templateModel, int i) throws RemoteException {
        this.f24381do = templateModel;
        this.f24382if = m28437do(templateModel) + i;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    /* renamed from: do, reason: not valid java name */
    private static int m28437do(TemplateModel templateModel) {
        int i;
        int i2;
        ?? r0 = templateModel instanceof TemplateScalarModel;
        int i3 = r0;
        if (templateModel instanceof TemplateNumberModel) {
            i3 = r0 + 2;
        }
        int i4 = i3;
        if (templateModel instanceof TemplateDateModel) {
            i4 = i3 + 4;
        }
        int i5 = i4;
        if (templateModel instanceof TemplateBooleanModel) {
            i5 = i4 + 8;
        }
        int i6 = i5;
        if (templateModel instanceof TemplateSequenceModel) {
            i6 = i5 + 16;
        }
        int i7 = i6;
        if (templateModel instanceof TemplateCollectionModel) {
            i7 = i6 + 32;
        }
        if (templateModel instanceof TemplateHashModelEx) {
            i = i7 + 128;
        } else {
            i = i7;
            if (templateModel instanceof TemplateHashModel) {
                i = i7 + 64;
            }
        }
        if (templateModel instanceof TemplateMethodModelEx) {
            i2 = i + 512;
        } else {
            i2 = i;
            if (templateModel instanceof TemplateMethodModel) {
                i2 = i + 256;
            }
        }
        return templateModel instanceof TemplateTransformModel ? i2 + 1024 : i2;
    }

    /* renamed from: if, reason: not valid java name */
    private static DebugModel m28438if(TemplateModel templateModel) throws RemoteException {
        return (DebugModel) Ctry.m28448new(templateModel);
    }

    @Override // freemarker.debug.DebugModel
    public DebugModel get(int i) throws k52, RemoteException {
        return m28438if(((TemplateSequenceModel) this.f24381do).get(i));
    }

    @Override // freemarker.debug.DebugModel
    public boolean getAsBoolean() throws k52 {
        return ((TemplateBooleanModel) this.f24381do).getAsBoolean();
    }

    @Override // freemarker.debug.DebugModel
    public Date getAsDate() throws k52 {
        return ((TemplateDateModel) this.f24381do).getAsDate();
    }

    @Override // freemarker.debug.DebugModel
    public Number getAsNumber() throws k52 {
        return ((TemplateNumberModel) this.f24381do).getAsNumber();
    }

    @Override // freemarker.debug.DebugModel
    public String getAsString() throws k52 {
        return ((TemplateScalarModel) this.f24381do).getAsString();
    }

    @Override // freemarker.debug.DebugModel
    public DebugModel[] getCollection() throws k52, RemoteException {
        ArrayList arrayList = new ArrayList();
        TemplateModelIterator it = ((TemplateCollectionModel) this.f24381do).iterator();
        while (it.hasNext()) {
            arrayList.add(m28438if(it.next()));
        }
        return (DebugModel[]) arrayList.toArray(new DebugModel[arrayList.size()]);
    }

    @Override // freemarker.debug.DebugModel
    public int getDateType() {
        return ((TemplateDateModel) this.f24381do).getDateType();
    }

    @Override // freemarker.debug.DebugModel
    public int getModelTypes() {
        return this.f24382if;
    }

    @Override // freemarker.debug.DebugModel
    public String[] keys() throws k52 {
        TemplateHashModelEx templateHashModelEx = (TemplateHashModelEx) this.f24381do;
        ArrayList arrayList = new ArrayList();
        TemplateModelIterator it = templateHashModelEx.keys().iterator();
        while (it.hasNext()) {
            arrayList.add(((TemplateScalarModel) it.next()).getAsString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // freemarker.debug.DebugModel
    public int size() throws k52 {
        TemplateModel templateModel = this.f24381do;
        return templateModel instanceof TemplateSequenceModel ? ((TemplateSequenceModel) templateModel).size() : ((TemplateHashModelEx) templateModel).size();
    }

    @Override // freemarker.debug.DebugModel
    public DebugModel[] get(int i, int i2) throws k52, RemoteException {
        DebugModel[] debugModelArr = new DebugModel[i2 - i];
        TemplateSequenceModel templateSequenceModel = (TemplateSequenceModel) this.f24381do;
        for (int i3 = i; i3 < i2; i3++) {
            debugModelArr[i3 - i] = m28438if(templateSequenceModel.get(i3));
        }
        return debugModelArr;
    }

    @Override // freemarker.debug.DebugModel
    public DebugModel get(String str) throws k52, RemoteException {
        return m28438if(((TemplateHashModel) this.f24381do).get(str));
    }

    @Override // freemarker.debug.DebugModel
    public DebugModel[] get(String[] strArr) throws k52, RemoteException {
        DebugModel[] debugModelArr = new DebugModel[strArr.length];
        TemplateHashModel templateHashModel = (TemplateHashModel) this.f24381do;
        for (int i = 0; i < strArr.length; i++) {
            debugModelArr[i] = m28438if(templateHashModel.get(strArr[i]));
        }
        return debugModelArr;
    }
}
