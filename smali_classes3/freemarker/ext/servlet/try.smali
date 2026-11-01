.class public Lfreemarker/ext/servlet/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/servlet/try$if;
    }
.end annotation


# instance fields
.field private final do:Ljavax/servlet/http/HttpServletRequest;

.field private final if:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/servlet/try;->do:Ljavax/servlet/http/HttpServletRequest;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/servlet/try;->if:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method


# virtual methods
.method public execute(Lfreemarker/core/d0;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "path"

    .line 1
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lfreemarker/template/TemplateModel;

    if-eqz p3, :cond_9

    .line 2
    instance-of p4, p3, Lfreemarker/template/TemplateScalarModel;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_8

    .line 3
    check-cast p3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 4
    invoke-virtual {p1}, Lfreemarker/core/d0;->c2()Ljava/io/Writer;

    move-result-object p4

    .line 5
    iget-object v3, p0, Lfreemarker/ext/servlet/try;->if:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-ne p4, v3, :cond_0

    .line 6
    iget-object p4, p0, Lfreemarker/ext/servlet/try;->if:Ljavax/servlet/http/HttpServletResponse;

    goto :goto_1

    .line 7
    :cond_0
    instance-of v3, p4, Ljava/io/PrintWriter;

    if-eqz v3, :cond_1

    check-cast p4, Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p4, v3

    .line 8
    :goto_0
    new-instance v3, Lfreemarker/ext/servlet/try$do;

    iget-object v4, p0, Lfreemarker/ext/servlet/try;->if:Ljavax/servlet/http/HttpServletResponse;

    invoke-direct {v3, p0, v4, p4}, Lfreemarker/ext/servlet/try$do;-><init>(Lfreemarker/ext/servlet/try;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V

    move-object p4, v3

    :goto_1
    const-string v3, "inherit_params"

    .line 9
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateModel;

    const/4 v4, 0x3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 10
    :cond_2
    instance-of v5, v3, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v5, :cond_6

    .line 11
    check-cast v3, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v3

    :goto_2
    const-string v5, "params"

    .line 12
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/TemplateModel;

    if-nez p2, :cond_3

    if-eqz v3, :cond_3

    .line 13
    iget-object p2, p0, Lfreemarker/ext/servlet/try;->do:Ljavax/servlet/http/HttpServletRequest;

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_5

    .line 14
    invoke-static {p2}, Lfreemarker/template/utility/try;->for(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    instance-of v5, p2, Ljava/util/Map;

    if-eqz v5, :cond_4

    .line 16
    check-cast p2, Ljava/util/Map;

    goto :goto_3

    .line 17
    :cond_4
    new-instance p3, Landroid/support/v4/nl2;

    new-array p4, v4, [Ljava/lang/Object;

    const-string v3, "Expected \"params\" to unwrap into a java.util.Map. It unwrapped into "

    aput-object v3, p4, v0

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v2

    const-string p2, " instead."

    aput-object p2, p4, v1

    invoke-direct {p3, p1, p4}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p3

    .line 19
    :cond_5
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 20
    :goto_3
    new-instance v0, Lfreemarker/ext/servlet/try$if;

    iget-object v1, p0, Lfreemarker/ext/servlet/try;->do:Ljavax/servlet/http/HttpServletRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v3, v2}, Lfreemarker/ext/servlet/try$if;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/util/Map;ZLfreemarker/ext/servlet/try$do;)V

    move-object p2, v0

    .line 21
    :goto_4
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/servlet/try;->do:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p3

    invoke-interface {p3, p2, p4}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 22
    new-instance p3, Landroid/support/v4/nl2;

    invoke-direct {p3, p2, p1}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;)V

    throw p3

    .line 23
    :cond_6
    new-instance p2, Landroid/support/v4/nl2;

    new-array p3, v4, [Ljava/lang/Object;

    const-string p4, "\"inherit_params\" should be a boolean but it\'s a(n) "

    aput-object p4, p3, v0

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    const-string p4, " instead"

    aput-object p4, p3, v1

    invoke-direct {p2, p1, p3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2

    .line 25
    :cond_7
    new-instance p2, Landroid/support/v4/nl2;

    const-string p3, "String value of \"path\" parameter is null"

    invoke-direct {p2, p1, p3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_8
    new-instance p2, Landroid/support/v4/nl2;

    new-array p4, v1, [Ljava/lang/Object;

    const-string v1, "Expected a scalar model. \"path\" is instead "

    aput-object v1, p4, v0

    new-instance v0, Landroid/support/v4/bl2;

    invoke-direct {v0, p3}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    aput-object v0, p4, v2

    invoke-direct {p2, p1, p4}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2

    .line 27
    :cond_9
    new-instance p2, Landroid/support/v4/nl2;

    const-string p3, "Missing required parameter \"path\""

    invoke-direct {p2, p1, p3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p2
.end method
