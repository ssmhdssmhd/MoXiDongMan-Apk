package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.HttpConnection;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public class FormElement extends Element {
    private final Elements elements;

    public FormElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
        this.elements = new Elements();
    }

    public FormElement addElement(Element element) {
        this.elements.add(element);
        return this;
    }

    public Elements elements() {
        return this.elements;
    }

    public List<Connection.KeyVal> formData() {
        Element elementSelectFirst;
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it = this.elements.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next.tag().isFormSubmittable() && !next.hasAttr("disabled")) {
                String strAttr = next.attr("name");
                if (strAttr.length() != 0) {
                    String strAttr2 = next.attr("type");
                    if (!strAttr2.equalsIgnoreCase("button")) {
                        if ("select".equals(next.normalName())) {
                            boolean z = false;
                            Iterator<Element> it2 = next.select("option[selected]").iterator();
                            while (it2.hasNext()) {
                                arrayList.add(HttpConnection.KeyVal.create(strAttr, it2.next().val()));
                                z = true;
                            }
                            if (!z && (elementSelectFirst = next.selectFirst("option")) != null) {
                                arrayList.add(HttpConnection.KeyVal.create(strAttr, elementSelectFirst.val()));
                            }
                        } else if (!"checkbox".equalsIgnoreCase(strAttr2) && !"radio".equalsIgnoreCase(strAttr2)) {
                            arrayList.add(HttpConnection.KeyVal.create(strAttr, next.val()));
                        } else if (next.hasAttr("checked")) {
                            arrayList.add(HttpConnection.KeyVal.create(strAttr, next.val().length() > 0 ? next.val() : "on"));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.jsoup.nodes.Node
    public void removeChild(Node node) {
        super.removeChild(node);
        this.elements.remove(node);
    }

    public Connection submit() {
        String strAbsUrl = hasAttr("action") ? absUrl("action") : baseUri();
        Validate.notEmpty(strAbsUrl, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        Connection.Method method = attr("method").equalsIgnoreCase("POST") ? Connection.Method.POST : Connection.Method.GET;
        Document documentOwnerDocument = ownerDocument();
        return (documentOwnerDocument != null ? documentOwnerDocument.connection().newRequest() : Jsoup.newSession()).url(strAbsUrl).data(formData()).method(method);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public FormElement mo37788clone() {
        return (FormElement) super.mo37788clone();
    }
}
