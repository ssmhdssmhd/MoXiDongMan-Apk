.class Lfreemarker/core/x1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final case:Lfreemarker/core/x1$do;

.field public final do:Lfreemarker/core/d0$this;

.field public final synthetic else:Lfreemarker/core/x1;

.field public final for:Lfreemarker/core/d0$this;

.field public final if:Lfreemarker/core/h4;

.field public final new:Ljava/util/List;

.field public final try:Lfreemarker/core/v1;


# direct methods
.method public constructor <init>(Lfreemarker/core/x1;Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lfreemarker/core/d0$this;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lfreemarker/core/d0$this;-><init>(Lfreemarker/core/d0;)V

    iput-object p1, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    .line 3
    iput-object p3, p0, Lfreemarker/core/x1$do;->if:Lfreemarker/core/h4;

    .line 4
    invoke-virtual {p2}, Lfreemarker/core/d0;->y1()Lfreemarker/core/d0$this;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/x1$do;->for:Lfreemarker/core/d0$this;

    .line 5
    iput-object p4, p0, Lfreemarker/core/x1$do;->new:Ljava/util/List;

    .line 6
    invoke-virtual {p2}, Lfreemarker/core/d0;->R1()Lfreemarker/core/v1;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/x1$do;->try:Lfreemarker/core/v1;

    .line 7
    invoke-virtual {p2}, Lfreemarker/core/d0;->x1()Lfreemarker/core/x1$do;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/x1$do;->case:Lfreemarker/core/x1$do;

    return-void
.end method


# virtual methods
.method public do()Lfreemarker/core/d0$this;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    return-object v0
.end method

.method public for(Lfreemarker/core/d0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    :goto_0
    iget-object v6, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    invoke-static {v6}, Lfreemarker/core/x1;->r(Lfreemarker/core/x1;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 2
    iget-object v6, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    invoke-static {v6}, Lfreemarker/core/x1;->r(Lfreemarker/core/x1;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    .line 3
    iget-object v7, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    invoke-virtual {v7, v6}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v7

    if-nez v7, :cond_6

    .line 4
    iget-object v7, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    invoke-static {v7}, Lfreemarker/core/x1;->s(Lfreemarker/core/x1;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/h0;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {v7, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v9

    if-nez v9, :cond_1

    if-nez v5, :cond_6

    move-object v2, v7

    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 6
    :cond_1
    iget-object v7, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    invoke-virtual {v7, v6, v9}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lfreemarker/core/b1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v6

    if-nez v5, :cond_6

    move-object v0, v6

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v7

    if-nez v7, :cond_6

    .line 8
    iget-object v0, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    invoke-virtual {v0, v6}, Lfreemarker/template/native;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 9
    new-instance v2, Landroid/support/v4/nl2;

    new-instance v4, Lfreemarker/core/z4;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "When calling "

    aput-object v7, v5, v1

    iget-object v7, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    .line 10
    invoke-virtual {v7}, Lfreemarker/core/x1;->z()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "function"

    goto :goto_2

    :cond_3
    const-string v7, "macro"

    :goto_2
    aput-object v7, v5, v8

    const-string v7, " "

    const/4 v9, 0x2

    aput-object v7, v5, v9

    new-instance v7, Landroid/support/v4/fl2;

    iget-object v10, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    .line 11
    invoke-static {v10}, Lfreemarker/core/x1;->t(Lfreemarker/core/x1;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x3

    aput-object v7, v5, v10

    const/4 v7, 0x4

    const-string v11, ", required parameter "

    aput-object v11, v5, v7

    const/4 v7, 0x5

    new-instance v11, Landroid/support/v4/fl2;

    invoke-direct {v11, v6}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v11, v5, v7

    const/4 v6, 0x6

    const-string v7, " (parameter #"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    add-int/2addr v3, v8

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/16 v3, 0x8

    const-string v6, ") was "

    aput-object v6, v5, v3

    const/16 v3, 0x9

    if-eqz v0, :cond_4

    const-string v6, "specified, but had null/missing value."

    goto :goto_3

    :cond_4
    const-string v6, "not specified."

    :goto_3
    aput-object v6, v5, v3

    invoke-direct {v4, v5}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    new-array v0, v8, [Ljava/lang/Object;

    const-string v3, "If the parameter value expression on the caller side is known to be legally null/missing, you may want to specify a default value for it with the \"!\" operator, like paramValue!defaultValue."

    aput-object v3, v0, v1

    goto :goto_4

    :cond_5
    new-array v0, v10, [Ljava/lang/Object;

    const-string v3, "If the omission was deliberate, you may consider making the parameter optional in the macro by specifying a default value for it, like "

    aput-object v3, v0, v1

    const-string v1, "<#macro macroName paramName=defaultExpr>"

    aput-object v1, v0, v8

    const-string v1, ")"

    aput-object v1, v0, v9

    .line 13
    :goto_4
    invoke-virtual {v4, v0}, Lfreemarker/core/z4;->break([Ljava/lang/Object;)Lfreemarker/core/z4;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    throw v2

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    if-nez v5, :cond_0

    :cond_8
    if-eqz v5, :cond_b

    if-nez v0, :cond_a

    .line 14
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 15
    :cond_9
    invoke-static {v2, p1}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    .line 16
    :cond_a
    throw v0

    :cond_b
    :goto_6
    return-void
.end method

.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    invoke-virtual {v1}, Lfreemarker/template/native;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public if()Lfreemarker/core/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x1$do;->else:Lfreemarker/core/x1;

    return-object v0
.end method

.method public new(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x1$do;->do:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1, p2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
