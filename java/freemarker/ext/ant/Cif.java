package freemarker.ext.ant;

import java.io.File;
import java.util.Map;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.ProjectHelper;
import org.apache.tools.ant.Task;

/* renamed from: freemarker.ext.ant.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif extends Task {

    /* renamed from: do, reason: not valid java name */
    private File f24461do;

    /* renamed from: for, reason: not valid java name */
    private UnlinkedJythonOperations f24462for;

    /* renamed from: if, reason: not valid java name */
    private String f24463if = "";

    /* renamed from: if, reason: not valid java name */
    private void m28473if() {
        if (this.f24462for == null) {
            try {
                try {
                    this.f24462for = (UnlinkedJythonOperations) freemarker.template.utility.Cif.m29285try("freemarker.ext.ant.UnlinkedJythonOperationsImpl").newInstance();
                } catch (Exception e) {
                    throw new RuntimeException("An exception has been thrown when trying to create a freemarker.ext.ant.JythonAntTask object. The exception was: " + e);
                }
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("A ClassNotFoundException has been thrown when trying to get the freemarker.ext.ant.UnlinkedJythonOperationsImpl class. The error message was: " + e2.getMessage());
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m28474do(String str) {
        this.f24463if += str;
    }

    /* renamed from: for, reason: not valid java name */
    public void m28475for(Map map) throws BuildException {
        if (this.f24461do != null) {
            m28473if();
            this.f24462for.execute(this.f24461do, map);
        }
        if (this.f24463if.trim().length() > 0) {
            m28473if();
            this.f24462for.execute(ProjectHelper.replaceProperties(this.project, this.f24463if, this.project.getProperties()), map);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m28476new(File file) throws BuildException {
        m28473if();
        this.f24461do = file;
    }
}
