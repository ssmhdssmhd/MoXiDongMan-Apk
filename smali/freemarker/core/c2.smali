.class final Lfreemarker/core/c2;
.super Lfreemarker/core/b4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#mixed_content"

    return-object v0
.end method

.method public d(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

.method public g()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v3

    invoke-virtual {v3}, Lfreemarker/core/b4;->g()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/b4;->k(Z)Lfreemarker/core/b4;

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
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

.method public r(ILfreemarker/core/b4;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/b4;->public(ILfreemarker/core/b4;)V

    return-void
.end method

.method public s(Lfreemarker/core/b4;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    return-void
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "root"

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/c2;->case()Ljava/lang/String;

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
