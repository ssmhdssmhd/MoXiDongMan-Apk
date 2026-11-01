.class Lfreemarker/core/r0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/util/HashMap;

.field private for:Lfreemarker/template/TemplateCollectionModel;

.field private if:Lfreemarker/template/TemplateCollectionModel;

.field public final synthetic new:Lfreemarker/core/r0;


# direct methods
.method public constructor <init>(Lfreemarker/core/r0;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/r0$do;->new:Lfreemarker/core/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/ul2;->super(Lfreemarker/core/h4;)I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->new:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    .line 4
    :goto_0
    invoke-static {p1}, Lfreemarker/core/r0;->d(Lfreemarker/core/r0;)I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 5
    invoke-static {p1}, Lfreemarker/core/r0;->e(Lfreemarker/core/r0;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/h0;

    .line 6
    invoke-static {p1}, Lfreemarker/core/r0;->f(Lfreemarker/core/r0;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/h0;

    .line 7
    invoke-virtual {v0, p2}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, p2}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lfreemarker/core/t;->y()Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    :cond_0
    invoke-virtual {v1, v3, p2}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lfreemarker/core/r0;->d(Lfreemarker/core/r0;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lfreemarker/core/r0;->d(Lfreemarker/core/r0;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_1
    invoke-static {p1}, Lfreemarker/core/r0;->d(Lfreemarker/core/r0;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 16
    invoke-static {p1}, Lfreemarker/core/r0;->e(Lfreemarker/core/r0;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    .line 17
    invoke-static {p1}, Lfreemarker/core/r0;->f(Lfreemarker/core/r0;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/h0;

    .line 18
    invoke-virtual {v3, p2}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v4, p2}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    if-eqz p2, :cond_3

    .line 20
    invoke-virtual {p2}, Lfreemarker/core/t;->y()Z

    move-result v6

    if-nez v6, :cond_4

    .line 21
    :cond_3
    invoke-virtual {v4, v5, p2}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    .line 22
    :cond_4
    iget-object v4, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_5
    new-instance p1, Lfreemarker/core/m;

    new-instance p2, Lfreemarker/template/return;

    invoke-direct {p2, v0}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object p1, p0, Lfreemarker/core/r0$do;->if:Lfreemarker/template/TemplateCollectionModel;

    .line 26
    new-instance p1, Lfreemarker/core/m;

    new-instance p2, Lfreemarker/template/return;

    invoke-direct {p2, v1}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object p1, p0, Lfreemarker/core/r0$do;->for:Lfreemarker/template/TemplateCollectionModel;

    :cond_6
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do;->new:Lfreemarker/core/r0;

    invoke-static {v0}, Lfreemarker/core/r0;->d(Lfreemarker/core/r0;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/r0$do$do;

    invoke-direct {v0, p0}, Lfreemarker/core/r0$do$do;-><init>(Lfreemarker/core/r0$do;)V

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do;->if:Lfreemarker/template/TemplateCollectionModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/core/m;

    new-instance v1, Lfreemarker/template/return;

    iget-object v2, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/core/r0$do;->if:Lfreemarker/template/TemplateCollectionModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/r0$do;->if:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do;->new:Lfreemarker/core/r0;

    invoke-static {v0}, Lfreemarker/core/r0;->d(Lfreemarker/core/r0;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do;->new:Lfreemarker/core/r0;

    invoke-virtual {v0}, Lfreemarker/core/r0;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do;->for:Lfreemarker/template/TemplateCollectionModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/core/m;

    new-instance v1, Lfreemarker/template/return;

    iget-object v2, p0, Lfreemarker/core/r0$do;->do:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/core/r0$do;->for:Lfreemarker/template/TemplateCollectionModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/r0$do;->for:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method
