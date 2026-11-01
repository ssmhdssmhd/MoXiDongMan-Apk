package freemarker.ext.ant;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.apache.tools.ant.BuildException;
import org.python.util.PythonInterpreter;

/* renamed from: freemarker.ext.ant.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor implements UnlinkedJythonOperations {
    /* renamed from: do, reason: not valid java name */
    private PythonInterpreter m28472do(Map map) {
        PythonInterpreter pythonInterpreter = new PythonInterpreter();
        for (Map.Entry entry : map.entrySet()) {
            pythonInterpreter.set((String) entry.getKey(), entry.getValue());
        }
        return pythonInterpreter;
    }

    @Override // freemarker.ext.ant.UnlinkedJythonOperations
    public void execute(String str, Map map) throws BuildException {
        m28472do(map).exec(str);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.apache.tools.ant.BuildException */
    @Override // freemarker.ext.ant.UnlinkedJythonOperations
    public void execute(File file, Map map) throws BuildException {
        try {
            m28472do(map).execfile(file.getCanonicalPath());
        } catch (IOException e) {
            throw new BuildException(e);
        }
    }
}
