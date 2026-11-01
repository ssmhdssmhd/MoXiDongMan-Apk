package com.wsw.cospa.utils.analyzeUrl;

import android.support.v4.ap0;
import android.support.v4.l22;
import android.support.v4.p42;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.antlr.v4.runtime.tree.xpath.Cdo;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class AnalyzeByJSoup {
    private Element element;

    public class SourceRule {
        public String elementsRule;
        public boolean isCss;
        public String replaceRegex;
        public String replacement;

        public SourceRule(String str) {
            this.isCss = false;
            this.replaceRegex = "";
            this.replacement = "";
            if (l22.m4557default(str, "@CSS:")) {
                this.isCss = true;
                this.elementsRule = str.substring(5).trim();
                return;
            }
            String[] strArrSplit = str.trim().split("#");
            this.elementsRule = strArrSplit[0];
            if (strArrSplit.length > 1) {
                this.replaceRegex = strArrSplit[1];
            }
            if (strArrSplit.length > 2) {
                this.replacement = strArrSplit[2];
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Elements filterElements(Elements elements, String[] strArr) {
        Element next;
        boolean z;
        if (strArr == null || strArr.length < 2) {
            return elements;
        }
        Elements elements2 = new Elements();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            next = it.next();
            z = false;
            String str = strArr[0];
            str.hashCode();
            switch (str) {
                case "id":
                    if (next.getElementById(strArr[1]) != null) {
                        z = true;
                        break;
                    }
                    break;
                case "tag":
                    if (next.getElementsByTag(strArr[1]).size() > 0) {
                    }
                    break;
                case "text":
                    if (next.getElementsContainingOwnText(strArr[1]).size() > 0) {
                    }
                    break;
                case "class":
                    if (next.getElementsByClass(strArr[1]).size() > 0) {
                    }
                    break;
            }
            if (z) {
                elements2.add(next);
            }
        }
        return elements2;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Elements getElementsSingle(Element element, String str) throws NumberFormatException {
        String[] strArrSplit;
        char c;
        Elements elements = new Elements();
        try {
            String[] strArrSplit2 = str.trim().split("@");
            if (strArrSplit2.length > 1) {
                elements.add(element);
                for (String str2 : strArrSplit2) {
                    Elements elements2 = new Elements();
                    Iterator it = elements.iterator();
                    while (it.hasNext()) {
                        elements2.addAll(getElements((Element) it.next(), str2));
                    }
                    elements.clear();
                    elements.addAll(elements2);
                }
            } else {
                String[] strArrSplit3 = str.split(Cdo.f28590try);
                String[] strArrSplit4 = strArrSplit3[0].trim().split(">");
                String[] strArrSplit5 = strArrSplit4[0].trim().split("\\.");
                boolean z = strArrSplit4.length > 1 && !TextUtils.isEmpty(strArrSplit4[1].trim());
                if (z) {
                    strArrSplit = strArrSplit4[1].trim().split("\\.");
                    strArrSplit[0] = strArrSplit[0].trim();
                    List listAsList = Arrays.asList("class", "id", p42.f4845if, "text");
                    if (strArrSplit.length < 2 || !listAsList.contains(strArrSplit[0]) || TextUtils.isEmpty(strArrSplit[1].trim())) {
                        z = false;
                    }
                    strArrSplit[1] = strArrSplit[1].trim();
                } else {
                    strArrSplit = null;
                }
                String str3 = strArrSplit5[0];
                switch (str3.hashCode()) {
                    case 3355:
                        if (str3.equals("id")) {
                            c = 3;
                            break;
                        } else {
                            c = 65535;
                            break;
                        }
                    case 114586:
                        if (str3.equals(p42.f4845if)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3556653:
                        if (str3.equals("text")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 94742904:
                        if (str3.equals("class")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1659526655:
                        if (str3.equals("children")) {
                            c = 0;
                            break;
                        }
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c == 0) {
                    Elements elementsChildren = element.children();
                    if (z) {
                        elementsChildren = filterElements(elementsChildren, strArrSplit);
                    }
                    elements.addAll(elementsChildren);
                } else if (c == 1) {
                    Elements elementsByClass = element.getElementsByClass(strArrSplit5[1]);
                    if (strArrSplit5.length == 3) {
                        int i = Integer.parseInt(strArrSplit5[2]);
                        if (i < 0) {
                            elements.add(elementsByClass.get(elementsByClass.size() + i));
                        } else {
                            elements.add(elementsByClass.get(i));
                        }
                    } else {
                        if (z) {
                            elementsByClass = filterElements(elementsByClass, strArrSplit);
                        }
                        elements.addAll(elementsByClass);
                    }
                } else if (c == 2) {
                    Elements elementsByTag = element.getElementsByTag(strArrSplit5[1]);
                    if (strArrSplit5.length == 3) {
                        int i2 = Integer.parseInt(strArrSplit5[2]);
                        if (i2 < 0) {
                            elements.add(elementsByTag.get(elementsByTag.size() + i2));
                        } else {
                            elements.add(elementsByTag.get(i2));
                        }
                    } else {
                        if (z) {
                            elementsByTag = filterElements(elementsByTag, strArrSplit);
                        }
                        elements.addAll(elementsByTag);
                    }
                } else if (c == 3) {
                    elements.add(element.getElementById(strArrSplit5[1]));
                } else if (c != 4) {
                    elements.addAll(element.select(strArrSplit3[0]));
                } else {
                    Elements elementsContainingOwnText = element.getElementsContainingOwnText(strArrSplit5[1]);
                    if (z) {
                        elementsContainingOwnText = filterElements(elementsContainingOwnText, strArrSplit);
                    }
                    elements.addAll(elementsContainingOwnText);
                }
                if (strArrSplit3.length > 1) {
                    for (String str4 : strArrSplit3[1].split(":")) {
                        int i3 = Integer.parseInt(str4);
                        if (i3 < 0 && elements.size() + i3 >= 0) {
                            elements.set(elements.size() + i3, null);
                        } else if (Integer.parseInt(str4) < elements.size()) {
                            elements.set(Integer.parseInt(str4), null);
                        }
                    }
                    Elements elements3 = new Elements();
                    elements3.add(null);
                    elements.removeAll(elements3);
                }
            }
        } catch (Exception unused) {
        }
        return elements;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private List<String> getResultLast(Elements elements, String str) {
        ArrayList arrayList = new ArrayList();
        char c = 65535;
        try {
            switch (str.hashCode()) {
                case -1055246893:
                    if (str.equals("ownText")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1053421180:
                    if (str.equals("textNodes")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3213227:
                    if (str.equals("html")) {
                        c = 3;
                        break;
                    }
                    break;
                case 3556653:
                    if (str.equals("text")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                Iterator<Element> it = elements.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().text());
                }
            } else if (c == 1) {
                Iterator<Element> it2 = elements.iterator();
                while (it2.hasNext()) {
                    List<TextNode> listTextNodes = it2.next().textNodes();
                    for (int i = 0; i < listTextNodes.size(); i++) {
                        String strTrim = listTextNodes.get(i).text().trim();
                        if (!TextUtils.isEmpty(strTrim)) {
                            arrayList.add(strTrim);
                        }
                    }
                }
            } else if (c == 2 || c == 3) {
                elements.select("script").remove();
                arrayList.add(elements.html());
            } else {
                Iterator<Element> it3 = elements.iterator();
                while (it3.hasNext()) {
                    String strAttr = it3.next().attr(str);
                    if (!TextUtils.isEmpty(strAttr) && !arrayList.contains(strAttr)) {
                        arrayList.add(strAttr);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    private List<String> getResultList(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Elements elements = new Elements();
        elements.add(this.element);
        String[] strArrSplit = str.split("@");
        int i = 0;
        while (i < strArrSplit.length - 1) {
            Elements elements2 = new Elements();
            Iterator<Element> it = elements.iterator();
            while (it.hasNext()) {
                elements2.addAll(getElementsSingle(it.next(), strArrSplit[i]));
            }
            elements.clear();
            i++;
            elements = elements2;
        }
        if (elements.isEmpty()) {
            return null;
        }
        return getResultLast(elements, strArrSplit[strArrSplit.length - 1]);
    }

    public Elements getElements(String str) {
        return getElements(this.element, str);
    }

    public String getString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<String> stringList = getStringList(str);
        if (stringList.size() == 0) {
            return null;
        }
        return l22.m4572static("\n", stringList).trim();
    }

    public String getString0(String str) {
        List<String> stringList = getStringList(str);
        return !stringList.isEmpty() ? stringList.get(0) : "";
    }

    public List<String> getStringList(String str) {
        String[] strArrSplit;
        List<String> resultList;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        SourceRule sourceRule = new SourceRule(str);
        if (TextUtils.isEmpty(sourceRule.elementsRule)) {
            arrayList.add(this.element.data());
        } else {
            String str2 = "&";
            if (sourceRule.elementsRule.contains("&")) {
                strArrSplit = sourceRule.elementsRule.split("&+");
            } else if (sourceRule.elementsRule.contains("%%")) {
                strArrSplit = sourceRule.elementsRule.split("%%");
                str2 = "%";
            } else {
                strArrSplit = sourceRule.isCss ? sourceRule.elementsRule.split("\\|\\|") : sourceRule.elementsRule.split("\\|+");
                str2 = "|";
            }
            ArrayList<List> arrayList2 = new ArrayList();
            for (String str3 : strArrSplit) {
                if (sourceRule.isCss) {
                    int iLastIndexOf = str3.lastIndexOf(64);
                    resultList = getResultLast(this.element.select(str3.substring(0, iLastIndexOf)), str3.substring(iLastIndexOf + 1));
                } else {
                    resultList = getResultList(str3);
                }
                if (resultList != null && !resultList.isEmpty()) {
                    arrayList2.add(resultList);
                    if (!arrayList2.isEmpty() && str2.equals("|")) {
                        break;
                    }
                }
            }
            if (arrayList2.size() > 0) {
                if ("%".equals(str2)) {
                    for (int i = 0; i < ((List) arrayList2.get(0)).size(); i++) {
                        for (List list : arrayList2) {
                            if (i < list.size()) {
                                arrayList.add((String) list.get(i));
                            }
                        }
                    }
                } else {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList.addAll((List) it.next());
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(sourceRule.replaceRegex)) {
            ArrayList arrayList3 = new ArrayList(arrayList);
            arrayList.clear();
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                String strReplaceAll = ((String) it2.next()).replaceAll(sourceRule.replaceRegex, sourceRule.replacement);
                if (strReplaceAll.length() > 0) {
                    arrayList.add(strReplaceAll);
                }
            }
        }
        return arrayList;
    }

    public AnalyzeByJSoup parse(Object obj) {
        if (obj instanceof Element) {
            this.element = (Element) obj;
        } else if (obj instanceof ap0) {
            ap0 ap0Var = (ap0) obj;
            if (ap0Var.m308this()) {
                this.element = ap0Var.m307new();
            } else {
                this.element = Jsoup.parse(ap0Var.m303final().toString());
            }
        } else {
            this.element = Jsoup.parse(obj.toString());
        }
        return this;
    }

    private Elements getElements(Element element, String str) throws NumberFormatException {
        String[] strArrSplit;
        Elements elements = new Elements();
        if (element != null && !TextUtils.isEmpty(str)) {
            SourceRule sourceRule = new SourceRule(str);
            String str2 = "&";
            if (sourceRule.elementsRule.contains("&")) {
                strArrSplit = sourceRule.elementsRule.split("&+");
            } else if (sourceRule.elementsRule.contains("%")) {
                strArrSplit = sourceRule.elementsRule.split("%+");
                str2 = "%";
            } else {
                strArrSplit = sourceRule.isCss ? sourceRule.elementsRule.split("\\|\\|") : sourceRule.elementsRule.split("\\|+");
                str2 = "|";
            }
            ArrayList<Elements> arrayList = new ArrayList();
            if (!sourceRule.isCss) {
                for (String str3 : strArrSplit) {
                    Elements elementsSingle = getElementsSingle(element, str3);
                    arrayList.add(elementsSingle);
                    if (elementsSingle.size() > 0 && str2.equals("|")) {
                        break;
                    }
                }
            } else {
                for (String str4 : strArrSplit) {
                    Elements elementsSelect = element.select(str4);
                    arrayList.add(elementsSelect);
                    if (elementsSelect.size() > 0 && str2.equals("|")) {
                        break;
                    }
                }
            }
            if (arrayList.size() > 0) {
                if ("%".equals(str2)) {
                    for (int i = 0; i < ((Elements) arrayList.get(0)).size(); i++) {
                        for (Elements elements2 : arrayList) {
                            if (i < elements2.size()) {
                                elements.add(elements2.get(i));
                            }
                        }
                    }
                } else {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        elements.addAll((Elements) it.next());
                    }
                }
            }
        }
        return elements;
    }
}
