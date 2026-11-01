.class Lfreemarker/core/l1;
.super Lfreemarker/core/j1;
.source "SourceFile"


# instance fields
.field private final for:Lfreemarker/template/TemplateCollectionModelEx;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lfreemarker/core/j1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    .line 2
    invoke-static {p2}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lfreemarker/core/l1;->for:Lfreemarker/template/TemplateCollectionModelEx;

    return-void
.end method


# virtual methods
.method public bridge synthetic for()Lfreemarker/core/i1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/l1;->try()Lfreemarker/core/l1;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/l1;->for:Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModelEx;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/l1;->for:Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v0

    return v0
.end method

.method public try()Lfreemarker/core/l1;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/l1;

    invoke-virtual {p0}, Lfreemarker/core/u3;->do()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/l1;->for:Lfreemarker/template/TemplateCollectionModelEx;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/core/l1;-><init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V

    return-object v0
.end method
