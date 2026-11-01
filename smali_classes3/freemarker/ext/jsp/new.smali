.class abstract Lfreemarker/ext/jsp/new;
.super Ljavax/servlet/jsp/JspFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/servlet/jsp/JspFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljavax/servlet/jsp/JspEngineInfo;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/new$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/new$do;-><init>(Lfreemarker/ext/jsp/new;)V

    return-object v0
.end method

.method public abstract for()Ljava/lang/String;
.end method

.method public if(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)Ljavax/servlet/jsp/PageContext;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public new(Ljavax/servlet/jsp/PageContext;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
