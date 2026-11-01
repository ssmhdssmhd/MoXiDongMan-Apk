.class public final Lfreemarker/core/r1;
.super Lfreemarker/core/b4;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private class:Lfreemarker/core/h0;

.field private const:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/template/static;Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p3, p0, Lfreemarker/core/r1;->const:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/core/r1;->class:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#import"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->class:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->static:Lfreemarker/core/f3;

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/r1;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v6

    invoke-virtual {v6}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v0}, Lfreemarker/core/d0;->x3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/support/v4/fx0; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v7, p0, Lfreemarker/core/r1;->const:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lfreemarker/core/d0;->H2(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/d0$this;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception v6

    .line 4
    new-instance v7, Landroid/support/v4/nl2;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "Template importing failed (for parameter value "

    aput-object v8, v5, v4

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, v0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v5, v3

    const-string v0, "):\n"

    aput-object v0, v5, v2

    new-instance v0, Landroid/support/v4/dl2;

    invoke-direct {v0, v6}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    aput-object v0, v5, v1

    invoke-direct {v7, v6, p1, v5}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v7

    :catch_1
    move-exception v0

    .line 5
    new-instance v6, Landroid/support/v4/nl2;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "Malformed template name "

    aput-object v7, v5, v4

    new-instance v4, Landroid/support/v4/fl2;

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/fx0;->getTemplateName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v5, v3

    const-string v3, ":\n"

    aput-object v3, v5, v2

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/fx0;->getMalformednessDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-direct {v6, v0, p1, v5}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v6
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/r1;->class:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h4;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/r1;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/r1;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lfreemarker/core/r1;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "/>"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/r1;->const:Ljava/lang/String;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/r1;->class:Lfreemarker/core/h0;

    return-object p1
.end method
