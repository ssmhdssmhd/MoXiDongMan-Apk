.class final Lfreemarker/core/super;
.super Lfreemarker/core/b4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/super$do;
    }
.end annotation


# instance fields
.field private class:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    return-void
.end method

.method public static synthetic r(Lfreemarker/core/super;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    return-object p0
.end method

.method private s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#nested"

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    invoke-direct {p0, p1}, Lfreemarker/core/super;->s(I)V

    .line 2
    sget-object p1, Lfreemarker/core/f3;->final:Lfreemarker/core/f3;

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/super$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/super$do;-><init>(Lfreemarker/core/super;Lfreemarker/core/d0;)V

    .line 2
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->R2(Lfreemarker/core/super$do;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/super;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x3e

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/super;->s(I)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/super;->class:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
