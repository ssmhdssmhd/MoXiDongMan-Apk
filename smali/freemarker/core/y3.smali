.class final Lfreemarker/core/y3;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private class:Lfreemarker/core/l;

.field private final const:Lfreemarker/core/h0;

.field private final:I


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/c2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/y3;->const:Lfreemarker/core/h0;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lfreemarker/core/b4;->package()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x4

    .line 4
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->o(I)V

    :goto_1
    if-ge p1, v0, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Lfreemarker/core/y3;->final:I

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#switch"

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
    sget-object p1, Lfreemarker/core/f3;->throw:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public k(Z)Lfreemarker/core/b4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/b4;->k(Z)Lfreemarker/core/b4;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v2

    instance-of v2, v2, Lfreemarker/core/l;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lfreemarker/core/y3;->final:I

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    .line 2
    :try_start_0
    iget v1, p0, Lfreemarker/core/y3;->final:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v4

    check-cast v4, Lfreemarker/core/l;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v10, v4, Lfreemarker/core/l;->class:Lfreemarker/core/h0;

    if-eqz v10, :cond_1

    .line 5
    iget-object v6, p0, Lfreemarker/core/y3;->const:Lfreemarker/core/h0;

    const/4 v7, 0x1

    const-string v8, "case=="

    move-object v9, v10

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Lfreemarker/core/f0;->this(Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/d0;)Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {p1, v4}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 7
    iget-object v0, p0, Lfreemarker/core/y3;->class:Lfreemarker/core/l;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/core/public; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Lfreemarker/core/l;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lfreemarker/core/l;->class:Lfreemarker/core/h0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lfreemarker/core/y3;->class:Lfreemarker/core/l;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

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
    invoke-virtual {p0}, Lfreemarker/core/y3;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/y3;->const:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/16 p1, 0x3e

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v3

    invoke-virtual {v3}, Lfreemarker/core/b4;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "</"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/core/y3;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/y3;->const:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
