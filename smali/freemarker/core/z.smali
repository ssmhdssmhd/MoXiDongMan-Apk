.class final Lfreemarker/core/z;
.super Lfreemarker/core/z0;
.source "SourceFile"


# instance fields
.field private final class:Lfreemarker/core/h0;

.field private final const:Lfreemarker/core/h0;

.field private final final:Landroid/support/v4/e91;

.field private final super:Lfreemarker/core/y1;

.field private final throw:Z


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;Landroid/support/v4/e91;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/z0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/z;->class:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/z;->const:Lfreemarker/core/h0;

    .line 4
    iput-object p3, p0, Lfreemarker/core/z;->final:Landroid/support/v4/e91;

    .line 5
    instance-of p1, p3, Lfreemarker/core/y1;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    check-cast p3, Lfreemarker/core/y1;

    iput-object p3, p0, Lfreemarker/core/z;->super:Lfreemarker/core/y1;

    .line 6
    iput-boolean p4, p0, Lfreemarker/core/z;->throw:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "${...}"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->continue:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/z;->r(Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/d0;->c2()Ljava/io/Writer;

    move-result-object p1

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    iget-boolean v1, p0, Lfreemarker/core/z;->throw:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lfreemarker/core/z;->super:Lfreemarker/core/y1;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/y1;->super(Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    check-cast v0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 9
    invoke-interface {v0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lfreemarker/core/z;->final:Landroid/support/v4/e91;

    if-eq v1, v2, :cond_4

    invoke-virtual {v2}, Landroid/support/v4/e91;->for()Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    invoke-virtual {v1, v0}, Lfreemarker/core/y1;->break(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lfreemarker/core/z;->final:Landroid/support/v4/e91;

    instance-of v2, v1, Lfreemarker/core/y1;

    if-eqz v2, :cond_2

    .line 13
    check-cast v1, Lfreemarker/core/y1;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/y1;->super(Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance p1, Landroid/support/v4/vl2;

    iget-object v0, p0, Lfreemarker/core/z;->const:Lfreemarker/core/h0;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The value to print is in "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/support/v4/jl2;

    invoke-direct {v4, v1}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v1, 0x2

    const-string v3, " format, which differs from the current output format, "

    aput-object v3, v2, v1

    const/4 v1, 0x3

    new-instance v3, Landroid/support/v4/jl2;

    iget-object v4, p0, Lfreemarker/core/z;->final:Landroid/support/v4/e91;

    invoke-direct {v3, v4}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, ". Format conversion wasn\'t possible."

    aput-object v3, v2, v1

    invoke-direct {p1, v0, v2}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p1

    .line 16
    :cond_4
    invoke-virtual {v1, v0, p1}, Lfreemarker/core/y1;->final(Lfreemarker/core/TemplateMarkupOutputModel;Ljava/io/Writer;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/z;->const:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/z;->const:Lfreemarker/core/h0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/f0;->try(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(ZZ)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/static;->getInterpolationSyntax()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    const-string v3, "${"

    goto :goto_0

    :cond_0
    const-string v3, "[="

    .line 3
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v3, p0, Lfreemarker/core/z;->class:Lfreemarker/core/h0;

    invoke-virtual {v3}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    const/16 p2, 0x22

    .line 5
    invoke-static {v3, p2}, Lfreemarker/template/utility/super;->for(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_2

    const-string p2, "}"

    goto :goto_1

    :cond_2
    const-string p2, "]"

    .line 6
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lfreemarker/core/z;->class:Lfreemarker/core/h0;

    iget-object p2, p0, Lfreemarker/core/z;->const:Lfreemarker/core/h0;

    if-eq p1, p2, :cond_3

    const-string p1, " auto-escaped"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/z;->class:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
