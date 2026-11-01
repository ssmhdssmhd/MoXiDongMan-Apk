.class abstract Lfreemarker/ext/jsp/else;
.super Ljavax/servlet/jsp/PageContext;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/else$if;
    }
.end annotation


# static fields
.field private static final class:Ljava/lang/Class;


# instance fields
.field private final break:Lfreemarker/template/ObjectWrapperAndUnwrapper;

.field private case:Ljavax/servlet/http/HttpSession;

.field private catch:Ljavax/servlet/jsp/JspWriter;

.field private final do:Lfreemarker/core/d0;

.field private final else:Ljavax/servlet/http/HttpServletRequest;

.field private for:Ljava/util/List;

.field private final goto:Ljavax/servlet/http/HttpServletResponse;

.field private final if:I

.field private new:Ljava/util/List;

.field private final this:Lfreemarker/template/ObjectWrapper;

.field private final try:Ljavax/servlet/GenericServlet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lfreemarker/ext/jsp/else;->class:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/servlet/jsp/PageContext;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/else;->for:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/else;->new:Ljava/util/List;

    .line 4
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/jsp/else;->do:Lfreemarker/core/d0;

    .line 5
    invoke-virtual {v0}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/we2;->intValue()I

    move-result v1

    iput v1, p0, Lfreemarker/ext/jsp/else;->if:I

    const-string v1, "__FreeMarkerServlet.Application__"

    .line 6
    invoke-virtual {v0, v1}, Lfreemarker/core/d0;->J1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lfreemarker/ext/servlet/else;

    const-string v4, "Application"

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v0, v4}, Lfreemarker/core/d0;->J1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 9
    :cond_0
    instance-of v3, v2, Lfreemarker/ext/servlet/else;

    const-string v5, " or "

    const-string v6, " in the data model under either the name "

    const-string v7, "Could not find an instance of "

    if-eqz v3, :cond_5

    .line 10
    check-cast v2, Lfreemarker/ext/servlet/else;

    invoke-virtual {v2}, Lfreemarker/ext/servlet/else;->do()Ljavax/servlet/GenericServlet;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/jsp/else;->try:Ljavax/servlet/GenericServlet;

    const-string v2, "__FreeMarkerServlet.Request__"

    .line 11
    invoke-virtual {v0, v2}, Lfreemarker/core/d0;->J1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 12
    instance-of v4, v3, Lfreemarker/ext/servlet/if;

    const-string v8, "Request"

    if-nez v4, :cond_1

    .line 13
    invoke-virtual {v0, v8}, Lfreemarker/core/d0;->J1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 14
    :cond_1
    instance-of v0, v3, Lfreemarker/ext/servlet/if;

    if-eqz v0, :cond_4

    .line 15
    check-cast v3, Lfreemarker/ext/servlet/if;

    .line 16
    invoke-virtual {v3}, Lfreemarker/ext/servlet/if;->if()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/jsp/else;->case:Ljavax/servlet/http/HttpSession;

    .line 18
    invoke-virtual {v3}, Lfreemarker/ext/servlet/if;->for()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/jsp/else;->goto:Ljavax/servlet/http/HttpServletResponse;

    .line 19
    invoke-virtual {v3}, Lfreemarker/ext/servlet/if;->do()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/ext/jsp/else;->this:Lfreemarker/template/ObjectWrapper;

    .line 20
    instance-of v4, v3, Lfreemarker/template/ObjectWrapperAndUnwrapper;

    if-eqz v4, :cond_2

    check-cast v3, Lfreemarker/template/ObjectWrapperAndUnwrapper;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lfreemarker/ext/jsp/else;->break:Lfreemarker/template/ObjectWrapperAndUnwrapper;

    const-string v3, "javax.servlet.jsp.jspRequest"

    .line 21
    invoke-virtual {p0, v3, v0}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javax.servlet.jsp.jspResponse"

    .line 22
    invoke-virtual {p0, v0, v2}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->case:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_3

    const-string v2, "javax.servlet.jsp.jspSession"

    .line 24
    invoke-virtual {p0, v2, v0}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v0, "javax.servlet.jsp.jspPage"

    .line 25
    invoke-virtual {p0, v0, v1}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v1}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    const-string v2, "javax.servlet.jsp.jspConfig"

    invoke-virtual {p0, v2, v0}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javax.servlet.jsp.jspPageContext"

    .line 27
    invoke-virtual {p0, v0, p0}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v1}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "javax.servlet.jsp.jspApplication"

    invoke-virtual {p0, v1, v0}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_4
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lfreemarker/ext/servlet/if;

    .line 30
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_5
    new-instance v0, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lfreemarker/ext/servlet/else;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throw(Z)Ljavax/servlet/http/HttpSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->case:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/else;->case:Ljavax/servlet/http/HttpSession;

    if-eqz p1, :cond_0

    const-string v0, "javax.servlet.jsp.jspSession"

    .line 3
    invoke-virtual {p0, v0, p1}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lfreemarker/ext/jsp/else;->case:Ljavax/servlet/http/HttpSession;

    return-object p1
.end method


# virtual methods
.method public abstract()V
    .locals 0

    return-void
.end method

.method public break()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->try:Ljavax/servlet/GenericServlet;

    return-object v0
.end method

.method public case(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public catch()Ljavax/servlet/ServletRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method

.method public class()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->goto:Ljavax/servlet/http/HttpServletResponse;

    return-object v0
.end method

.method public const()Ljavax/servlet/ServletConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->try:Ljavax/servlet/GenericServlet;

    invoke-virtual {v0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    return-object v0
.end method

.method public continue(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->strictfp(Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->strictfp(Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->strictfp(Ljava/lang/String;I)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->strictfp(Ljava/lang/String;I)V

    return-void
.end method

.method public default()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/JspWriter;

    iput-object v0, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    const-string v1, "javax.servlet.jsp.jspOut"

    .line 2
    invoke-virtual {p0, v1, v0}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public do(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public else()Ljava/lang/Exception;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public extends(Ljava/io/Writer;)Ljavax/servlet/jsp/JspWriter;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/catch;

    invoke-direct {v0, p1}, Lfreemarker/ext/jsp/catch;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/else;->private(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;

    move-result-object p1

    return-object p1
.end method

.method public final()Ljavax/servlet/ServletContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->try:Ljavax/servlet/GenericServlet;

    invoke-virtual {v0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public finally()Ljavax/servlet/jsp/tagext/BodyContent;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/final$do;

    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->this()Ljavax/servlet/jsp/JspWriter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/jsp/final$do;-><init>(Ljavax/servlet/jsp/JspWriter;Z)V

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/else;->private(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/tagext/BodyContent;

    return-object v0
.end method

.method public for(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/else;->new(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public goto()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->this:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public if(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    iget-object v1, p0, Lfreemarker/ext/jsp/else;->goto:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public import(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public interface(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->final()Ljavax/servlet/ServletContext;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid scope "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/else;->throw(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->catch()Ljavax/servlet/ServletRequest;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_3
    :try_start_0
    iget-object p3, p0, Lfreemarker/ext/jsp/else;->do:Lfreemarker/core/d0;

    iget-object v0, p0, Lfreemarker/ext/jsp/else;->this:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p2}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lfreemarker/core/d0;->p3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Landroid/support/v4/kb2;

    invoke-direct {p2, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public native(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    invoke-virtual {v0}, Ljavax/servlet/jsp/JspWriter;->flush()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    iget-object v1, p0, Lfreemarker/ext/jsp/else;->goto:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public new(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->final()Ljavax/servlet/ServletContext;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid scope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Lfreemarker/ext/jsp/else;->throw(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->catch()Ljavax/servlet/ServletRequest;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_4
    :try_start_0
    iget-object p2, p0, Lfreemarker/ext/jsp/else;->do:Lfreemarker/core/d0;

    invoke-virtual {p2}, Lfreemarker/core/d0;->I1()Lfreemarker/core/d0$this;

    move-result-object p2

    invoke-virtual {p2, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 7
    iget p2, p0, Lfreemarker/ext/jsp/else;->if:I

    sget v0, Landroid/support/v4/ul2;->try:I

    if-lt p2, v0, :cond_5

    iget-object v1, p0, Lfreemarker/ext/jsp/else;->break:Lfreemarker/template/ObjectWrapperAndUnwrapper;

    if-eqz v1, :cond_5

    .line 8
    invoke-interface {v1, p1}, Lfreemarker/template/ObjectWrapperAndUnwrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    instance-of v1, p1, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v1, :cond_6

    .line 10
    check-cast p1, Lfreemarker/template/AdapterTemplateModel;

    sget-object p2, Lfreemarker/ext/jsp/else;->class:Ljava/lang/Class;

    invoke-interface {p1, p2}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_6
    instance-of v1, p1, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v1, :cond_7

    .line 12
    check-cast p1, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p1}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_7
    instance-of v1, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_8

    .line 14
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_8
    instance-of v1, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_9

    .line 16
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 17
    :cond_9
    instance-of v1, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_a

    .line 18
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    if-lt p2, v0, :cond_b

    .line 19
    instance-of p2, p1, Lfreemarker/template/TemplateDateModel;

    if-eqz p2, :cond_b

    .line 20
    check-cast p1, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-object p1

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Landroid/support/v4/kb2;

    const-string v0, "Failed to unwrapp FTL global variable"

    invoke-direct {p2, v0, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public package(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public private(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->new:Ljava/util/List;

    iget-object v1, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    const-string v0, "javax.servlet.jsp.jspOut"

    .line 3
    invoke-virtual {p0, v0, p1}, Lfreemarker/ext/jsp/else;->volatile(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public public(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    invoke-virtual {p2}, Ljavax/servlet/jsp/JspWriter;->flush()V

    .line 2
    :cond_0
    new-instance p2, Ljava/io/PrintWriter;

    iget-object v0, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    invoke-direct {p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/else;->else:Ljavax/servlet/http/HttpServletRequest;

    new-instance v1, Lfreemarker/ext/jsp/else$do;

    iget-object v2, p0, Lfreemarker/ext/jsp/else;->goto:Ljavax/servlet/http/HttpServletResponse;

    invoke-direct {v1, p0, v2, p2}, Lfreemarker/ext/jsp/else$do;-><init>(Lfreemarker/ext/jsp/else;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V

    invoke-interface {p1, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public return(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public static(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public strictfp(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->final()Ljavax/servlet/ServletContext;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletContext;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Lfreemarker/ext/jsp/else;->throw(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->catch()Ljavax/servlet/ServletRequest;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p2, p0, Lfreemarker/ext/jsp/else;->do:Lfreemarker/core/d0;

    invoke-virtual {p2}, Lfreemarker/core/d0;->I1()Lfreemarker/core/d0$this;

    move-result-object p2

    invoke-virtual {p2, p1}, Lfreemarker/template/native;->remove(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public super()Ljavax/servlet/http/HttpSession;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/else;->throw(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public switch()Ljavax/servlet/jsp/JspWriter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->default()V

    const-string v0, "javax.servlet.jsp.jspOut"

    .line 2
    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/else;->for(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/JspWriter;

    return-object v0
.end method

.method public this()Ljavax/servlet/jsp/JspWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->catch:Ljavax/servlet/jsp/JspWriter;

    return-object v0
.end method

.method public throws()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public try(I)Ljava/util/Enumeration;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->final()Ljavax/servlet/ServletContext;

    move-result-object p1

    invoke-interface {p1}, Ljavax/servlet/ServletContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/else;->throw(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lfreemarker/ext/jsp/else;->catch()Ljavax/servlet/ServletRequest;

    move-result-object p1

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    :try_start_0
    new-instance p1, Lfreemarker/ext/jsp/else$if;

    iget-object v0, p0, Lfreemarker/ext/jsp/else;->do:Lfreemarker/core/d0;

    .line 8
    invoke-virtual {v0}, Lfreemarker/core/d0;->I1()Lfreemarker/core/d0$this;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/jsp/else$if;-><init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/ext/jsp/else$do;)V
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Landroid/support/v4/kb2;

    invoke-direct {v0, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public volatile(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/ext/jsp/else;->interface(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public while(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
