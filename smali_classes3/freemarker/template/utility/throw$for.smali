.class final Lfreemarker/template/utility/throw$for;
.super Lfreemarker/template/utility/throw$if;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/template/utility/throw$if<",
        "Lfreemarker/template/TemplateHashModelEx;",
        ">;",
        "Lfreemarker/template/TemplateHashModelEx;"
    }
.end annotation


# instance fields
.field private for:Lfreemarker/core/m;

.field private if:Lfreemarker/core/m;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/template/TemplateHashModelEx;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/utility/throw$if;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lfreemarker/template/utility/throw$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/template/utility/throw$for;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static do(Ljava/util/Set;Lfreemarker/template/return;Lfreemarker/template/TemplateHashModelEx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lfreemarker/template/return;",
            "Lfreemarker/template/TemplateHashModelEx;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p2

    invoke-interface {p2}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p2

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p2}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    .line 4
    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private for()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/throw$for;->for:Lfreemarker/core/m;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lfreemarker/template/return;

    invoke-virtual {p0}, Lfreemarker/template/utility/throw$for;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/template/return;-><init>(ILfreemarker/template/ObjectWrapper;)V

    .line 3
    iget-object v1, p0, Lfreemarker/template/utility/throw$for;->if:Lfreemarker/core/m;

    invoke-virtual {v1}, Lfreemarker/core/m;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lfreemarker/template/utility/throw$for;->if:Lfreemarker/core/m;

    invoke-virtual {v3, v2}, Lfreemarker/core/m;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfreemarker/template/utility/throw$if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lfreemarker/core/m;

    invoke-direct {v1, v0}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v1, p0, Lfreemarker/template/utility/throw$for;->for:Lfreemarker/core/m;

    :cond_1
    return-void
.end method

.method private if()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/throw$for;->if:Lfreemarker/core/m;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v1, Lfreemarker/template/return;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfreemarker/template/return;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 4
    iget-object v2, p0, Lfreemarker/template/utility/throw$if;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateHashModelEx;

    .line 5
    invoke-static {v0, v1, v3}, Lfreemarker/template/utility/throw$for;->do(Ljava/util/Set;Lfreemarker/template/return;Lfreemarker/template/TemplateHashModelEx;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lfreemarker/core/m;

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/template/utility/throw$for;->if:Lfreemarker/core/m;

    :cond_1
    return-void
.end method


# virtual methods
.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/throw$for;->if()V

    .line 2
    iget-object v0, p0, Lfreemarker/template/utility/throw$for;->if:Lfreemarker/core/m;

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/throw$for;->if()V

    .line 2
    iget-object v0, p0, Lfreemarker/template/utility/throw$for;->if:Lfreemarker/core/m;

    invoke-virtual {v0}, Lfreemarker/core/m;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/throw$for;->for()V

    .line 2
    iget-object v0, p0, Lfreemarker/template/utility/throw$for;->for:Lfreemarker/core/m;

    return-object v0
.end method
