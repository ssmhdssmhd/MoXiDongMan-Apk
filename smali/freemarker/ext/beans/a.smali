.class public Lfreemarker/ext/beans/a;
.super Lfreemarker/template/throws;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2;
.implements Lfreemarker/template/TemplateMethodModelEx;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;


# static fields
.field public static final for:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private final if:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/a$do;

    invoke-direct {v0}, Lfreemarker/ext/beans/a$do;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/a;->for:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/try;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object v2, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v3

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAPI()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/RichObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/template/throw;

    iget-object v1, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/throw;-><init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/m;

    new-instance v1, Lfreemarker/template/return;

    iget-object v2, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/m;

    new-instance v1, Lfreemarker/template/return;

    iget-object v2, p0, Lfreemarker/ext/beans/a;->if:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method
