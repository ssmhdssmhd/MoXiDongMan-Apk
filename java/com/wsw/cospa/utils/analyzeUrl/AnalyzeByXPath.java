package com.wsw.cospa.utils.analyzeUrl;

import android.support.v4.ap0;
import android.support.v4.yo0;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class AnalyzeByXPath {
    private yo0 jxDocument;
    private ap0 jxNode;

    private yo0 strToJXDocument(String str) {
        if (str.endsWith("</td>")) {
            str = String.format("<tr>%s</tr>", str);
        }
        if (str.endsWith("</tr>") || str.endsWith("</tbody>")) {
            str = String.format("<table>%s</table>", str);
        }
        return yo0.m9914do(str);
    }

    public List<ap0> getElements(String str) {
        String[] strArrSplit;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (str.contains("&&")) {
            strArrSplit = str.split("&&");
            str2 = "&";
        } else if (str.contains("%%")) {
            strArrSplit = str.split("%%");
            str2 = "%";
        } else {
            strArrSplit = str.split("\\|\\|");
            str2 = "|";
        }
        if (strArrSplit.length == 1) {
            ap0 ap0Var = this.jxNode;
            return ap0Var != null ? ap0Var.m299class(strArrSplit[0]) : this.jxDocument.m9918case(strArrSplit[0]);
        }
        ArrayList<List> arrayList2 = new ArrayList();
        for (String str3 : strArrSplit) {
            List<ap0> elements = getElements(str3);
            if (elements != null && !elements.isEmpty()) {
                arrayList2.add(elements);
                if (elements.size() > 0 && str2.equals("|")) {
                    break;
                }
            }
        }
        if (arrayList2.size() > 0) {
            if ("%".equals(str2)) {
                for (int i = 0; i < ((List) arrayList2.get(0)).size(); i++) {
                    for (List list : arrayList2) {
                        if (i < list.size()) {
                            arrayList.add((ap0) list.get(i));
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
        return arrayList;
    }

    public String getString(String str) {
        String[] strArrSplit;
        String str2;
        if (str.contains("&&")) {
            strArrSplit = str.split("&&");
            str2 = "&";
        } else {
            strArrSplit = str.split("\\|\\|");
            str2 = "|";
        }
        if (strArrSplit.length == 1) {
            ap0 ap0Var = this.jxNode;
            List<ap0> listM299class = ap0Var != null ? ap0Var.m299class(str) : this.jxDocument.m9918case(str);
            if (listM299class == null) {
                return null;
            }
            return TextUtils.join(",", listM299class);
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : strArrSplit) {
            String string = getString(str3);
            if (!TextUtils.isEmpty(string)) {
                arrayList.add(string);
                if (str2.equals("|")) {
                    break;
                }
            }
        }
        return TextUtils.join(",", arrayList).trim();
    }

    public List<String> getStringList(String str) {
        String[] strArrSplit;
        String str2;
        ArrayList arrayList = new ArrayList();
        if (str.contains("&&")) {
            strArrSplit = str.split("&&");
            str2 = "&";
        } else if (str.contains("%%")) {
            strArrSplit = str.split("%%");
            str2 = "%";
        } else {
            strArrSplit = str.split("\\|\\|");
            str2 = "|";
        }
        if (strArrSplit.length == 1) {
            ap0 ap0Var = this.jxNode;
            Iterator<ap0> it = (ap0Var != null ? ap0Var.m299class(str) : this.jxDocument.m9918case(str)).iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(it.next()));
            }
            return arrayList;
        }
        ArrayList<List> arrayList2 = new ArrayList();
        for (String str3 : strArrSplit) {
            List<String> stringList = getStringList(str3);
            if (stringList != null && !stringList.isEmpty()) {
                arrayList2.add(stringList);
                if (stringList.size() > 0 && str2.equals("|")) {
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
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList.addAll((List) it2.next());
                }
            }
        }
        return arrayList;
    }

    public AnalyzeByXPath parse(Object obj) {
        if (obj instanceof ap0) {
            ap0 ap0Var = (ap0) obj;
            this.jxNode = ap0Var;
            if (!ap0Var.m308this()) {
                this.jxDocument = strToJXDocument(obj.toString());
                this.jxNode = null;
            }
        } else if (obj instanceof Document) {
            this.jxDocument = yo0.m9916if((Document) obj);
            this.jxNode = null;
        } else if (obj instanceof Element) {
            this.jxDocument = yo0.m9915for(new Elements((Element) obj));
            this.jxNode = null;
        } else if (obj instanceof Elements) {
            this.jxDocument = yo0.m9915for((Elements) obj);
            this.jxNode = null;
        } else {
            this.jxDocument = strToJXDocument(obj.toString());
            this.jxNode = null;
        }
        return this;
    }
}
