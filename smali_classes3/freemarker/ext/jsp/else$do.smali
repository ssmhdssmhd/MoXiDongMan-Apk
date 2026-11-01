.class Lfreemarker/ext/jsp/else$do;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/else;->public(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/io/PrintWriter;

.field public final synthetic if:Lfreemarker/ext/jsp/else;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/else;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/else$do;->if:Lfreemarker/ext/jsp/else;

    iput-object p3, p0, Lfreemarker/ext/jsp/else$do;->do:Ljava/io/PrintWriter;

    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method


# virtual methods
.method public do()Ljavax/servlet/ServletOutputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JSP-included resource must use getWriter()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if()Ljava/io/PrintWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/else$do;->do:Ljava/io/PrintWriter;

    return-object v0
.end method
