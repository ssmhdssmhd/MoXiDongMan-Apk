.class Lfreemarker/core/e$goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/core/d0;

.field public final synthetic for:Lfreemarker/core/e$goto;

.field private final if:Lfreemarker/template/TemplateCollectionModel;


# direct methods
.method private constructor <init>(Lfreemarker/core/e$goto;Lfreemarker/core/d0;Lfreemarker/template/TemplateCollectionModel;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/e$goto$do;->for:Lfreemarker/core/e$goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/e$goto$do;->do:Lfreemarker/core/d0;

    .line 4
    iput-object p3, p0, Lfreemarker/core/e$goto$do;->if:Lfreemarker/template/TemplateCollectionModel;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/e$goto;Lfreemarker/core/d0;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/e$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/e$goto$do;-><init>(Lfreemarker/core/e$goto;Lfreemarker/core/d0;Lfreemarker/template/TemplateCollectionModel;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$goto$do;->for:Lfreemarker/core/e$goto;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/return;->g(Ljava/util/List;II)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/e$goto$do;->for:Lfreemarker/core/e$goto;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v4, p0, Lfreemarker/core/e$goto$do;->for:Lfreemarker/core/e$goto;

    invoke-virtual {v4, p1, v1}, Lfreemarker/core/return;->j(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lfreemarker/core/e$goto$do;->for:Lfreemarker/core/e$goto;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lfreemarker/core/return;->j(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v7, p0, Lfreemarker/core/e$goto$do;->if:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    :goto_0
    invoke-interface {v7}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 8
    invoke-interface {v7}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v10

    if-eqz v10, :cond_1

    if-eqz v8, :cond_0

    .line 9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    .line 10
    :goto_1
    :try_start_0
    iget-object v11, p0, Lfreemarker/core/e$goto$do;->do:Lfreemarker/core/d0;

    const/4 v12, 0x0

    invoke-static {v10, v12, v12, v11}, Lfreemarker/core/f0;->else(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Landroid/support/v4/vl2;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "\"?"

    aput-object v5, v4, v3

    iget-object v3, p0, Lfreemarker/core/e$goto$do;->for:Lfreemarker/core/e$goto;

    iget-object v3, v3, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v3, v4, v1

    const-string v1, "\" failed at index "

    aput-object v1, v4, v6

    .line 12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x4

    const-string v2, " with this error:\n\n"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "---begin-message---\n"

    aput-object v2, v4, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/support/v4/el2;

    invoke-direct {v2, p1}, Landroid/support/v4/el2;-><init>(Lfreemarker/template/TemplateException;)V

    aput-object v2, v4, v1

    const/4 v1, 0x7

    const-string v2, "\n---end-message---"

    aput-object v2, v4, v1

    invoke-direct {v0, p1, v4}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_4
    :goto_3
    new-instance p1, Landroid/support/v4/ez1;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
