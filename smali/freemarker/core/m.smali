.class public final Lfreemarker/core/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Ljava/io/Serializable;


# instance fields
.field private collection:Lfreemarker/template/TemplateCollectionModel;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private sequence:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateCollectionModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/m;->collection:Lfreemarker/template/TemplateCollectionModel;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/TemplateSequenceModel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lfreemarker/core/m;->sequence:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method

.method private do()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/m;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/m;->data:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lfreemarker/core/m;->collection:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lfreemarker/core/m;->data:Ljava/util/ArrayList;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/m;->sequence:Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/m;->do()V

    .line 4
    iget-object v0, p0, Lfreemarker/core/m;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/m;->collection:Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/core/s3;

    iget-object v1, p0, Lfreemarker/core/m;->sequence:Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v0, v1}, Lfreemarker/core/s3;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

.method public size()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/m;->sequence:Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/m;->collection:Lfreemarker/template/TemplateCollectionModel;

    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lfreemarker/core/m;->do()V

    .line 6
    iget-object v0, p0, Lfreemarker/core/m;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
