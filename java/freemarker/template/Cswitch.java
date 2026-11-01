package freemarker.template;

/* renamed from: freemarker.template.switch, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cswitch implements SerializableTemplateBooleanModel {
    private Object readResolve() {
        return TemplateBooleanModel.TRUE;
    }

    @Override // freemarker.template.TemplateBooleanModel
    public boolean getAsBoolean() {
        return true;
    }
}
