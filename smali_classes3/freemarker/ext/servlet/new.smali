.class public final Lfreemarker/ext/servlet/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient do:Ljavax/servlet/http/HttpSession;

.field private final transient for:Lfreemarker/ext/servlet/FreemarkerServlet;

.field private final transient if:Lfreemarker/template/ObjectWrapper;

.field private final transient new:Ljavax/servlet/http/HttpServletRequest;

.field private final transient try:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Lfreemarker/ext/servlet/FreemarkerServlet;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p4, p0, Lfreemarker/ext/servlet/new;->if:Lfreemarker/template/ObjectWrapper;

    .line 9
    iput-object p1, p0, Lfreemarker/ext/servlet/new;->for:Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 10
    iput-object p2, p0, Lfreemarker/ext/servlet/new;->new:Ljavax/servlet/http/HttpServletRequest;

    .line 11
    iput-object p3, p0, Lfreemarker/ext/servlet/new;->try:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/servlet/new;->do:Ljavax/servlet/http/HttpSession;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/servlet/new;->if:Lfreemarker/template/ObjectWrapper;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lfreemarker/ext/servlet/new;->for:Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 5
    iput-object p1, p0, Lfreemarker/ext/servlet/new;->new:Ljavax/servlet/http/HttpServletRequest;

    .line 6
    iput-object p1, p0, Lfreemarker/ext/servlet/new;->try:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method

.method private do()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/new;->do:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/ext/servlet/new;->new:Ljavax/servlet/http/HttpServletRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/servlet/new;->do:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/ext/servlet/new;->for:Lfreemarker/ext/servlet/FreemarkerServlet;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lfreemarker/ext/servlet/new;->new:Ljavax/servlet/http/HttpServletRequest;

    iget-object v3, p0, Lfreemarker/ext/servlet/new;->try:Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v1, v2, v3, p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->throws(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/ext/servlet/new;Ljavax/servlet/http/HttpSession;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 6
    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/servlet/new;->do()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/servlet/new;->if:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/new;->do:Ljavax/servlet/http/HttpSession;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/servlet/new;->do()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/servlet/new;->do:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOrphaned(Ljavax/servlet/http/HttpSession;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/new;->do:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object p1, p0, Lfreemarker/ext/servlet/new;->new:Ljavax/servlet/http/HttpServletRequest;

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
