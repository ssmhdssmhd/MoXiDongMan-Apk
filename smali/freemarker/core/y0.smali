.class final Lfreemarker/core/y0;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private final class:Lfreemarker/core/h0;

.field private final const:Lfreemarker/core/h0;

.field private final final:Lfreemarker/core/h0;

.field private final import:Ljava/lang/Boolean;

.field private final super:Lfreemarker/core/h0;

.field private final throw:Ljava/lang/String;

.field private final while:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lfreemarker/template/static;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/h0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/y0;->class:Lfreemarker/core/h0;

    .line 3
    iput-object p3, p0, Lfreemarker/core/y0;->const:Lfreemarker/core/h0;

    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 4
    iput-object p2, p0, Lfreemarker/core/y0;->throw:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p3, p2}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/y0;->throw:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lfreemarker/core/h3;

    const-string p2, "Expected a string as the value of the \"encoding\" argument"

    invoke-direct {p1, p2, p3}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Landroid/support/v4/mc;

    invoke-direct {p2, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_2
    iput-object p2, p0, Lfreemarker/core/y0;->throw:Ljava/lang/String;

    .line 12
    :goto_0
    iput-object p4, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    if-nez p4, :cond_3

    .line 13
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p3, p0, Lfreemarker/core/y0;->while:Ljava/lang/Boolean;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p4}, Lfreemarker/core/h0;->instanceof()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 15
    :try_start_1
    instance-of p3, p4, Lfreemarker/core/x3;

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p4, p2}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/y0;->while:Ljava/lang/Boolean;
    :try_end_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 17
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object p3

    invoke-virtual {p4, p3}, Lfreemarker/core/h0;->volatile(Lfreemarker/template/do;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/y0;->while:Ljava/lang/Boolean;
    :try_end_2
    .catch Lfreemarker/core/h2; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfreemarker/template/TemplateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    :try_start_3
    new-instance p2, Lfreemarker/core/h3;

    const-string p3, "Expected a boolean or string as the value of the parse attribute"

    invoke-direct {p2, p3, p4, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catch Lfreemarker/template/TemplateException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 19
    new-instance p2, Landroid/support/v4/mc;

    invoke-direct {p2, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 20
    :cond_5
    iput-object p2, p0, Lfreemarker/core/y0;->while:Ljava/lang/Boolean;

    .line 21
    :goto_1
    iput-object p5, p0, Lfreemarker/core/y0;->super:Lfreemarker/core/h0;

    if-eqz p5, :cond_6

    .line 22
    invoke-virtual {p5}, Lfreemarker/core/h0;->instanceof()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 23
    :try_start_4
    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object p1

    invoke-virtual {p5, p1}, Lfreemarker/core/h0;->volatile(Lfreemarker/template/do;)Z

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/y0;->import:Ljava/lang/Boolean;
    :try_end_4
    .catch Lfreemarker/core/h2; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    .line 25
    :try_start_5
    new-instance p2, Lfreemarker/core/h3;

    const-string p3, "Expected a boolean as the value of the \"ignore_missing\" attribute"

    invoke-direct {p2, p3, p5, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Lfreemarker/template/TemplateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 26
    :goto_2
    new-instance p2, Landroid/support/v4/mc;

    invoke-direct {p2, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 27
    :cond_6
    iput-object p2, p0, Lfreemarker/core/y0;->import:Ljava/lang/Boolean;

    :goto_3
    return-void
.end method

.method private r(Lfreemarker/core/h0;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Value must be boolean (or one of these strings: \"n\", \"no\", \"f\", \"false\", \"y\", \"yes\", \"t\", \"true\"), but it was "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/fl2;

    invoke-direct {v3, p2}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p2, 0x2

    const-string v2, "."

    aput-object v2, v1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#include"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->default:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->throws:Lfreemarker/core/f3;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lfreemarker/core/f3;->switch:Lfreemarker/core/f3;

    return-object p1

    .line 5
    :cond_3
    sget-object p1, Lfreemarker/core/f3;->static:Lfreemarker/core/f3;

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/y0;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

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
    iget-object v7, p0, Lfreemarker/core/y0;->throw:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lfreemarker/core/y0;->const:Lfreemarker/core/h0;

    if-eqz v7, :cond_1

    .line 4
    invoke-virtual {v7, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v8

    .line 5
    :goto_0
    iget-object v9, p0, Lfreemarker/core/y0;->while:Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    .line 6
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_1

    .line 7
    :cond_2
    iget-object v9, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    invoke-virtual {v9, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v9

    .line 8
    instance-of v10, v9, Lfreemarker/template/TemplateScalarModel;

    if-eqz v10, :cond_3

    .line 9
    iget-object v10, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    check-cast v9, Lfreemarker/template/TemplateScalarModel;

    invoke-static {v9, v10, p1}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v10, v9}, Lfreemarker/core/y0;->r(Lfreemarker/core/h0;Ljava/lang/String;)Z

    move-result v9

    goto :goto_1

    .line 10
    :cond_3
    iget-object v10, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    invoke-virtual {v10, v9, p1}, Lfreemarker/core/h0;->synchronized(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result v9

    .line 11
    :goto_1
    iget-object v10, p0, Lfreemarker/core/y0;->import:Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    .line 12
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_2

    .line 13
    :cond_4
    iget-object v10, p0, Lfreemarker/core/y0;->super:Lfreemarker/core/h0;

    if-eqz v10, :cond_5

    .line 14
    invoke-virtual {v10, p1}, Lfreemarker/core/h0;->continue(Lfreemarker/core/d0;)Z

    move-result v10

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 15
    :goto_2
    :try_start_1
    invoke-virtual {p1, v6, v7, v9, v10}, Lfreemarker/core/d0;->u2(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V

    :cond_6
    return-object v8

    :catch_0
    move-exception v6

    .line 17
    new-instance v7, Landroid/support/v4/nl2;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "Template inclusion failed (for parameter value "

    aput-object v8, v4, v5

    new-instance v5, Landroid/support/v4/fl2;

    invoke-direct {v5, v0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v3

    const-string v0, "):\n"

    aput-object v0, v4, v2

    new-instance v0, Landroid/support/v4/dl2;

    invoke-direct {v0, v6}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    aput-object v0, v4, v1

    invoke-direct {v7, v6, p1, v4}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v7

    :catch_1
    move-exception v0

    .line 18
    new-instance v6, Landroid/support/v4/nl2;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "Malformed template name "

    aput-object v7, v4, v5

    new-instance v5, Landroid/support/v4/fl2;

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/fx0;->getTemplateName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v3

    const-string v3, ":\n"

    aput-object v3, v4, v2

    .line 20
    invoke-virtual {v0}, Landroid/support/v4/fx0;->getMalformednessDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-direct {v6, v0, p1, v4}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v6
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
    invoke-virtual {p0}, Lfreemarker/core/y0;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/y0;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lfreemarker/core/y0;->const:Lfreemarker/core/h0;

    if-eqz v1, :cond_1

    const-string v1, " encoding="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/y0;->const:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v1, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    if-eqz v1, :cond_2

    const-string v1, " parse="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    iget-object v1, p0, Lfreemarker/core/y0;->super:Lfreemarker/core/h0;

    if-eqz v1, :cond_3

    const-string v1, " ignore_missing="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/y0;->super:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "/>"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/y0;->super:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/y0;->const:Lfreemarker/core/h0;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lfreemarker/core/y0;->final:Lfreemarker/core/h0;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Lfreemarker/core/y0;->class:Lfreemarker/core/h0;

    return-object p1
.end method
