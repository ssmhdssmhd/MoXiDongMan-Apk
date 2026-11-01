.class public Lfreemarker/template/case;
.super Lfreemarker/template/throws;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/case$if;
    }
.end annotation


# instance fields
.field public final list:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 3
    iput-object p1, p0, Lfreemarker/template/case;->list:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;Lfreemarker/template/case$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/case;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V

    return-void
.end method

.method public static adapt(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)Lfreemarker/template/case;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/AbstractSequentialList;

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/template/case$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/template/case$if;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;Lfreemarker/template/case$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/template/case;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/case;-><init>(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lfreemarker/template/case;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/case;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    check-cast v0, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;

    iget-object v1, p0, Lfreemarker/template/case;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/case;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/case;->list:Ljava/util/List;

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
    iget-object v0, p0, Lfreemarker/template/case;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
