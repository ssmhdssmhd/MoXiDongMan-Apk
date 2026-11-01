.class public Lfreemarker/ext/beans/super;
.super Lfreemarker/ext/beans/f;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/TemplateSequenceModel;


# static fields
.field public static final goto:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/super$do;

    invoke-direct {v0}, Lfreemarker/ext/beans/super$do;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/super;->goto:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/f;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;)V

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    return v0
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/new;->this(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/k52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Underlying collection is not a list, it\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/ext/beans/static;

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/static;-><init>(Ljava/util/Iterator;Lfreemarker/ext/beans/try;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
