.class final Lfreemarker/core/s4;
.super Lfreemarker/core/b4;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/DirectiveCallPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/s4$do;
    }
.end annotation


# instance fields
.field private class:Lfreemarker/core/h0;

.field private const:Ljava/util/Map;

.field private final:Ljava/util/List;

.field private import:Lfreemarker/core/s4$do;

.field private super:Ljava/util/List;

.field public throw:Z

.field private volatile transient while:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Ljava/util/List;Lfreemarker/core/c4;Ljava/util/List;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 7
    iput-object p1, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    .line 8
    iput-object p2, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    .line 9
    invoke-virtual {p0, p3}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    .line 10
    iput-object p4, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Ljava/util/Map;Lfreemarker/core/c4;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    .line 4
    invoke-virtual {p0, p3}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    .line 5
    iput-object p4, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    return-void
.end method

.method private r(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Lfreemarker/core/s4$do;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ef;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Lfreemarker/template/utility/ObjectFactory;->createObject()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "ObjectFactory.createObject() has returned null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lfreemarker/core/s4$do;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/s4$do;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Landroid/support/v4/ef;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize custom data for provider identity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lfreemarker/template/utility/super;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " via factory "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Lfreemarker/template/utility/super;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/support/v4/ef;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private s()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/s4;->while:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    invoke-static {v0}, Lfreemarker/core/b2;->if(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/core/s4;->while:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "@"

    return-object v0
.end method

.method public else()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOrCreateCustomData(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ef;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/s4;->import:Lfreemarker/core/s4$do;

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/s4;->import:Lfreemarker/core/s4$do;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lfreemarker/core/s4$do;->do(Lfreemarker/core/s4$do;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lfreemarker/core/s4;->r(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Lfreemarker/core/s4$do;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lfreemarker/core/s4;->import:Lfreemarker/core/s4$do;

    .line 7
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-static {v0}, Lfreemarker/core/s4$do;->do(Lfreemarker/core/s4$do;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_5

    .line 9
    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/s4;->import:Lfreemarker/core/s4$do;

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0}, Lfreemarker/core/s4$do;->do(Lfreemarker/core/s4$do;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_4

    .line 12
    :cond_3
    invoke-direct {p0, p1, p2}, Lfreemarker/core/s4;->r(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Lfreemarker/core/s4$do;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lfreemarker/core/s4;->import:Lfreemarker/core/s4$do;

    move-object v0, p1

    .line 14
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 15
    :cond_5
    :goto_1
    invoke-static {v0}, Lfreemarker/core/s4$do;->if(Lfreemarker/core/s4$do;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->implements:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v2, v0, :cond_2

    .line 3
    sget-object p1, Lfreemarker/core/f3;->abstract:Lfreemarker/core/f3;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v2, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sub-int v3, p1, v0

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_5

    .line 5
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    sget-object p1, Lfreemarker/core/f3;->private:Lfreemarker/core/f3;

    goto :goto_2

    :cond_4
    sget-object p1, Lfreemarker/core/f3;->abstract:Lfreemarker/core/f3;

    :goto_2
    return-object p1

    :cond_5
    add-int/2addr v0, v2

    .line 6
    iget-object v2, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_7

    .line 7
    sget-object p1, Lfreemarker/core/f3;->return:Lfreemarker/core/f3;

    return-object p1

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNestedOutputCacheable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->c()Z

    move-result v0

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
    iget-object v0, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    sget-object v1, Lfreemarker/core/x1;->while:Lfreemarker/core/x1;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    instance-of v1, v0, Lfreemarker/core/x1;

    if-eqz v1, :cond_3

    .line 4
    move-object v4, v0

    check-cast v4, Lfreemarker/core/x1;

    .line 5
    invoke-virtual {v4}, Lfreemarker/core/x1;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lfreemarker/core/s4;->throw:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Routine "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/fl2;

    .line 7
    invoke-virtual {v4}, Lfreemarker/core/x1;->x()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " is a function, not a directive. Functions can only be called from expressions, like in ${f()}, ${x + f()} or "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "<@someDirective someParam=f() />"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "."

    aput-object v3, v1, v2

    invoke-direct {v0, p1, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_2
    :goto_0
    iget-object v5, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    iget-object v6, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    iget-object v7, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    move-object v3, p1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lfreemarker/core/d0;->P2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V

    goto :goto_3

    .line 9
    :cond_3
    instance-of v1, v0, Lfreemarker/template/TemplateDirectiveModel;

    if-nez v1, :cond_6

    .line 10
    instance-of v3, v0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    .line 12
    :cond_5
    new-instance v1, Lfreemarker/core/w2;

    iget-object v2, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/w2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1

    .line 13
    :cond_6
    :goto_1
    iget-object v3, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15
    iget-object v4, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 18
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/h0;

    .line 19
    invoke-virtual {v5, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    .line 20
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_7
    sget-object v3, Landroid/support/v4/y60;->do:Landroid/support/v4/y60;

    :cond_8
    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {p0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v1

    check-cast v0, Lfreemarker/template/TemplateDirectiveModel;

    iget-object v4, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    invoke-virtual {p1, v1, v0, v3, v4}, Lfreemarker/core/d0;->B3([Lfreemarker/core/b4;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_3

    .line 23
    :cond_9
    invoke-virtual {p0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v1

    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    invoke-virtual {p1, v1, v0, v3}, Lfreemarker/core/d0;->D3([Lfreemarker/core/b4;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    :goto_3
    return-object v2
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x40

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    invoke-static {v0, v1}, Lfreemarker/core/b5;->do(Ljava/lang/StringBuilder;Lfreemarker/core/h0;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    const/16 v3, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v5, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 8
    iget-object v5, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/h0;

    if-eqz v1, :cond_2

    const/16 v6, 0x2c

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v5}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-direct {p0}, Lfreemarker/core/s4;->s()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    .line 13
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 14
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/h0;

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    .line 18
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {v0, v7}, Lfreemarker/core/b5;->do(Ljava/lang/StringBuilder;Lfreemarker/core/h0;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 20
    :cond_4
    iget-object v1, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "; "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_3
    iget-object v1, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    if-eqz v4, :cond_5

    const-string v1, ", "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_5
    iget-object v1, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "/>"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/16 p1, 0x3e

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</@"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_9

    .line 30
    iget-object v1, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    instance-of v2, v1, Lfreemarker/core/w0;

    if-nez v2, :cond_8

    instance-of v2, v1, Lfreemarker/core/a0;

    if-eqz v2, :cond_9

    check-cast v1, Lfreemarker/core/a0;

    .line 31
    invoke-virtual {v1}, Lfreemarker/core/a0;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32
    :cond_8
    iget-object v1, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/s4;->class:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v2, v0, :cond_2

    .line 3
    iget-object p1, p0, Lfreemarker/core/s4;->final:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v2, p0, Lfreemarker/core/s4;->const:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sub-int v3, p1, v0

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_5

    .line 5
    invoke-direct {p0}, Lfreemarker/core/s4;->s()Ljava/util/List;

    move-result-object p1

    div-int/lit8 v0, v3, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 6
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    add-int/2addr v0, v2

    .line 7
    iget-object v2, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_7

    .line 8
    iget-object v0, p0, Lfreemarker/core/s4;->super:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
