.class Lfreemarker/core/b$do;
.super Lfreemarker/template/return;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private env:Lfreemarker/core/d0;


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/template/return;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/b$do;->env:Lfreemarker/core/d0;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/b$do;

    iget-object v1, p0, Lfreemarker/core/b$do;->env:Lfreemarker/core/d0;

    invoke-direct {v0, v1}, Lfreemarker/core/b$do;-><init>(Lfreemarker/core/d0;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4
    invoke-virtual {p0, v2}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateNodeModel;

    .line 5
    invoke-interface {v3}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v3}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 7
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v0, v3}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 10
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lfreemarker/core/b$do;->env:Lfreemarker/core/d0;

    invoke-static {v7, v4, v5, v8}, Lfreemarker/ext/dom/throw;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/d0;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v0, v3}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object p0
.end method
