.class Lfreemarker/debug/impl/for;
.super Ljava/rmi/server/UnicastRemoteObject;
.source "SourceFile"

# interfaces
.implements Lfreemarker/debug/DebugModel;


# static fields
.field private static final for:J = 0x1L


# instance fields
.field private final do:Lfreemarker/template/TemplateModel;

.field private final if:I


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/rmi/server/UnicastRemoteObject;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    .line 3
    invoke-static {p1}, Lfreemarker/debug/impl/for;->do(Lfreemarker/template/TemplateModel;)I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lfreemarker/debug/impl/for;->if:I

    return-void
.end method

.method private static do(Lfreemarker/template/TemplateModel;)I
    .locals 2

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    .line 2
    instance-of v1, p0, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 3
    :cond_0
    instance-of v1, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    .line 4
    :cond_1
    instance-of v1, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x8

    .line 5
    :cond_2
    instance-of v1, p0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x10

    .line 6
    :cond_3
    instance-of v1, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x20

    .line 7
    :cond_4
    instance-of v1, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_5

    add-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 8
    :cond_5
    instance-of v1, p0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x40

    .line 9
    :cond_6
    :goto_0
    instance-of v1, p0, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v1, :cond_7

    add-int/lit16 v0, v0, 0x200

    goto :goto_1

    .line 10
    :cond_7
    instance-of v1, p0, Lfreemarker/template/TemplateMethodModel;

    if-eqz v1, :cond_8

    add-int/lit16 v0, v0, 0x100

    .line 11
    :cond_8
    :goto_1
    instance-of p0, p0, Lfreemarker/template/TemplateTransformModel;

    if-eqz p0, :cond_9

    add-int/lit16 v0, v0, 0x400

    :cond_9
    return v0
.end method

.method private static if(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/debug/impl/try;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/debug/DebugModel;

    return-object p0
.end method


# virtual methods
.method public get(I)Lfreemarker/debug/DebugModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/debug/impl/for;->if(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/debug/DebugModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/debug/impl/for;->if(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object p1

    return-object p1
.end method

.method public get(II)[Lfreemarker/debug/DebugModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    sub-int v0, p2, p1

    .line 2
    new-array v0, v0, [Lfreemarker/debug/DebugModel;

    .line 3
    iget-object v1, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    sub-int v3, v2, p1

    .line 4
    invoke-interface {v1, v2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/debug/impl/for;->if(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get([Ljava/lang/String;)[Lfreemarker/debug/DebugModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    new-array v0, v0, [Lfreemarker/debug/DebugModel;

    .line 7
    iget-object v1, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateHashModel;

    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 9
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/debug/impl/for;->if(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAsDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollection()[Lfreemarker/debug/DebugModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-static {v2}, Lfreemarker/debug/impl/for;->if(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lfreemarker/debug/DebugModel;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/debug/DebugModel;

    return-object v0
.end method

.method public getDateType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    return v0
.end method

.method public getModelTypes()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/debug/impl/for;->if:I

    return v0
.end method

.method public keys()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

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
    iget-object v0, p0, Lfreemarker/debug/impl/for;->do:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0

    return v0
.end method
