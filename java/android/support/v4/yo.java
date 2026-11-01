package android.support.v4;

import freemarker.template.Cdo;
import freemarker.template.utility.DateUtil;

@Deprecated
/* loaded from: classes.dex */
public class yo {
    /* renamed from: do, reason: not valid java name */
    public static void m9913do(String[] strArr) {
        we2 we2VarA2 = Cdo.a2();
        System.out.println();
        System.out.print("Apache FreeMarker version ");
        System.out.print(we2VarA2);
        if (!we2VarA2.toString().endsWith("Z") && we2VarA2.getBuildDate() != null) {
            System.out.print(" (built on ");
            System.out.print(DateUtil.m29241if(we2VarA2.getBuildDate(), true, true, true, 6, DateUtil.f25128case, new DateUtil.Cfor()));
            System.out.print(")");
        }
        System.out.println();
        if (we2VarA2.isGAECompliant() != null) {
            System.out.print("Google App Engine complian variant: ");
            System.out.println(we2VarA2.isGAECompliant().booleanValue() ? "Yes" : "No");
        }
    }
}
