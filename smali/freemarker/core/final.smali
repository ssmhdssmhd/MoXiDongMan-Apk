.class final Lfreemarker/core/final;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private final class:Ljava/lang/String;

.field private final const:Lfreemarker/core/h0;

.field private final final:I

.field private final super:Lfreemarker/core/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfreemarker/core/y1<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfreemarker/core/c4;Ljava/lang/String;ILfreemarker/core/h0;Lfreemarker/core/y1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/c4;",
            "Ljava/lang/String;",
            "I",
            "Lfreemarker/core/h0;",
            "Lfreemarker/core/y1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    .line 3
    iput-object p2, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lfreemarker/core/final;->const:Lfreemarker/core/h0;

    .line 5
    iput p3, p0, Lfreemarker/core/final;->final:I

    .line 6
    iput-object p5, p0, Lfreemarker/core/final;->super:Lfreemarker/core/y1;

    return-void
.end method

.method private r(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/final;->super:Lfreemarker/core/y1;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/ez1;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/y1;->else(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/final;->final:I

    invoke-static {v0}, Lfreemarker/core/this;->r(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

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
    sget-object p1, Lfreemarker/core/f3;->catch:Lfreemarker/core/f3;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lfreemarker/core/f3;->goto:Lfreemarker/core/f3;

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-virtual {p1, v0, v1}, Lfreemarker/core/d0;->C3([Lfreemarker/core/b4;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/final;->r(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/core/final;->r(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Lfreemarker/core/final;->const:Lfreemarker/core/h0;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/core/d0$this;

    iget-object v1, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    iget v1, p0, Lfreemarker/core/final;->final:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/d0;->u3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/d0;->p3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/d0;->r3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Landroid/support/v4/mc;

    const-string v0, "Unhandled scope"

    invoke-direct {p1, v0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "<"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/final;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lfreemarker/core/final;->const:Lfreemarker/core/h0;

    if-eqz v1, :cond_1

    const-string v1, " in "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lfreemarker/core/final;->const:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x3e

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lfreemarker/core/final;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, " = .nested_output"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/final;->const:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget p1, p0, Lfreemarker/core/final;->final:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lfreemarker/core/final;->class:Ljava/lang/String;

    return-object p1
.end method
