.class public final Lfreemarker/ext/servlet/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# instance fields
.field private final do:Ljavax/servlet/GenericServlet;

.field private final for:Lfreemarker/template/ObjectWrapper;

.field private final if:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>(Ljavax/servlet/GenericServlet;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/servlet/else;->do:Ljavax/servlet/GenericServlet;

    .line 3
    invoke-virtual {p1}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/servlet/else;->if:Ljavax/servlet/ServletContext;

    .line 4
    iput-object p2, p0, Lfreemarker/ext/servlet/else;->for:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;Lfreemarker/template/ObjectWrapper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lfreemarker/ext/servlet/else;->do:Ljavax/servlet/GenericServlet;

    .line 7
    iput-object p1, p0, Lfreemarker/ext/servlet/else;->if:Ljavax/servlet/ServletContext;

    .line 8
    iput-object p2, p0, Lfreemarker/ext/servlet/else;->for:Lfreemarker/template/ObjectWrapper;

    return-void
.end method


# virtual methods
.method public do()Ljavax/servlet/GenericServlet;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/else;->do:Ljavax/servlet/GenericServlet;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/else;->for:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/else;->if:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/else;->if:Ljavax/servlet/ServletContext;

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
