.class public Lfreemarker/ext/jsp/while;
.super Lfreemarker/ext/jsp/else;
.source "SourceFile"


# static fields
.field private static final final:Lfreemarker/log/if;


# instance fields
.field private const:Ljavax/el/ELContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "freemarker.jsp"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/while;->final:Lfreemarker/log/if;

    .line 2
    invoke-static {}, Ljavax/servlet/jsp/JspFactory;->getDefaultFactory()Ljavax/servlet/jsp/JspFactory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lfreemarker/ext/jsp/try;

    invoke-direct {v1}, Lfreemarker/ext/jsp/try;-><init>()V

    invoke-static {v1}, Ljavax/servlet/jsp/JspFactory;->setDefaultFactory(Ljavax/servlet/jsp/JspFactory;)V

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using JspFactory implementation class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljavax/servlet/jsp/JspFactory;->getDefaultFactory()Ljavax/servlet/jsp/JspFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/jsp/else;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic abstract()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->abstract()V

    return-void
.end method

.method public bridge synthetic break()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->break()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic case(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->case(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic catch()Ljavax/servlet/ServletRequest;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->catch()Ljavax/servlet/ServletRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic class()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->class()Ljavax/servlet/ServletResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic const()Ljavax/servlet/ServletConfig;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->const()Ljavax/servlet/ServletConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic continue(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->continue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic do(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else()Ljava/lang/Exception;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->else()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extends(Ljava/io/Writer;)Ljavax/servlet/jsp/JspWriter;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->extends(Ljava/io/Writer;)Ljavax/servlet/jsp/JspWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic final()Ljavax/servlet/ServletContext;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->final()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic finally()Ljavax/servlet/jsp/tagext/BodyContent;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->finally()Ljavax/servlet/jsp/tagext/BodyContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic for(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->for(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->if(Ljava/lang/String;)V

    return-void
.end method

.method public implements()Ljavax/servlet/jsp/el/VariableResolver;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/while$if;

    invoke-direct {v0, p0, p0}, Lfreemarker/ext/jsp/while$if;-><init>(Lfreemarker/ext/jsp/while;Ljavax/servlet/jsp/PageContext;)V

    return-object v0
.end method

.method public bridge synthetic import(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->import(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic interface(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfreemarker/ext/jsp/else;->interface(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic native(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->native(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic new(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public protected()Ljavax/el/ELContext;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/while;->const:Ljavax/el/ELContext;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Ljavax/servlet/jsp/JspFactory;->getDefaultFactory()Ljavax/servlet/jsp/JspFactory;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/jsp/while;->final()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/servlet/jsp/JspFactory;->getJspApplicationContext(Ljavax/servlet/ServletContext;)Ljavax/servlet/jsp/JspApplicationContext;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lfreemarker/ext/jsp/for;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lfreemarker/ext/jsp/for;

    invoke-virtual {v0, p0}, Lfreemarker/ext/jsp/for;->try(Lfreemarker/ext/jsp/else;)Ljavax/el/ELContext;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/jsp/while;->const:Ljavax/el/ELContext;

    .line 5
    const-class v1, Ljavax/servlet/jsp/JspContext;

    invoke-virtual {v0, v1, p0}, Ljavax/el/ELContext;->putContext(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not create an ELContext using a foreign JspApplicationContext (of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ").\nHint: The cause of this is often that you are trying to use JSTL tags/functions in FTL. In that case, know that that\'s not really suppored, and you are supposed to use FTL constrcuts instead, like #list instead of JSTL\'s forEach, etc."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/jsp/while;->const:Ljavax/el/ELContext;

    return-object v0
.end method

.method public bridge synthetic public(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/else;->public(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic return(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Lfreemarker/ext/jsp/else;->return(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public bridge synthetic strictfp(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/else;->strictfp(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic super()Ljavax/servlet/http/HttpSession;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->super()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic switch()Ljavax/servlet/jsp/JspWriter;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->switch()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic this()Ljavax/servlet/jsp/JspWriter;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/jsp/else;->this()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    return-object v0
.end method

.method public transient()Ljavax/servlet/jsp/el/ExpressionEvaluator;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/ext/jsp/while$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/while$do;-><init>(Lfreemarker/ext/jsp/while;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "org.apache.commons.el.ExpressionEvaluatorImpl"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/el/ExpressionEvaluator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "In order for the getExpressionEvaluator() method to work, you must have downloaded the apache commons-el jar and made it available in the classpath."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic try(I)Ljava/util/Enumeration;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->try(I)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic volatile(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic while(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/else;->while(Ljava/lang/Exception;)V

    return-void
.end method
