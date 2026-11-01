.class final Lfreemarker/core/n4;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private class:Lfreemarker/core/h0;

.field public const:Ljava/util/Map;

.field private volatile transient final:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Ljava/util/Map;Lfreemarker/core/c4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/n4;->class:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    .line 4
    invoke-virtual {p0, p3}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    return-void
.end method

.method private r()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/n4;->final:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    invoke-static {v0}, Lfreemarker/core/b2;->if(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/core/n4;->final:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#transform"

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->implements:Lfreemarker/core/f3;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2
    iget-object v0, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    .line 3
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    sget-object p1, Lfreemarker/core/f3;->private:Lfreemarker/core/f3;

    goto :goto_0

    :cond_1
    sget-object p1, Lfreemarker/core/f3;->abstract:Lfreemarker/core/f3;

    :goto_0
    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/n4;->class:Lfreemarker/core/h0;

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->C2(Lfreemarker/core/h0;)Lfreemarker/template/TemplateTransformModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    .line 8
    invoke-virtual {v3, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 9
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Landroid/support/v4/y60;->do:Landroid/support/v4/y60;

    .line 11
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lfreemarker/core/d0;->D3([Lfreemarker/core/b4;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_2
    iget-object v0, p0, Lfreemarker/core/n4;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 13
    new-instance v0, Lfreemarker/core/r4;

    iget-object v2, p0, Lfreemarker/core/n4;->class:Lfreemarker/core/h0;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v4, Lfreemarker/template/TemplateTransformModel;

    aput-object v4, v5, v1

    const-string v4, "transform"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/n4;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lfreemarker/core/n4;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0}, Lfreemarker/core/n4;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    invoke-static {v0, v3}, Lfreemarker/core/b5;->do(Ljava/lang/StringBuilder;Lfreemarker/core/h0;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, ">"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/core/n4;->case()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/n4;->class:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/n4;->const:Ljava/util/Map;

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    .line 3
    invoke-direct {p0}, Lfreemarker/core/n4;->r()Ljava/util/List;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
