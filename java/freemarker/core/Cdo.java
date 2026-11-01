package freemarker.core;

import android.support.v4.bl2;
import android.support.v4.il2;
import android.support.v4.jl2;
import android.support.v4.ul2;
import freemarker.template.Cnative;
import freemarker.template.Creturn;
import freemarker.template.Cthis;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo extends TemplateException {
    public Cdo(d0 d0Var, h0 h0Var, TemplateModel templateModel) {
        super(null, d0Var, h0Var, buildDescription(d0Var, h0Var, templateModel));
    }

    public static z4 buildDescription(d0 d0Var, h0 h0Var, TemplateModel templateModel) {
        z4 z4VarM28401if = new z4("The value doesn't support ?api. See requirements in the FreeMarker Manual. (FTL type: ", new bl2(templateModel), ", TemplateModel class: ", new il2(templateModel.getClass()), ", ObjectWapper: ", new jl2(d0Var.m28258implements()), ")").m28401if(h0Var);
        if (h0Var.mo27817instanceof()) {
            z4VarM28401if.m28402this("Only adapted Java objects can possibly have API, not values created inside templates.");
        } else {
            ObjectWrapper objectWrapperM28258implements = d0Var.m28258implements();
            if ((objectWrapperM28258implements instanceof Cthis) && ((templateModel instanceof Cnative) || (templateModel instanceof Creturn))) {
                Cthis cthis = (Cthis) objectWrapperM28258implements;
                if (!cthis.C()) {
                    z4VarM28401if.m28397break("In the FreeMarker configuration, \"", "object_wrapper", "\" is a DefaultObjectWrapper with its \"useAdaptersForContainers\" property set to false. Setting it to true might solves this problem.");
                    if (cthis.m28699import().intValue() < ul2.f6939try) {
                        z4VarM28401if.m28402this("Setting DefaultObjectWrapper's \"incompatibleImprovements\" to 2.3.22 or higher will change the default value of \"useAdaptersForContainers\" to true.");
                    }
                } else if ((templateModel instanceof Creturn) && cthis.A()) {
                    z4VarM28401if.m28397break("In the FreeMarker configuration, \"", "object_wrapper", "\" is a DefaultObjectWrapper with its \"forceLegacyNonListCollections\" property set to true. If you are trying to access the API of a non-List Collection, setting the \"forceLegacyNonListCollections\" property to false might solves this problem.");
                }
            }
        }
        return z4VarM28401if;
    }
}
