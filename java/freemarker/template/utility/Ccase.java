package freemarker.template.utility;

import android.support.v4.k52;
import freemarker.template.TemplateMethodModel;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

/* renamed from: freemarker.template.utility.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements TemplateMethodModel {

    /* renamed from: do, reason: not valid java name */
    private static final int f25161do = 1024;

    @Override // freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52, IOException {
        StringBuilder sb = new StringBuilder();
        if (list.size() < 1) {
            throw new k52("Need an argument to execute");
        }
        try {
            InputStream inputStream = Runtime.getRuntime().exec((String) list.get(0)).getInputStream();
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
                char[] cArr = new char[1024];
                for (int i = inputStreamReader.read(cArr); i > 0; i = inputStreamReader.read(cArr)) {
                    sb.append(cArr, 0, i);
                }
                return sb.toString();
            } finally {
                inputStream.close();
            }
        } catch (IOException e) {
            throw new k52(e.getMessage());
        }
    }
}
