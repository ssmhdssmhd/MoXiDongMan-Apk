package freemarker.ext.dom;

/* renamed from: freemarker.ext.dom.do, reason: invalid class name */
/* loaded from: classes.dex */
enum Cdo {
    MARKUP("@@markup"),
    NESTED_MARKUP("@@nested_markup"),
    ATTRIBUTES_MARKUP("@@attributes_markup"),
    TEXT("@@text"),
    START_TAG("@@start_tag"),
    END_TAG("@@end_tag"),
    QNAME("@@qname"),
    NAMESPACE("@@namespace"),
    LOCAL_NAME("@@local_name"),
    ATTRIBUTES("@@"),
    PREVIOUS_SIBLING_ELEMENT("@@previous_sibling_element"),
    NEXT_SIBLING_ELEMENT("@@next_sibling_element");

    private final String key;

    Cdo(String str) {
        this.key = str;
    }

    public static boolean containsKey(String str) {
        for (Cdo cdo : values()) {
            if (cdo.getKey().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public String getKey() {
        return this.key;
    }
}
