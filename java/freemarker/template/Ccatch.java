package freemarker.template;

/* renamed from: freemarker.template.catch, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccatch implements SerializableTemplateBooleanModel {
    private Object readResolve() {
        return TemplateBooleanModel.FALSE;
    }

    @Override // freemarker.template.TemplateBooleanModel
    public boolean getAsBoolean() {
        return false;
    }
}
