.class Lfreemarker/core/e$throw;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "throw"
.end annotation


# instance fields
.field private final:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lfreemarker/core/e;->if(Lfreemarker/template/TemplateModel;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_6

    .line 4
    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    .line 5
    iget-boolean p1, p0, Lfreemarker/core/e$throw;->final:Z

    if-nez p1, :cond_3

    .line 6
    instance-of p1, v0, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz p1, :cond_1

    new-instance p1, Lfreemarker/template/return;

    move-object v1, v0

    check-cast v1, Lfreemarker/template/TemplateCollectionModelEx;

    .line 7
    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v1

    invoke-direct {p1, v1}, Lfreemarker/template/return;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lfreemarker/template/return;

    invoke-direct {p1}, Lfreemarker/template/return;-><init>()V

    .line 8
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object p1

    .line 10
    :cond_3
    instance-of p1, v0, Lfreemarker/core/i1;

    if-eqz p1, :cond_4

    check-cast v0, Lfreemarker/core/i1;

    .line 11
    invoke-virtual {v0}, Lfreemarker/core/i1;->new()Lfreemarker/core/i1;

    move-result-object p1

    goto :goto_2

    :cond_4
    instance-of p1, v0, Lfreemarker/template/TemplateCollectionModelEx;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    new-instance p1, Lfreemarker/core/l1;

    new-instance v2, Lfreemarker/core/o1;

    invoke-direct {v2, v0}, Lfreemarker/core/o1;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    check-cast v0, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/l1;-><init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V

    goto :goto_2

    :cond_5
    new-instance p1, Lfreemarker/core/n1;

    new-instance v2, Lfreemarker/core/o1;

    invoke-direct {v2, v0}, Lfreemarker/core/o1;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    invoke-direct {p1, v2, v1}, Lfreemarker/core/n1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    :goto_2
    return-object p1

    .line 12
    :cond_6
    new-instance v1, Lfreemarker/core/t2;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public q(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/return;->q(Lfreemarker/core/h0;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/h0;->switch()V

    return-void
.end method

.method public switch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/e$throw;->final:Z

    return-void
.end method
