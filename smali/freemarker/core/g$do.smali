.class abstract Lfreemarker/core/g$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# instance fields
.field public final do:Lfreemarker/core/return;

.field private final for:Lfreemarker/core/d0;

.field public final if:Ljava/lang/String;

.field private new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/return;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/g$do;->do:Lfreemarker/core/return;

    .line 3
    iput-object p2, p0, Lfreemarker/core/g$do;->if:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lfreemarker/core/g$do;->for:Lfreemarker/core/d0;

    return-void
.end method


# virtual methods
.method public abstract do(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/g$do;->do:Lfreemarker/core/return;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfreemarker/core/return;->d(II)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/support/v4/ez1;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/g$do;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroid/support/v4/vl2;

    const-string v1, "Failed to execute URL encoding."

    invoke-direct {v0, p1, v1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/g$do;->new:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/core/g$do;->for:Lfreemarker/core/d0;

    invoke-virtual {v0}, Lfreemarker/core/d0;->F1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lfreemarker/core/g$do;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/g$do;->new:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Landroid/support/v4/vl2;

    const-string v2, "Failed to execute URL encoding."

    invoke-direct {v1, v0, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_0
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "To do URL encoding, the framework that encloses FreeMarker must specify the \""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "output_encoding"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\" setting or the \""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "url_escaping_charset"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v4, "\" setting, so ask the programmers to set them. Or, as a last chance, you can set the url_encoding_charset setting in the template, e.g. <#setting "

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "=\'ISO-8859-1\'>, or give the charset explicitly to the built-in, e.g. foo?url(\'ISO-8859-1\')."

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/core/g$do;->new:Ljava/lang/String;

    return-object v0
.end method
