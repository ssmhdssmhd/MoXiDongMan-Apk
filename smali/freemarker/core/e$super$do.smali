.class Lfreemarker/core/e$super$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final do:Lfreemarker/template/TemplateSequenceModel;

.field public final for:Lfreemarker/core/d0;

.field public final if:Lfreemarker/template/TemplateCollectionModel;

.field public final synthetic new:Lfreemarker/core/e$super;


# direct methods
.method private constructor <init>(Lfreemarker/core/e$super;Lfreemarker/core/d0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p2}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Lfreemarker/core/e;->if(Lfreemarker/template/TemplateModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    if-nez v1, :cond_1

    .line 6
    instance-of v3, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lfreemarker/template/TemplateCollectionModel;

    :cond_1
    iput-object v2, p0, Lfreemarker/core/e$super$do;->if:Lfreemarker/template/TemplateCollectionModel;

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lfreemarker/core/t2;

    iget-object p1, p1, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, p1, v0, p2}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1

    .line 8
    :cond_3
    :goto_1
    iput-object p2, p0, Lfreemarker/core/e$super$do;->for:Lfreemarker/core/d0;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/e$super;Lfreemarker/core/d0;Lfreemarker/core/e$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/e$super$do;-><init>(Lfreemarker/core/e$super;Lfreemarker/core/d0;)V

    return-void
.end method

.method private case(Lfreemarker/template/TemplateModel;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-static {v0}, Lfreemarker/core/e$super;->s(Lfreemarker/core/e$super;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-ge p2, p3, :cond_3

    .line 2
    iget-object v0, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0, p2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/e$super$do;->for:Lfreemarker/core/d0;

    invoke-static {p2, v0, p1, v1}, Lfreemarker/core/e;->do(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p2, :cond_3

    .line 3
    iget-object p3, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {p3, p2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/core/e$super$do;->for:Lfreemarker/core/d0;

    invoke-static {p2, p3, p1, v0}, Lfreemarker/core/e;->do(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p3

    if-eqz p3, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private try(Lfreemarker/template/TemplateModel;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-static {v1}, Lfreemarker/core/e$super;->s(Lfreemarker/core/e$super;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    if-lt p2, v0, :cond_0

    return v2

    :cond_0
    if-gez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    :cond_2
    if-gez p2, :cond_3

    return v2

    .line 3
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/e$super$do;->case(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public do(Lfreemarker/template/TemplateModel;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lfreemarker/core/e$super$do;->for(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method

.method public final exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/TemplateModel;

    if-le v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-virtual {v0, p1, v2}, Lfreemarker/core/return;->h(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    iget-object v0, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, v1, p1}, Lfreemarker/core/e$super$do;->try(Lfreemarker/template/TemplateModel;I)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/e$super$do;->if(Lfreemarker/template/TemplateModel;I)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lfreemarker/core/e$super$do;->new(Lfreemarker/template/TemplateModel;)I

    move-result p1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Lfreemarker/core/e$super$do;->do(Lfreemarker/template/TemplateModel;)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 11
    sget-object p1, Lfreemarker/template/utility/for;->case:Lfreemarker/template/TemplateNumberModel;

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/support/v4/az1;

    invoke-direct {v0, p1}, Landroid/support/v4/az1;-><init>(I)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public for(Lfreemarker/template/TemplateModel;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p3, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lfreemarker/core/e$super$do;->if:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    if-le v2, p3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-lt v2, p2, :cond_3

    .line 4
    iget-object v4, p0, Lfreemarker/core/e$super$do;->for:Lfreemarker/core/d0;

    invoke-static {v2, v3, p1, v4}, Lfreemarker/core/e;->do(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    iget-object v0, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-static {v0}, Lfreemarker/core/e$super;->s(Lfreemarker/core/e$super;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public if(Lfreemarker/template/TemplateModel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-static {v0}, Lfreemarker/core/e$super;->s(Lfreemarker/core/e$super;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/e$super$do;->for(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lfreemarker/core/e$super$do;->for(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method

.method public new(Lfreemarker/template/TemplateModel;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$super$do;->do:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/e$super$do;->new:Lfreemarker/core/e$super;

    invoke-static {v1}, Lfreemarker/core/e$super;->s(Lfreemarker/core/e$super;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 3
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lfreemarker/core/e$super$do;->case(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method
