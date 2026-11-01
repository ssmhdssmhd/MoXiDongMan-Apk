package org.jsoup;

import android.support.v4.y41;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.jsoup.helper.DataUtil;
import org.jsoup.helper.HttpConnection;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.safety.Cleaner;
import org.jsoup.safety.Safelist;
import org.jsoup.safety.Whitelist;

/* loaded from: classes3.dex */
public class Jsoup {
    private Jsoup() {
    }

    public static String clean(String str, String str2, Safelist safelist) {
        return new Cleaner(safelist).clean(parseBodyFragment(str, str2)).body().html();
    }

    public static Connection connect(String str) {
        return HttpConnection.connect(str);
    }

    public static boolean isValid(String str, Safelist safelist) {
        return new Cleaner(safelist).isValidBodyHtml(str);
    }

    public static Connection newSession() {
        return new HttpConnection();
    }

    public static Document parse(String str, String str2) {
        return Parser.parse(str, str2);
    }

    public static Document parseBodyFragment(String str, String str2) {
        return Parser.parseBodyFragment(str, str2);
    }

    @Deprecated
    public static boolean isValid(String str, Whitelist whitelist) {
        return isValid(str, (Safelist) whitelist);
    }

    public static Document parse(String str, String str2, Parser parser) {
        return parser.parseInput(str, str2);
    }

    public static Document parseBodyFragment(String str) {
        return Parser.parseBodyFragment(str, "");
    }

    public static Document parse(String str, Parser parser) {
        return parser.parseInput(str, "");
    }

    public static Document parse(String str) {
        return Parser.parse(str, "");
    }

    @Deprecated
    public static String clean(String str, String str2, Whitelist whitelist) {
        return clean(str, str2, (Safelist) whitelist);
    }

    public static Document parse(File file, @y41 String str, String str2) throws IOException {
        return DataUtil.load(file, str, str2);
    }

    public static String clean(String str, Safelist safelist) {
        return clean(str, "", safelist);
    }

    public static Document parse(File file, @y41 String str) throws IOException {
        return DataUtil.load(file, str, file.getAbsolutePath());
    }

    @Deprecated
    public static String clean(String str, Whitelist whitelist) {
        return clean(str, (Safelist) whitelist);
    }

    public static Document parse(File file, @y41 String str, String str2, Parser parser) throws IOException {
        return DataUtil.load(file, str, str2, parser);
    }

    public static String clean(String str, String str2, Safelist safelist, Document.OutputSettings outputSettings) {
        Document documentClean = new Cleaner(safelist).clean(parseBodyFragment(str, str2));
        documentClean.outputSettings(outputSettings);
        return documentClean.body().html();
    }

    public static Document parse(InputStream inputStream, @y41 String str, String str2) throws IOException {
        return DataUtil.load(inputStream, str, str2);
    }

    public static Document parse(InputStream inputStream, @y41 String str, String str2, Parser parser) throws IOException {
        return DataUtil.load(inputStream, str, str2, parser);
    }

    public static Document parse(URL url, int i) throws IOException {
        Connection connectionConnect = HttpConnection.connect(url);
        connectionConnect.timeout(i);
        return connectionConnect.get();
    }

    @Deprecated
    public static String clean(String str, String str2, Whitelist whitelist, Document.OutputSettings outputSettings) {
        return clean(str, str2, (Safelist) whitelist, outputSettings);
    }
}
