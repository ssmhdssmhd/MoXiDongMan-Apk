package org.jsoup.nodes;

import android.support.v4.y41;
import java.io.IOException;
import org.antlr.v4.runtime.tree.xpath.Cdo;
import org.jsoup.nodes.Document;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;

/* loaded from: classes3.dex */
public class Comment extends LeafNode {
    public Comment(String str) {
        this.value = str;
    }

    private static boolean isXmlDeclarationData(String str) {
        return str.length() > 1 && (str.startsWith(Cdo.f28590try) || str.startsWith("?"));
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @y41
    public XmlDeclaration asXmlDeclaration() {
        String data = getData();
        String strSubstring = data.substring(1, data.length() - 1);
        if (isXmlDeclarationData(strSubstring)) {
            return null;
        }
        Document input = Parser.htmlParser().settings(ParseSettings.preserveCase).parseInput("<" + strSubstring + ">", baseUri());
        if (input.body().children().size() <= 0) {
            return null;
        }
        Element elementChild = input.body().child(0);
        XmlDeclaration xmlDeclaration = new XmlDeclaration(NodeUtils.parser(input).settings().normalizeTag(elementChild.tagName()), data.startsWith(Cdo.f28590try));
        xmlDeclaration.attributes().addAll(elementChild.attributes());
        return xmlDeclaration;
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node empty() {
        return super.empty();
    }

    public String getData() {
        return coreValue();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public boolean isXmlDeclaration() {
        return isXmlDeclarationData(getData());
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#comment";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    @Override // org.jsoup.nodes.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.prettyPrint()) {
            if (siblingIndex() == 0) {
                Node node = this.parentNode;
                if (!(node instanceof Element) || !((Element) node).tag().formatAsBlock()) {
                    if (outputSettings.outline()) {
                        indent(appendable, i, outputSettings);
                    }
                }
            }
        }
        appendable.append("<!--").append(getData()).append("-->");
    }

    @Override // org.jsoup.nodes.Node
    public void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public Comment setData(String str) {
        coreValue(str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public Comment mo37788clone() {
        return (Comment) super.mo37788clone();
    }
}
