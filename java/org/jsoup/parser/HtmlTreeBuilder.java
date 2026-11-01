package org.jsoup.parser;

import android.support.v4.g80;
import android.support.v4.sz0;
import android.support.v4.wk;
import android.support.v4.y41;
import android.support.v4.yb1;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import com.umeng.analytics.pro.ak;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.HtmlTreeBuilderState;
import org.jsoup.parser.Token;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class HtmlTreeBuilder extends TreeBuilder {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int MaxScopeSearchDepth = 100;
    private static final int maxQueueDepth = 256;
    private static final int maxUsedFormattingElements = 12;
    private boolean baseUriSetFromDoc;

    @y41
    private Element contextElement;
    private Token.EndTag emptyEnd;

    @y41
    private FormElement formElement;
    private ArrayList<Element> formattingElements;
    private boolean fosterInserts;
    private boolean fragmentParsing;
    private boolean framesetOk;

    @y41
    private Element headElement;
    private HtmlTreeBuilderState originalState;
    private List<String> pendingTableCharacters;
    private String[] specificScopeTarget = {null};
    private HtmlTreeBuilderState state;
    private ArrayList<HtmlTreeBuilderState> tmplInsertMode;
    public static final String[] TagsSearchInScope = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};
    public static final String[] TagSearchList = {"ol", "ul"};
    public static final String[] TagSearchButton = {"button"};
    public static final String[] TagSearchTableScope = {"html", "table"};
    public static final String[] TagSearchSelectScope = {"optgroup", "option"};
    public static final String[] TagSearchEndTags = {"dd", "dt", "li", "optgroup", "option", ak.ax, "rb", "rp", "rt", "rtc"};
    public static final String[] TagThoroughSearchEndTags = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", ak.ax, "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
    public static final String[] TagSearchSpecial = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", g80.f2079class, "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", TypedValues.Attributes.S_FRAME, "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", ak.ax, "param", "plaintext", "pre", "script", "section", "select", "style", g80.f2078catch, "table", "tbody", "td", "textarea", "tfoot", "th", "thead", sz0.f6342break, "tr", "ul", "wbr", "xmp"};

    private void clearStackToContext(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (StringUtil.in(element.normalName(), strArr) || element.normalName().equals("html")) {
                return;
            }
            this.stack.remove(size);
        }
    }

    private boolean inSpecificScope(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.specificScopeTarget;
        strArr3[0] = str;
        return inSpecificScope(strArr3, strArr, strArr2);
    }

    private void insertNode(Node node) {
        FormElement formElement;
        if (this.stack.isEmpty()) {
            this.doc.appendChild(node);
        } else if (isFosterInserts() && StringUtil.inSorted(currentElement().normalName(), HtmlTreeBuilderState.Constants.InTableFoster)) {
            insertInFosterParent(node);
        } else {
            currentElement().appendChild(node);
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (!element.tag().isFormListed() || (formElement = this.formElement) == null) {
                return;
            }
            formElement.addElement(element);
        }
    }

    private boolean isSameFormattingElement(Element element, Element element2) {
        return element.normalName().equals(element2.normalName()) && element.attributes().equals(element2.attributes());
    }

    private void replaceInQueue(ArrayList<Element> arrayList, Element element, Element element2) {
        int iLastIndexOf = arrayList.lastIndexOf(element);
        Validate.isTrue(iLastIndexOf != -1);
        arrayList.set(iLastIndexOf, element2);
    }

    @y41
    public Element aboveOnStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                return this.stack.get(size - 1);
            }
        }
        return null;
    }

    public void checkActiveFormattingElements(Element element) {
        int i = 0;
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            Element element2 = this.formattingElements.get(size);
            if (element2 == null) {
                return;
            }
            if (isSameFormattingElement(element, element2)) {
                i++;
            }
            if (i == 3) {
                this.formattingElements.remove(size);
                return;
            }
        }
    }

    public void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty() && removeLastFormattingElement() != null) {
        }
    }

    public void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead", "template");
    }

    public void clearStackToTableContext() {
        clearStackToContext("table", "template");
    }

    public void clearStackToTableRowContext() {
        clearStackToContext("tr", "template");
    }

    public void closeElement(String str) {
        generateImpliedEndTags(str);
        if (!str.equals(currentElement().normalName())) {
            error(state());
        }
        popStackToClose(str);
    }

    @y41
    public HtmlTreeBuilderState currentTemplateMode() {
        if (this.tmplInsertMode.size() <= 0) {
            return null;
        }
        return this.tmplInsertMode.get(r0.size() - 1);
    }

    @Override // org.jsoup.parser.TreeBuilder
    public ParseSettings defaultSettings() {
        return ParseSettings.htmlDefault;
    }

    public void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.parser.getErrors().canAddError()) {
            this.parser.getErrors().add(new ParseError(this.reader, "Unexpected %s token [%s] when in state [%s]", this.currentToken.tokenType(), this.currentToken, htmlTreeBuilderState));
        }
    }

    public void framesetOk(boolean z) {
        this.framesetOk = z;
    }

    public void generateImpliedEndTags(String str) {
        while (StringUtil.inSorted(currentElement().normalName(), TagSearchEndTags)) {
            if (str != null && currentElementIs(str)) {
                return;
            } else {
                pop();
            }
        }
    }

    public Element getActiveFormattingElement(String str) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            Element element = this.formattingElements.get(size);
            if (element == null) {
                return null;
            }
            if (element.normalName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    public String getBaseUri() {
        return this.baseUri;
    }

    public Document getDocument() {
        return this.doc;
    }

    @y41
    public FormElement getFormElement() {
        return this.formElement;
    }

    @y41
    public Element getFromStack(String str) {
        int size = this.stack.size() - 1;
        int i = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        while (size >= i) {
            Element element = this.stack.get(size);
            if (element.normalName().equals(str)) {
                return element;
            }
            size--;
        }
        return null;
    }

    public Element getHeadElement() {
        return this.headElement;
    }

    public List<String> getPendingTableCharacters() {
        return this.pendingTableCharacters;
    }

    public ArrayList<Element> getStack() {
        return this.stack;
    }

    public boolean inButtonScope(String str) {
        return inScope(str, TagSearchButton);
    }

    public boolean inListItemScope(String str) {
        return inScope(str, TagSearchList);
    }

    public boolean inScope(String[] strArr) {
        return inSpecificScope(strArr, TagsSearchInScope, (String[]) null);
    }

    public boolean inSelectScope(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String strNormalName = this.stack.get(size).normalName();
            if (strNormalName.equals(str)) {
                return true;
            }
            if (!StringUtil.inSorted(strNormalName, TagSearchSelectScope)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    public boolean inTableScope(String str) {
        return inSpecificScope(str, TagSearchTableScope, (String[]) null);
    }

    @Override // org.jsoup.parser.TreeBuilder
    @yb1
    public void initialiseParse(Reader reader, String str, Parser parser) {
        super.initialiseParse(reader, str, parser);
        this.state = HtmlTreeBuilderState.Initial;
        this.originalState = null;
        this.baseUriSetFromDoc = false;
        this.headElement = null;
        this.formElement = null;
        this.contextElement = null;
        this.formattingElements = new ArrayList<>();
        this.tmplInsertMode = new ArrayList<>();
        this.pendingTableCharacters = new ArrayList();
        this.emptyEnd = new Token.EndTag();
        this.framesetOk = true;
        this.fosterInserts = false;
        this.fragmentParsing = false;
    }

    public Element insert(Token.StartTag startTag) {
        if (startTag.hasAttributes() && !startTag.attributes.isEmpty() && startTag.attributes.deduplicate(this.settings) > 0) {
            error("Dropped duplicate attribute(s) in tag [%s]", startTag.normalName);
        }
        if (!startTag.isSelfClosing()) {
            Element element = new Element(tagFor(startTag.name(), this.settings), null, this.settings.normalizeAttributes(startTag.attributes));
            insert(element);
            return element;
        }
        Element elementInsertEmpty = insertEmpty(startTag);
        this.stack.add(elementInsertEmpty);
        this.tokeniser.transition(TokeniserState.Data);
        this.tokeniser.emit(this.emptyEnd.reset().name(elementInsertEmpty.tagName()));
        return elementInsertEmpty;
    }

    public Element insertEmpty(Token.StartTag startTag) {
        Tag tagTagFor = tagFor(startTag.name(), this.settings);
        Element element = new Element(tagTagFor, null, this.settings.normalizeAttributes(startTag.attributes));
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (!tagTagFor.isKnownTag()) {
                tagTagFor.setSelfClosing();
            } else if (!tagTagFor.isEmpty()) {
                this.tokeniser.error("Tag [%s] cannot be self closing; not a void tag", tagTagFor.normalName());
            }
        }
        return element;
    }

    public FormElement insertForm(Token.StartTag startTag, boolean z, boolean z2) {
        FormElement formElement = new FormElement(tagFor(startTag.name(), this.settings), null, this.settings.normalizeAttributes(startTag.attributes));
        if (!z2 || !onStack("template")) {
            setFormElement(formElement);
        }
        insertNode(formElement);
        if (z) {
            this.stack.add(formElement);
        }
        return formElement;
    }

    public void insertInFosterParent(Node node) {
        Element elementAboveOnStack;
        Element fromStack = getFromStack("table");
        boolean z = false;
        if (fromStack == null) {
            elementAboveOnStack = this.stack.get(0);
        } else if (fromStack.parent() != null) {
            elementAboveOnStack = fromStack.parent();
            z = true;
        } else {
            elementAboveOnStack = aboveOnStack(fromStack);
        }
        if (!z) {
            elementAboveOnStack.appendChild(node);
        } else {
            Validate.notNull(fromStack);
            fromStack.before(node);
        }
    }

    public void insertMarkerToFormattingElements() {
        this.formattingElements.add(null);
    }

    public void insertOnStackAfter(Element element, Element element2) {
        int iLastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(iLastIndexOf != -1);
        this.stack.add(iLastIndexOf + 1, element2);
    }

    public Element insertStartTag(String str) {
        Element element = new Element(tagFor(str, this.settings), null);
        insert(element);
        return element;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public boolean isContentForTagData(String str) {
        return str.equals("script") || str.equals("style");
    }

    public boolean isFosterInserts() {
        return this.fosterInserts;
    }

    public boolean isFragmentParsing() {
        return this.fragmentParsing;
    }

    public boolean isInActiveFormattingElements(Element element) {
        return onStack(this.formattingElements, element);
    }

    public boolean isSpecial(Element element) {
        return StringUtil.inSorted(element.normalName(), TagSearchSpecial);
    }

    public Element lastFormattingElement() {
        if (this.formattingElements.size() <= 0) {
            return null;
        }
        return this.formattingElements.get(r0.size() - 1);
    }

    public void markInsertionMode() {
        this.originalState = this.state;
    }

    public void maybeSetBaseUri(Element element) {
        if (this.baseUriSetFromDoc) {
            return;
        }
        String strAbsUrl = element.absUrl("href");
        if (strAbsUrl.length() != 0) {
            this.baseUri = strAbsUrl;
            this.baseUriSetFromDoc = true;
            this.doc.setBaseUri(strAbsUrl);
        }
    }

    public void newPendingTableCharacters() {
        this.pendingTableCharacters = new ArrayList();
    }

    public boolean onStack(Element element) {
        return onStack(this.stack, element);
    }

    public HtmlTreeBuilderState originalState() {
        return this.originalState;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0035  */
    @Override // org.jsoup.parser.TreeBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<Node> parseFragment(String str, @y41 Element element, String str2, Parser parser) {
        Element element2;
        this.state = HtmlTreeBuilderState.Initial;
        initialiseParse(new StringReader(str), str2, parser);
        this.contextElement = element;
        char c = 1;
        this.fragmentParsing = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String strNormalName = element.normalName();
            strNormalName.hashCode();
            switch (strNormalName.hashCode()) {
                case -1321546630:
                    if (!strNormalName.equals("template")) {
                        c = 65535;
                        break;
                    } else {
                        c = 0;
                        break;
                    }
                case -1191214428:
                    if (!strNormalName.equals("iframe")) {
                    }
                    break;
                case -1003243718:
                    if (strNormalName.equals("textarea")) {
                        c = 2;
                        break;
                    }
                    break;
                case -907685685:
                    if (strNormalName.equals("script")) {
                        c = 3;
                        break;
                    }
                    break;
                case 118807:
                    if (strNormalName.equals("xml")) {
                        c = 4;
                        break;
                    }
                    break;
                case 109780401:
                    if (strNormalName.equals("style")) {
                        c = 5;
                        break;
                    }
                    break;
                case 110371416:
                    if (strNormalName.equals(sz0.f6342break)) {
                        c = 6;
                        break;
                    }
                    break;
                case 1192721831:
                    if (strNormalName.equals("noframes")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1551550924:
                    if (strNormalName.equals("noscript")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1973234167:
                    if (strNormalName.equals("plaintext")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 2115613112:
                    if (strNormalName.equals("noembed")) {
                        c = '\n';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.tokeniser.transition(TokeniserState.Data);
                    pushTemplateMode(HtmlTreeBuilderState.InTemplate);
                    break;
                case 1:
                case 4:
                case 5:
                case 7:
                case '\n':
                    this.tokeniser.transition(TokeniserState.Rawtext);
                    break;
                case 2:
                case 6:
                    this.tokeniser.transition(TokeniserState.Rcdata);
                    break;
                case 3:
                    this.tokeniser.transition(TokeniserState.ScriptData);
                    break;
                case '\b':
                    this.tokeniser.transition(TokeniserState.Data);
                    break;
                case '\t':
                    this.tokeniser.transition(TokeniserState.PLAINTEXT);
                    break;
                default:
                    this.tokeniser.transition(TokeniserState.Data);
                    break;
            }
            element2 = new Element(tagFor(strNormalName, this.settings), str2);
            this.doc.appendChild(element2);
            this.stack.add(element2);
            resetInsertionMode();
            Element elementParent = element;
            while (true) {
                if (elementParent != null) {
                    if (elementParent instanceof FormElement) {
                        this.formElement = (FormElement) elementParent;
                    } else {
                        elementParent = elementParent.parent();
                    }
                }
            }
        } else {
            element2 = null;
        }
        runParser();
        if (element == null) {
            return this.doc.childNodes();
        }
        List<Node> listSiblingNodes = element2.siblingNodes();
        if (!listSiblingNodes.isEmpty()) {
            element2.insertChildren(-1, listSiblingNodes);
        }
        return element2.childNodes();
    }

    public Element pop() {
        return this.stack.remove(this.stack.size() - 1);
    }

    public void popStackToBefore(String str) {
        for (int size = this.stack.size() - 1; size >= 0 && !this.stack.get(size).normalName().equals(str); size--) {
            this.stack.remove(size);
        }
    }

    @y41
    public Element popStackToClose(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (element.normalName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    @y41
    public HtmlTreeBuilderState popTemplateMode() {
        if (this.tmplInsertMode.size() <= 0) {
            return null;
        }
        return this.tmplInsertMode.remove(r0.size() - 1);
    }

    public int positionOfElement(Element element) {
        for (int i = 0; i < this.formattingElements.size(); i++) {
            if (element == this.formattingElements.get(i)) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public boolean process(Token token) {
        this.currentToken = token;
        return this.state.process(token, this);
    }

    @Override // org.jsoup.parser.TreeBuilder
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    public void push(Element element) {
        this.stack.add(element);
    }

    public void pushActiveFormattingElements(Element element) {
        checkActiveFormattingElements(element);
        this.formattingElements.add(element);
    }

    public void pushTemplateMode(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.tmplInsertMode.add(htmlTreeBuilderState);
    }

    public void pushWithBookmark(Element element, int i) {
        checkActiveFormattingElements(element);
        try {
            this.formattingElements.add(i, element);
        } catch (IndexOutOfBoundsException unused) {
            this.formattingElements.add(element);
        }
    }

    public void reconstructFormattingElements() {
        Element elementLastFormattingElement = lastFormattingElement();
        if (elementLastFormattingElement == null || onStack(elementLastFormattingElement)) {
            return;
        }
        int size = this.formattingElements.size();
        int i = size - 12;
        if (i < 0) {
            i = 0;
        }
        boolean z = true;
        int i2 = size - 1;
        int i3 = i2;
        while (i3 != i) {
            i3--;
            elementLastFormattingElement = this.formattingElements.get(i3);
            if (elementLastFormattingElement == null || onStack(elementLastFormattingElement)) {
                z = false;
                break;
            }
        }
        while (true) {
            if (!z) {
                i3++;
                elementLastFormattingElement = this.formattingElements.get(i3);
            }
            Validate.notNull(elementLastFormattingElement);
            Element elementInsertStartTag = insertStartTag(elementLastFormattingElement.normalName());
            if (elementLastFormattingElement.attributesSize() > 0) {
                elementInsertStartTag.attributes().addAll(elementLastFormattingElement.attributes());
            }
            this.formattingElements.set(i3, elementInsertStartTag);
            if (i3 == i2) {
                return;
            } else {
                z = false;
            }
        }
    }

    public void removeFromActiveFormattingElements(Element element) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            if (this.formattingElements.get(size) == element) {
                this.formattingElements.remove(size);
                return;
            }
        }
    }

    public boolean removeFromStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                this.stack.remove(size);
                return true;
            }
        }
        return false;
    }

    public Element removeLastFormattingElement() {
        int size = this.formattingElements.size();
        if (size > 0) {
            return this.formattingElements.remove(size - 1);
        }
        return null;
    }

    public void replaceActiveFormattingElement(Element element, Element element2) {
        replaceInQueue(this.formattingElements, element, element2);
    }

    public void replaceOnStack(Element element, Element element2) {
        replaceInQueue(this.stack, element, element2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0148 A[LOOP:0: B:10:0x001f->B:101:0x0148, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x010b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x012c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0158 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0165 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resetInsertionMode() {
        int size = this.stack.size() - 1;
        int i = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        if (this.stack.size() == 0) {
            transition(HtmlTreeBuilderState.InBody);
        }
        boolean z = false;
        while (size >= i) {
            Element element = this.stack.get(size);
            if (size == i) {
                if (this.fragmentParsing) {
                    element = this.contextElement;
                }
                z = true;
            }
            String strNormalName = element != null ? element.normalName() : "";
            strNormalName.hashCode();
            char c = 65535;
            switch (strNormalName.hashCode()) {
                case -1644953643:
                    if (strNormalName.equals("frameset")) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                            transition(HtmlTreeBuilderState.InFrameset);
                            return;
                        case 1:
                            HtmlTreeBuilderState htmlTreeBuilderStateCurrentTemplateMode = currentTemplateMode();
                            Validate.notNull(htmlTreeBuilderStateCurrentTemplateMode, "Bug: no template insertion mode on stack!");
                            transition(htmlTreeBuilderStateCurrentTemplateMode);
                            return;
                        case 2:
                            transition(HtmlTreeBuilderState.InSelect);
                            return;
                        case 3:
                            transition(HtmlTreeBuilderState.InColumnGroup);
                            return;
                        case 4:
                        case 5:
                            if (!z) {
                                transition(HtmlTreeBuilderState.InCell);
                                return;
                            }
                            break;
                        case 6:
                            transition(HtmlTreeBuilderState.InRow);
                            return;
                        case 7:
                            transition(HtmlTreeBuilderState.InBody);
                            return;
                        case '\b':
                            if (!z) {
                                transition(HtmlTreeBuilderState.InHead);
                                return;
                            }
                            break;
                        case '\t':
                            transition(this.headElement == null ? HtmlTreeBuilderState.BeforeHead : HtmlTreeBuilderState.AfterHead);
                            return;
                        case '\n':
                            transition(HtmlTreeBuilderState.InTable);
                            return;
                        case 11:
                        case '\f':
                        case '\r':
                            transition(HtmlTreeBuilderState.InTableBody);
                            return;
                        case 14:
                            transition(HtmlTreeBuilderState.InCaption);
                            return;
                    }
                    if (!z) {
                        transition(HtmlTreeBuilderState.InBody);
                        return;
                    }
                    size--;
                case -1321546630:
                    if (strNormalName.equals("template")) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case -906021636:
                    if (strNormalName.equals("select")) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case -636197633:
                    if (strNormalName.equals("colgroup")) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 3696:
                    if (strNormalName.equals("td")) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 3700:
                    if (strNormalName.equals("th")) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 3710:
                    if (strNormalName.equals("tr")) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 3029410:
                    if (strNormalName.equals("body")) {
                        c = 7;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 3198432:
                    if (strNormalName.equals("head")) {
                        c = '\b';
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 3213227:
                    if (strNormalName.equals("html")) {
                        c = '\t';
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 110115790:
                    if (strNormalName.equals("table")) {
                        c = '\n';
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 110157846:
                    if (strNormalName.equals("tbody")) {
                        c = 11;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 110277346:
                    if (strNormalName.equals("tfoot")) {
                        c = '\f';
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 110326868:
                    if (strNormalName.equals("thead")) {
                        c = wk.f7547for;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                case 552573414:
                    if (strNormalName.equals("caption")) {
                        c = 14;
                    }
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    if (!z) {
                    }
                    break;
            }
        }
    }

    public void setFormElement(FormElement formElement) {
        this.formElement = formElement;
    }

    public void setFosterInserts(boolean z) {
        this.fosterInserts = z;
    }

    public void setHeadElement(Element element) {
        this.headElement = element;
    }

    public HtmlTreeBuilderState state() {
        return this.state;
    }

    public int templateModeSize() {
        return this.tmplInsertMode.size();
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.state + ", currentElement=" + currentElement() + MessageFormatter.DELIM_STOP;
    }

    public void transition(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.state = htmlTreeBuilderState;
    }

    public boolean framesetOk() {
        return this.framesetOk;
    }

    public boolean inScope(String str) {
        return inScope(str, null);
    }

    @Override // org.jsoup.parser.TreeBuilder
    public HtmlTreeBuilder newInstance() {
        return new HtmlTreeBuilder();
    }

    public boolean onStack(String str) {
        return getFromStack(str) != null;
    }

    private boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.stack.size() - 1;
        int i = size > 100 ? size - 100 : 0;
        while (size >= i) {
            String strNormalName = this.stack.get(size).normalName();
            if (StringUtil.inSorted(strNormalName, strArr)) {
                return true;
            }
            if (StringUtil.inSorted(strNormalName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.inSorted(strNormalName, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    private static boolean onStack(ArrayList<Element> arrayList, Element element) {
        int size = arrayList.size() - 1;
        int i = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        while (size >= i) {
            if (arrayList.get(size) == element) {
                return true;
            }
            size--;
        }
        return false;
    }

    public boolean inScope(String str, String[] strArr) {
        return inSpecificScope(str, TagsSearchInScope, strArr);
    }

    public boolean process(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.currentToken = token;
        return htmlTreeBuilderState.process(token, this);
    }

    public void generateImpliedEndTags() {
        generateImpliedEndTags(false);
    }

    public void generateImpliedEndTags(boolean z) {
        String[] strArr = z ? TagThoroughSearchEndTags : TagSearchEndTags;
        while (StringUtil.inSorted(currentElement().normalName(), strArr)) {
            pop();
        }
    }

    public void popStackToClose(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (StringUtil.inSorted(element.normalName(), strArr)) {
                return;
            }
        }
    }

    public void insert(Element element) {
        insertNode(element);
        this.stack.add(element);
    }

    public void insert(Token.Comment comment) {
        insertNode(new Comment(comment.getData()));
    }

    public void insert(Token.Character character) {
        Node textNode;
        Element elementCurrentElement = currentElement();
        String strNormalName = elementCurrentElement.normalName();
        String data = character.getData();
        if (character.isCData()) {
            textNode = new CDataNode(data);
        } else if (isContentForTagData(strNormalName)) {
            textNode = new DataNode(data);
        } else {
            textNode = new TextNode(data);
        }
        elementCurrentElement.appendChild(textNode);
    }
}
