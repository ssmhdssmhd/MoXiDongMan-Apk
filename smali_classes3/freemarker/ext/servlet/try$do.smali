.class Lfreemarker/ext/servlet/try$do;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/servlet/try;->execute(Lfreemarker/core/d0;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/io/PrintWriter;

.field public final synthetic if:Lfreemarker/ext/servlet/try;


# direct methods
.method public constructor <init>(Lfreemarker/ext/servlet/try;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/servlet/try$do;->if:Lfreemarker/ext/servlet/try;

    iput-object p3, p0, Lfreemarker/ext/servlet/try$do;->do:Ljava/io/PrintWriter;

    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/PrintWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/try$do;->do:Ljava/io/PrintWriter;

    return-object v0
.end method
