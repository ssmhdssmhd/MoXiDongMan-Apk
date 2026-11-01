.class final Lfreemarker/core/x0;
.super Lfreemarker/core/b4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->o(I)V

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/x0;->r(Lfreemarker/core/s;)V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#if-#elseif-#else-container"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public k(Z)Lfreemarker/core/b4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v0

    check-cast v0, Lfreemarker/core/s;

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v1

    invoke-virtual {v0, v1, v0, p0}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/core/b4;->k(Z)Lfreemarker/core/b4;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lfreemarker/core/b4;->k(Z)Lfreemarker/core/b4;

    move-result-object p1

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v2

    check-cast v2, Lfreemarker/core/s;

    .line 3
    iget-object v3, v2, Lfreemarker/core/s;->class:Lfreemarker/core/h0;

    .line 4
    invoke-virtual {p1, v2}, Lfreemarker/core/d0;->i3(Lfreemarker/core/b4;)V

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, p1}, Lfreemarker/core/h0;->continue(Lfreemarker/core/d0;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Lfreemarker/core/s;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    return-void
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v3

    check-cast v3, Lfreemarker/core/s;

    .line 4
    invoke-virtual {v3, p1}, Lfreemarker/core/s;->switch(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "</#if>"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/x0;->case()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
