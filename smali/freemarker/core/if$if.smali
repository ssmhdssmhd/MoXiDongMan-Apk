.class final Lfreemarker/core/if$if;
.super Lfreemarker/core/if$do;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private for:Lfreemarker/core/m;

.field private new:Lfreemarker/core/m;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/TemplateHashModelEx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/if$do;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/template/TemplateHashModel;)V

    return-void
.end method

.method private static do(Ljava/util/Set;Lfreemarker/template/return;Lfreemarker/template/TemplateHashModelEx;)V
    .locals 2
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
    iget-object v0, p0, Lfreemarker/core/if$if;->new:Lfreemarker/core/m;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lfreemarker/template/return;

    invoke-virtual {p0}, Lfreemarker/core/if$if;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lfreemarker/template/return;-><init>(I)V

    .line 3
    iget-object v1, p0, Lfreemarker/core/if$if;->for:Lfreemarker/core/m;

    invoke-virtual {v1}, Lfreemarker/core/m;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lfreemarker/core/if$if;->for:Lfreemarker/core/m;

    invoke-virtual {v3, v2}, Lfreemarker/core/m;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfreemarker/core/if$do;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lfreemarker/core/m;

    invoke-direct {v1, v0}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v1, p0, Lfreemarker/core/if$if;->new:Lfreemarker/core/m;

    :cond_1
    return-void
.end method

.method private if()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/if$if;->for:Lfreemarker/core/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v1, Lfreemarker/template/return;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lfreemarker/template/return;-><init>(I)V

    .line 4
    iget-object v2, p0, Lfreemarker/core/if$do;->do:Lfreemarker/template/TemplateHashModel;

    check-cast v2, Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v0, v1, v2}, Lfreemarker/core/if$if;->do(Ljava/util/Set;Lfreemarker/template/return;Lfreemarker/template/TemplateHashModelEx;)V

    .line 5
    iget-object v2, p0, Lfreemarker/core/if$do;->if:Lfreemarker/template/TemplateHashModel;

    check-cast v2, Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v0, v1, v2}, Lfreemarker/core/if$if;->do(Ljava/util/Set;Lfreemarker/template/return;Lfreemarker/template/TemplateHashModelEx;)V

    .line 6
    new-instance v0, Lfreemarker/core/m;

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/core/if$if;->for:Lfreemarker/core/m;

    :cond_0
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
    invoke-direct {p0}, Lfreemarker/core/if$if;->if()V

    .line 2
    iget-object v0, p0, Lfreemarker/core/if$if;->for:Lfreemarker/core/m;

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
    invoke-direct {p0}, Lfreemarker/core/if$if;->if()V

    .line 2
    iget-object v0, p0, Lfreemarker/core/if$if;->for:Lfreemarker/core/m;

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
    invoke-direct {p0}, Lfreemarker/core/if$if;->for()V

    .line 2
    iget-object v0, p0, Lfreemarker/core/if$if;->new:Lfreemarker/core/m;

    return-object v0
.end method
