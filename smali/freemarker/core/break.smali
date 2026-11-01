.class final Lfreemarker/core/break;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private class:I

.field private const:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/core/break;->class:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->o(I)V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/break;->class:I

    invoke-static {v0}, Lfreemarker/core/this;->r(I)Ljava/lang/String;

    move-result-object v0

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

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lfreemarker/core/f3;->class:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->catch:Lfreemarker/core/f3;

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object p1

    return-object p1
.end method

.method public r(Lfreemarker/core/this;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    return-void
.end method

.method public s(Lfreemarker/core/h0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lfreemarker/core/break;->const:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v2

    check-cast v2, Lfreemarker/core/this;

    invoke-virtual {v2, p1}, Lfreemarker/core/this;->u(Lfreemarker/core/h0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget v1, p0, Lfreemarker/core/break;->class:I

    invoke-static {v1}, Lfreemarker/core/this;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-eqz v2, :cond_1

    const-string v3, ", "

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {p0, v2}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v3

    check-cast v3, Lfreemarker/core/this;

    .line 8
    invoke-virtual {v3}, Lfreemarker/core/b4;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "-container"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    iget-object v1, p0, Lfreemarker/core/break;->const:Lfreemarker/core/h0;

    if-eqz v1, :cond_4

    const-string v1, " in "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lfreemarker/core/break;->const:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, ">"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lfreemarker/core/break;->const:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_1
    iget p1, p0, Lfreemarker/core/break;->class:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
