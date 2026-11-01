package freemarker.ext.ant;

import android.support.v4.ez1;
import freemarker.core.b2;
import freemarker.core.d0;
import freemarker.ext.dom.Cbreak;
import freemarker.template.Cnative;
import freemarker.template.Cstatic;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;
import freemarker.template.utility.Cconst;
import freemarker.template.utility.Cif;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.taskdefs.MatchingTask;
import org.w3c.dom.Document;
import org.xml.sax.SAXParseException;

@Deprecated
/* renamed from: freemarker.ext.ant.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo extends MatchingTask {

    /* renamed from: break, reason: not valid java name */
    private Cstatic f24436break;

    /* renamed from: case, reason: not valid java name */
    private File f24437case;

    /* renamed from: default, reason: not valid java name */
    private final Map f24441default;

    /* renamed from: do, reason: not valid java name */
    private Cif f24442do;

    /* renamed from: else, reason: not valid java name */
    private File f24443else;

    /* renamed from: final, reason: not valid java name */
    private TemplateModel f24444final;

    /* renamed from: for, reason: not valid java name */
    private final DocumentBuilderFactory f24445for;

    /* renamed from: goto, reason: not valid java name */
    private File f24446goto;

    /* renamed from: if, reason: not valid java name */
    private Cif f24447if;

    /* renamed from: new, reason: not valid java name */
    private DocumentBuilder f24450new;

    /* renamed from: return, reason: not valid java name */
    private String f24452return;

    /* renamed from: static, reason: not valid java name */
    private String f24453static;

    /* renamed from: super, reason: not valid java name */
    private TemplateNodeModel f24454super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f24455switch;

    /* renamed from: this, reason: not valid java name */
    private String f24456this;

    /* renamed from: throw, reason: not valid java name */
    private TemplateModel f24457throw;

    /* renamed from: throws, reason: not valid java name */
    private String f24458throws;

    /* renamed from: while, reason: not valid java name */
    private TemplateModel f24460while;

    /* renamed from: try, reason: not valid java name */
    private freemarker.template.Cdo f24459try = new freemarker.template.Cdo();

    /* renamed from: catch, reason: not valid java name */
    private long f24438catch = 0;

    /* renamed from: class, reason: not valid java name */
    private String f24439class = null;

    /* renamed from: const, reason: not valid java name */
    private File f24440const = null;

    /* renamed from: import, reason: not valid java name */
    private long f24448import = 0;

    /* renamed from: native, reason: not valid java name */
    private boolean f24449native = true;

    /* renamed from: public, reason: not valid java name */
    private String f24451public = ".html";

    public Cdo() {
        String strM29258for = Cconst.m29258for("file.encoding", "utf-8");
        this.f24452return = strM29258for;
        this.f24453static = strM29258for;
        this.f24455switch = false;
        this.f24458throws = "";
        this.f24441default = new HashMap();
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        this.f24445for = documentBuilderFactoryNewInstance;
        documentBuilderFactoryNewInstance.setNamespaceAware(true);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.apache.tools.ant.BuildException */
    /* renamed from: case, reason: not valid java name */
    private void m28452case() throws BuildException {
        String strSubstring;
        StringTokenizer stringTokenizer = new StringTokenizer(this.f24458throws, ",; ");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf(61);
            if (iIndexOf == -1) {
                int iLastIndexOf = strNextToken.lastIndexOf(46);
                strSubstring = iLastIndexOf == -1 ? strNextToken : strNextToken.substring(iLastIndexOf + 1);
            } else {
                String strSubstring2 = strNextToken.substring(0, iIndexOf);
                strNextToken = strNextToken.substring(iIndexOf + 1);
                strSubstring = strSubstring2;
            }
            try {
                this.f24441default.put(strSubstring, Cif.m29285try(strNextToken).newInstance());
            } catch (Exception e) {
                throw new BuildException(e);
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.apache.tools.ant.BuildException */
    /* renamed from: goto, reason: not valid java name */
    private void m28453goto(File file, String str, File file2) throws BuildException {
        File file3;
        File file4 = null;
        try {
            try {
                File file5 = new File(file, str);
                try {
                    File file6 = new File(file2, str.substring(0, str.lastIndexOf(46)) + this.f24451public);
                    try {
                        if (!this.f24449native || file5.lastModified() > file6.lastModified() || this.f24438catch > file6.lastModified() || this.f24448import > file6.lastModified()) {
                            m28454new(file6);
                            log("Input:  " + str, 2);
                            if (this.f24444final == null && (file3 = this.f24440const) != null) {
                                Document document = this.f24450new.parse(file3);
                                this.f24444final = new freemarker.ext.xml.Cif(this.f24450new.parse(this.f24440const));
                                this.f24454super = Cbreak.m28746finally(document);
                            }
                            Document document2 = this.f24450new.parse(file5);
                            freemarker.ext.xml.Cif cif = new freemarker.ext.xml.Cif(document2);
                            Cbreak cbreakM28746finally = Cbreak.m28746finally(document2);
                            HashMap map = new HashMap();
                            map.put("document", cif);
                            m28461else(map);
                            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file6), this.f24452return));
                            try {
                                if (this.f24436break == null) {
                                    throw new BuildException("No template file specified in build script or in XML file");
                                }
                                if (this.f24442do != null) {
                                    HashMap map2 = new HashMap();
                                    map2.put("model", map);
                                    map2.put("doc", document2);
                                    TemplateNodeModel templateNodeModel = this.f24454super;
                                    if (templateNodeModel != null) {
                                        map2.put("project", ((Cbreak) templateNodeModel).m28764try());
                                    }
                                    this.f24442do.m28475for(map2);
                                }
                                d0 d0VarU0 = this.f24436break.U0(map, bufferedWriter);
                                d0VarU0.m3(cbreakM28746finally);
                                if (this.f24447if != null) {
                                    HashMap map3 = new HashMap();
                                    map3.put("env", d0VarU0);
                                    map3.put("doc", document2);
                                    TemplateNodeModel templateNodeModel2 = this.f24454super;
                                    if (templateNodeModel2 != null) {
                                        map3.put("project", ((Cbreak) templateNodeModel2).m28764try());
                                    }
                                    this.f24447if.m28475for(map3);
                                }
                                d0VarU0.d3();
                                bufferedWriter.flush();
                                bufferedWriter.close();
                                log("Output: " + file6, 2);
                            } catch (Throwable th) {
                                bufferedWriter.close();
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        file4 = file6;
                        if (file4 != null && !file4.delete() && file4.exists()) {
                            log("Failed to delete " + file4, 1);
                        }
                        th.printStackTrace();
                        throw new BuildException(th, getLocation());
                    }
                } catch (SAXParseException e) {
                    e = e;
                    file4 = file5;
                    Exception exception = e.getException() != null ? e.getException() : e;
                    log("XML parsing error in " + file4.getAbsolutePath(), 0);
                    log("Line number " + e.getLineNumber());
                    log("Column number " + e.getColumnNumber());
                    throw new BuildException(exception, getLocation());
                }
            } catch (SAXParseException e2) {
                e = e2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.apache.tools.ant.BuildException */
    /* renamed from: new, reason: not valid java name */
    private void m28454new(File file) throws BuildException {
        File file2 = new File(file.getParent());
        if (file2.exists() || file2.mkdirs()) {
            return;
        }
        throw new BuildException("Unable to create directory: " + file2.getAbsolutePath(), getLocation());
    }

    /* renamed from: public, reason: not valid java name */
    private static TemplateModel m28455public(Map map) {
        Cnative cnative = new Cnative();
        for (Map.Entry entry : map.entrySet()) {
            cnative.put(String.valueOf(entry.getKey()), new ez1(String.valueOf(entry.getValue())));
        }
        return cnative;
    }

    /* renamed from: break, reason: not valid java name */
    public void m28456break(File file) {
        this.f24437case = file;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m28457catch(String str) {
        this.f24452return = str;
    }

    /* renamed from: class, reason: not valid java name */
    public void m28458class(String str) {
        this.f24451public = str;
    }

    /* renamed from: const, reason: not valid java name */
    public void m28459const(String str) {
        this.f24449native = (str.equalsIgnoreCase(b2.f23510do) || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("off")) ? false : true;
    }

    /* renamed from: do, reason: not valid java name */
    public void m28460do(Cif cif) {
        this.f24447if = cif;
    }

    /* renamed from: else, reason: not valid java name */
    public void m28461else(Map map) {
        map.put("properties", this.f24457throw);
        map.put("userProperties", this.f24460while);
        TemplateModel templateModel = this.f24444final;
        if (templateModel != null) {
            map.put("project", templateModel);
            map.put("project_node", this.f24454super);
        }
        if (this.f24441default.size() > 0) {
            for (Map.Entry entry : this.f24441default.entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m28462final(String str) {
        this.f24458throws = str;
    }

    /* renamed from: for, reason: not valid java name */
    public void m28463for(Cif cif) {
        this.f24442do = cif;
    }

    /* renamed from: if, reason: not valid java name */
    public void m28464if(Cif cif) {
        this.f24447if = cif;
    }

    /* renamed from: import, reason: not valid java name */
    public void m28465import(String str) {
        this.f24453static = str;
    }

    /* renamed from: native, reason: not valid java name */
    public void m28466native(boolean z) {
        this.f24455switch = z;
    }

    /* renamed from: super, reason: not valid java name */
    public void m28467super(String str) {
        this.f24439class = str;
    }

    /* renamed from: this, reason: not valid java name */
    public void m28468this(File file) {
        this.f24443else = file;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m28469throw(String str) {
        this.f24456this = str;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.apache.tools.ant.BuildException */
    /* renamed from: try, reason: not valid java name */
    public void m28470try() throws BuildException {
        File file;
        if (this.f24443else == null) {
            this.f24443else = getProject().getBaseDir();
        }
        if (this.f24437case == null) {
            throw new BuildException("destdir attribute must be set!", getLocation());
        }
        if (this.f24446goto == null) {
            if (this.f24456this != null) {
                file = new File(this.f24456this);
                if (!file.isAbsolute()) {
                    file = new File(getProject().getBaseDir(), this.f24456this);
                }
                this.f24446goto = file.getParentFile();
                this.f24456this = file.getName();
            } else {
                this.f24446goto = this.f24443else;
                file = null;
            }
            m28471while(this.f24446goto);
        } else if (this.f24456this == null) {
            file = null;
        } else {
            if (new File(this.f24456this).isAbsolute()) {
                throw new BuildException("Do not specify an absolute location for the template as well as a templateDir");
            }
            file = new File(this.f24446goto, this.f24456this);
        }
        if (file != null) {
            this.f24438catch = file.lastModified();
        }
        try {
            String str = this.f24456this;
            if (str != null) {
                this.f24436break = this.f24459try.P1(str, this.f24453static);
            }
            log("Transforming into: " + this.f24437case.getAbsolutePath(), 2);
            String str2 = this.f24439class;
            if (str2 != null && str2.length() > 0) {
                File file2 = new File(this.f24443else, this.f24439class);
                this.f24440const = file2;
                if (file2.isFile()) {
                    this.f24448import = this.f24440const.lastModified();
                } else {
                    log("Project file is defined, but could not be located: " + this.f24440const.getAbsolutePath(), 2);
                    this.f24440const = null;
                }
            }
            m28452case();
            DirectoryScanner directoryScanner = getDirectoryScanner(this.f24443else);
            this.f24457throw = m28455public(this.project.getProperties());
            this.f24460while = m28455public(this.project.getUserProperties());
            this.f24445for.setValidating(this.f24455switch);
            try {
                this.f24450new = this.f24445for.newDocumentBuilder();
                for (String str3 : directoryScanner.getIncludedFiles()) {
                    m28453goto(this.f24443else, str3, this.f24437case);
                }
            } catch (ParserConfigurationException e) {
                throw new BuildException("Could not create document builder", e, getLocation());
            }
        } catch (IOException e2) {
            throw new BuildException(e2.toString());
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.apache.tools.ant.BuildException */
    /* renamed from: while, reason: not valid java name */
    public void m28471while(File file) throws BuildException {
        this.f24446goto = file;
        try {
            this.f24459try.K2(file);
        } catch (Exception e) {
            throw new BuildException(e);
        }
    }
}
